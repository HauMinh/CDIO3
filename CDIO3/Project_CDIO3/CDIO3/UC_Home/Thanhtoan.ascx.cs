using CDIO3.App_code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UC_Home_Thanhtoan : System.Web.UI.UserControl
{
    XLDL xldl;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        if (Session["cart"] != null)
        {
            GIOHANG CART = (GIOHANG)Session["cart"];
            this.GridView1.DataSource = CART.DSGioHang();
            this.GridView1.DataBind();
            loadcart(CART);
            loadkh();
        }
    }
    public void loadcart(GIOHANG cart)
    {
        this.GridView1.DataSource = cart.DSGioHang();
        this.GridView1.DataBind();
        txt_tongtien.Text = cart.tinhTongTien().ToString();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "button_xoa")
        {
            string masp = e.CommandArgument.ToString();
            GIOHANG cart = (GIOHANG)Session["cart"];
            cart.DeleteItem(masp);
            Session["cart"] = cart;
            loadcart(cart);
        }
    }
    public void loadkh()
    {
        string tdn = null;
        try { tdn = (Request.Cookies["user"]["tdn"]).ToString(); } catch { };
        if (tdn != null)
        {
            string sql = "select * from khachhang as kh inner join taikhoan as tk on kh.tendangnhap=tk.tendangnhap where kh.tendangnhap='" + tdn + "'";
            DataTable tb = new DataTable();
            tb = xldl.LayBang(sql);
            try
            {
                if (tb.Rows[0] != null)
                {
                    DataRow dr = tb.Rows[0];
                    this.txt_tenkh.Text = dr["tenkhachhang"].ToString();
                    this.txt_diachi.Text = dr["diachi"].ToString();
                    this.txt_email.Text = dr["email"].ToString();
                    this.txt_sdt.Text = dr["sodienthoai"].ToString();
                }
            }
            catch { }
        }
    }

    protected void btn_dathang_Click(object sender, ImageClickEventArgs e)
    {
        string tdn = null;
        string sql;
        try
        {
            tdn = (Request.Cookies["user"]["tdn"]).ToString();
            sql = "INSERT INTO donhang VALUES('" + tdn + "', '" + DateTime.Now.ToShortDateString() + "', 1, N'" + txt_tenkh.Text + "', N'" + txt_diachi.Text + "', '" + txt_sdt.Text + "', '" + txt_tongtien.Text + "')";

        }
        catch
        {
            sql = "INSERT INTO donhang VALUES( null , '" + DateTime.Now.ToShortDateString() + "', 1, N'" + txt_tenkh.Text + "', N'" + txt_diachi.Text + "', '" + txt_sdt.Text + "', '" + txt_tongtien.Text + "')";
        };
        
        xldl.ThucThiSQL(sql);
        string madh = xldl.LayGiaTriDon("select max(madh) from donhang").ToString();
        
        int k = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            Label masp = (Label)row.FindControl("txt_masp");
            Label sl = (Label)row.FindControl("txt_soluong");
            Label gia = (Label)row.FindControl("txt_gia");
            sql = "INSERT INTO chitietdonhang VALUES ('" + madh+"', '" + masp.Text + "', '"+sl.Text+ "' )";
            k += xldl.ThucThiSQL(sql);
        }
      
        if (k != 0)
        {
            Response.Write("<script>");
            Response.Write("alert('Thanh toán thành công! Chúng tôi sẽ duyện đơn hàng của bạn.')");
            Response.Write("</script>");
            GIOHANG CART = (GIOHANG)Session["cart"];
            loadcart(CART);
        }
        else
        {
            Response.Write("<script>");
            Response.Write("alert('Không thanh toán được!')");
            Response.Write("</script>");
        }
    }
}