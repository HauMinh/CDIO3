using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class Quanlydonhang : System.Web.UI.Page
{
    XLDL xldl;
    String sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        if (!IsPostBack)
        {
            loaddonhang();
        }
    }

    public void loaddonhang()
    {
        int matt=int.Parse(this.DropDownList1.SelectedValue);
        if (matt > 0)
        {
            sql = "select * from donhang as dh inner join Trangthai as tt on dh.matt=tt.matt where dh.matt="+matt+"";
        }
        else
        sql = "select * from donhang as dh, Trangthai as tt where dh.matt=tt.matt";
        this.qldonhang.DataSource = xldl.LayBang(sql);
        this.qldonhang.DataBind();
    }

    protected void btn_thongke_Click(object sender, EventArgs e)
    {
        Response.Redirect("thongke.aspx");
    }


    protected void qldonhang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string madh = e.CommandArgument.ToString();
        if (e.CommandName == "duyet")
        {
            string sql = "UPDATE donhang SET matt= 2";
            int k = 0;
            try
            {
                k = xldl.ThucThiSQL(sql);
            }
            catch { }
            
            if (k != 0)
            {
                string sMsg = "Duyệt thành công!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);

            }
            else
            {
                string sMsg = "Duyệt Không thành công!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
            }
            loaddonhang();
        }
        if (e.CommandName == "giaohang")
        {
            string sql = "UPDATE donhang SET matt= 3";
            int k = 0;
            try
            {
                k = xldl.ThucThiSQL(sql);
            }
            catch { }

            if (k != 0)
            {
                string sMsg = "Đã xác nhận giao hàng!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);

            }
            else
            {
                string sMsg = "Xác nhận giao hàng thất bại!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
            }
            loaddonhang();
        }
        if (e.CommandName == "huy")
        {
            string sql = "UPDATE donhang SET matt= 4";
            int k = 0;
            try
            {
                k = xldl.ThucThiSQL(sql);
            }
            catch { }

            if (k != 0)
            {
                string sMsg = "Hủy đơn hàng thành công!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
            }
            else
            {
                string sMsg = "Đơn hàng này không hủy được!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
            }
            loaddonhang();
        }
        if (e.CommandName == "xoa")
        {
            string ngayht=DateTime.Now.ToString("yyyy-MM-dd");
            string sql = "delete from donhang where madh= "+madh+" and (matt=4 or (( SELECT DATEDIFF(DAY  , (SELECT CONVERT(date, ngaydat)from donhang where madh="+madh+"), '"+ngayht+"'))>365))";
            int k = 0;
            try
            {
                k = xldl.ThucThiSQL(sql);
            }
            catch { }

            if (k != 0)
            {
                string sMsg = "Xóa đơn hàng thành công!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
            }
            else
            {
                string sMsg = "Đơn hàng này không đủ điều kiện để xóa!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
            }
            loaddonhang();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int matt = int.Parse(DropDownList1.Items[DropDownList1.SelectedIndex].Value);
        if (matt > 0)
        {
            sql = "select * from donhang as dh inner join Trangthai as tt on dh.matt=tt.matt where dh.matt=" + matt + "";
        }
        else
            sql = "select * from donhang as dh, Trangthai as tt where dh.matt=tt.matt";
        this.qldonhang.DataSource = xldl.LayBang(sql);
        this.qldonhang.DataBind();
       
    }
}