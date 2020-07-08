using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class thongke : System.Web.UI.Page
{
    XLDL xldl;
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        if (!IsPostBack)
        {
            loadthongke();
        }
    }
    public void loadthongke()
    {
        int matt = int.Parse(this.DropDownList1.SelectedValue);
        if (matt > 0)
        {
            sql = "select * from donhang as dh inner join Trangthai as tt on dh.matt=tt.matt where dh.matt=" + matt + "";
        }
        else
            sql = "select * from donhang as dh, Trangthai as tt where dh.matt=tt.matt";
        this.qlthongke.DataSource = xldl.LayBang(sql);
        this.qlthongke.DataBind();
        this.lbe_tongdh.Text = qlthongke.Rows.Count.ToString();
        
       // this.lbe_Tongtien.Text = Request.Cookies["thanhtoan"]["tongtien"];
    }
    private int tong=0;
    protected void qlthongke_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            tong += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "thanhtien"));
        }
        else
        this.lbe_Tongtien.Text = tong.ToString();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // int matt = int.Parse(this.DropDownList1.SelectedValue);
        int matt = int.Parse(DropDownList1.Items[DropDownList1.SelectedIndex].Value);
        if (matt > 0)
        {
            sql = "select * from donhang as dh inner join Trangthai as tt on dh.matt=tt.matt where dh.matt=" + matt + "";
        }
        else
            sql = "select * from donhang as dh, Trangthai as tt where dh.matt=tt.matt";
        this.qlthongke.DataSource = xldl.LayBang(sql);
        this.qlthongke.DataBind();
        this.lbe_tongdh.Text = qlthongke.Rows.Count.ToString();
        this.lbe_Tongtien.Text = tong.ToString();
    }
}