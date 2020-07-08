using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class UC_QLDM_Home_QLDM : System.Web.UI.UserControl
{
    XLDL xldl;
    String SQL;
    public void GridViewDanhMuc()
    {
        if (Request.QueryString.Get("clicktim") == "true")
        {
            SQL = "select * from danhmucsanpham where madm like '%" + Request.QueryString.Get("tim") + "%' OR tendanhmuc like '%" + Request.QueryString.Get("tim") + "%'";
        }
        else SQL = " select * from danhmucsanpham";
        this.grlDANHMUC.DataSource = xldl.LayBang(SQL);
        this.grlDANHMUC.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        if (!IsPostBack)
        {
            GridViewDanhMuc();
        }
    }

    protected void grdDANHMUC_RowEditing(object sender, GridViewEditEventArgs e)
    {
        this.grlDANHMUC.EditIndex = e.NewEditIndex;
        GridViewDanhMuc();
        
    }

    protected void grdDANHMUC_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lbeMADM = (Label)grlDANHMUC.Rows[e.RowIndex].FindControl("lbeMADM");
        TextBox txtTENDM = (TextBox)grlDANHMUC.Rows[e.RowIndex].FindControl("txt_tendm");
        TextBox txtnsx = (TextBox)grlDANHMUC.Rows[e.RowIndex].FindControl("txt_nsx");

        SQL = " UPDATE danhmucsanpham SET "
        + " tendanhmuc=N'" + txtTENDM.Text + "',"
        + " nhasanxuat=N'" + txtnsx.Text+"'"
        + " where madm='" + lbeMADM.Text+"'";
        xldl.ThucThiSQL(SQL);
        grlDANHMUC.EditIndex = -1;
        GridViewDanhMuc();
    }

    protected void btn_them_Click(object sender, EventArgs e)
    {
        string TenDM = txt_TENDM.Text;
        String madm = txt_madm.Text;
        String nsx = txt_NhaSX.Text;
        string sql=null;
        if(TenDM!="" && madm!="" && nsx != "") {        
        sql = "INSERT INTO dbo.danhmucsanpham VALUES('" + madm + "', N'" + TenDM + "', N'" + nsx + "');";
        }
        int k = 0;
        try
        {
            k = xldl.ThucThiSQL(sql);
        }
        catch
        {
            lbe_thongbao.Text = "Thêm không thành công!";
           
        }

        if (k != 0)
        {
            lbe_thongbao.Text = "Thêm thành công!";
            GridViewDanhMuc();
        }
        else
        {
            lbe_thongbao.Text = "Thêm không thành công!";
        }
       // GridViewDanhMuc();
    }

    protected void grdDANHMUC_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label txtMadm = (Label)grlDANHMUC.Rows[e.RowIndex].FindControl("lbeMADM");
        SQL = "Delete from danhmucsanpham WHERE madm=" + txtMadm.Text;
        xldl.ThucThiSQL(SQL);
        lbe_thongbao.Text = "Xóa thành công!";
        grlDANHMUC.EditIndex = -1;
        GridViewDanhMuc();

    }

    protected void grlDANHMUC_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.grlDANHMUC.PageIndex = e.NewPageIndex;
        GridViewDanhMuc();
    }


}