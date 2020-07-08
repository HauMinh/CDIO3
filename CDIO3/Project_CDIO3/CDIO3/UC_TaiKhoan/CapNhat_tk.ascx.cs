using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class UC_TaiKhoan_CapNhat_tk : System.Web.UI.UserControl
{
    XLDL xldl;
    String SQL;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        if (!IsPostBack)
        {
            grtk();
        }
    }
    public void grtk()
    {
        if (Request.QueryString.Get("clicktim") == "true")
        {
            SQL = "select * from taikhoan as tk inner join khachhang as kh on tk.tendangnhap=kh.tendangnhap where tk.tendangnhap like '%" + Request.QueryString.Get("tim") + "%' OR tenkhachhang like '%" + Request.QueryString.Get("tim") + "%'";
        }
        else SQL = " select * from taikhoan as tk inner join khachhang as kh on tk.tendangnhap=kh.tendangnhap";
        this.GridView1.DataSource = xldl.LayBang(SQL);
        this.GridView1.DataBind();

    }
    protected void btn_tim_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("TaiKhoan.aspx?page=CapNhat_tk&clicktim=true&tim=" + txt_tim.Text + "");
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        this.GridView1.EditIndex = e.NewEditIndex;
        grtk();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //   Label lbeMADM = (Label)grlDANHMUC.Rows[e.RowIndex].FindControl("lbeMADM");
        Label lb_tentaikhoan = (Label)GridView1.Rows[e.RowIndex].FindControl("lb_tentaikhoan");
        TextBox txt_sdt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_sdt");
        TextBox txt_matkhau = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_matkhau");

        SQL = " UPDATE taikhoan SET "
        + " sodienthoai=N'" + txt_sdt.Text + "',"
        + " matkhau=N'" + txt_matkhau.Text + "'"
        + " where tendangnhap='" + lb_tentaikhoan.Text + "'";
        xldl.ThucThiSQL(SQL);
        GridView1.EditIndex = -1;
        grtk();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        grtk();
    }
}