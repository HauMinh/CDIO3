using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;


public partial class UC_Home_GioHang : System.Web.UI.UserControl
{
    XLDL xldl;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["cart"] != null)
        {
            GIOHANG CART = (GIOHANG)Session["cart"];
            this.Repeater1.DataSource = CART.DSGioHang();
            this.Repeater1.DataBind();
            loadcart(CART);
        }

    }
    public void loadcart(GIOHANG cart)
    {
        this.Repeater1.DataSource = cart.DSGioHang();
        this.Repeater1.DataBind();        
        txt_tongtien.Text = cart.tinhTongTien().ToString();
       


    }
 
    public void btn_congTru(string Masp,string soluongthem)
    {
        if (IsPostBack) { 
        string masp = Masp;           
        xldl = new XLDL();
        TextBox txtSoluong = new TextBox();
        txtSoluong.Text = soluongthem;
        if (masp != null)
        {
            string sql = "select * ," + txtSoluong.Text + " as SOLUONGmua,HINHANH,GIA," + txtSoluong.Text + " * GIA as THANHTIEN from SANPHAM, khuyenmai where MASP='" + masp + "'";
            DataTable tb = xldl.LayBang(sql);
            GIOHANG cart = null;
            Session.Timeout = 1;
            if (Session["cart"] == null)
                cart = new GIOHANG();
            else
                cart = (GIOHANG)Session["cart"];
            int a = (int)xldl.LayGiaTriDon("select soluong from sanpham where masp='" + masp + "'");
            int b = int.Parse(txtSoluong.Text.ToString()); ;
            int SoLuongTon = a - b;

            if (cart.Additem(tb.Rows[0], SoLuongTon))
            {
                Session["cart"] = cart;
                string path = HttpContext.Current.Request.Url.AbsolutePath;
                Response.Redirect(path + "?page=gh&masp=" + masp);
            }
            else
            {
                Response.Write("<script>");
                Response.Write("alert('Số lượng trong giỏ hàng nhiều hơn trong kho!')");
                Response.Write("</script>");
            }
        }
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName== "button_xoa")
        {
            string masp = e.CommandArgument.ToString();
            GIOHANG cart = (GIOHANG)Session["cart"];
            cart.DeleteItem(masp);
            Session["cart"] = cart;
            loadcart(cart);
        }
        if(e.CommandName== "TruSL")
        {
            string sl = ((TextBox)e.Item.FindControl("txt_soluong")).Text;
            int slm = int.Parse(sl);
            if (slm > 1) { 
            String masp = e.CommandArgument.ToString();
            btn_congTru(masp, "-1");
            }
        }
        if (e.CommandName == "CongSL")
        {            
            String masp = e.CommandArgument.ToString();
            btn_congTru(masp, "1");
        }
        if(e.CommandName == "button_update")
        {
            TextBox slm = e.Item.FindControl("txt_soluong") as TextBox;
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            string masp = commandArgs[0];
            string sl = commandArgs[1];
            int a = int.Parse(slm.Text) - int.Parse(sl);
            btn_congTru(masp, a.ToString());
        }
    }

    protected void btn_dathang_Click(object sender, ImageClickEventArgs e)
    {
        string path = HttpContext.Current.Request.Url.AbsolutePath;
        String masp = Request.QueryString.Get("masp");
        Response.Redirect(path + "?page=thanhtoan&masp=" + masp);
    }
}