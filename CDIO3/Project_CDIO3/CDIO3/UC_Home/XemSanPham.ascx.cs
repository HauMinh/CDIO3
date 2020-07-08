using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class UC_Home_XemSanPham : System.Web.UI.UserControl
{
    XLDL xldl;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        string masp = Request.QueryString.Get("masp");
        if (!IsPostBack)
        { 
            this.Repeater1.DataSource = xldl.LayBang("select * from (sanpham as sp left join chitietkhuyenmai as ct on sp.masp=ct.masp) left join khuyenmai as km on  ct.makm=km.makm where sp.masp = '"+masp+"'");
            this.Repeater1.DataBind();
            LoadBinhluan();

            this.Repeater_xemct.DataSource=xldl.LayBang("select * from (sanpham as sp left join chitietkhuyenmai as ct on sp.masp=ct.masp) left join khuyenmai as km on  ct.makm=km.makm where sp.masp = '" + masp + "'");
            this.Repeater_xemct.DataBind();
        }
    }

    public void btn_mua_Click(object sender, ImageClickEventArgs e)
    {
        
        String masp = Request.QueryString.Get("masp");
        ViewState["slt"] = (int)xldl.LayGiaTriDon("select soluong from sanpham where masp='" + masp + "'");
       

        xldl = new XLDL();
       
        TextBox txtSoluong = new TextBox();
        txtSoluong.Text = "1";

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

    public void LoadBinhluan()
    {
        String masp = Request.QueryString.Get("masp");
        this.GridView1.DataSource = xldl.LayBang("select mabl, binhluan, tenkhachhang,(select binhluan from binhluan where mblcha=bl.mabl) as traloi from binhluan as bl , khachhang as kh where bl.masp='" + masp+"' and bl.tendangnhap=kh.tendangnhap ORDER BY mabl DESC;");
        this.GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        LoadBinhluan();
    }

    protected void btn_binhluan_Click(object sender, EventArgs e)
    {
        String masp = Request.QueryString.Get("masp");
        string txtbl = txt_binhluan.Text;
        string tdn=null;
        try { tdn = (Request.Cookies["user"]["tdn"]).ToString(); } catch { };
        if (tdn != null)
        {
            int d = 0;
            if (txtbl!="" && txtbl!=null)
            { 
                d = xldl.ThucThiSQL("INSERT INTO binhluan VALUES('"+masp+"' , '" + tdn + "' , '" + txtbl + "','0')");
            }
            else
            {
                Response.Write("<script>");
                Response.Write("alert('Vui lòng nhập bình luận!')");
                Response.Write("</script>");
            }
            if (d != 0)           
            {
                Response.Redirect(Request.Url.ToString());
            }          
        }
        else
        {
            Response.Write("<script>");
            Response.Write("alert('Vui lòng ĐĂNG NHẬP hoặc ĐĂNG KÝ để bình luận!')");
            Response.Write("</script>");
        }
       
    }
}