using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class UC_QLSP_HomeQL : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        XLDL xuliDL = new XLDL();
        String sql;
        if (Request.QueryString.Get("clicktim")=="true")
        { 
            sql = "select * from dbo.sanpham where masp like '%"+Request.QueryString.Get("tim")+ "%' OR tensanpham like '%"+Request.QueryString.Get("tim")+"%'";
        }
        else sql= "select* from dbo.sanpham";
        this.DataList1.DataSource = xuliDL.LayBang(sql);
        this.DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string masp = e.CommandArgument.ToString();
        if (e.CommandName == "xoa")
        {
            XLDL xuliDL = new XLDL();
            
            String sql = "delete from sanpham where masp='" + masp + "'";
            int k = 0;
            try
            {
                k = xuliDL.ThucThiSQL(sql);
            }
            catch
            {
                Response.Write("<script>");
                Response.Write("alert('Xóa không thành công!')");
                Response.Write("</script>");
            }

            if (k != 0)
            {
                Response.Write("<script>");
                Response.Write("alert('Xóa thành công!')");
                Response.Write("</script>");
                Server.TransferRequest(Request.Url.AbsolutePath, false);
            }
            else
            {
                Response.Write("<script>");
                Response.Write("alert('Xóa không thành công!')");
                Response.Write("</script>");
            }

        }
        if (e.CommandName == "sua")
        {
            Response.Redirect("QLSanPham.aspx?page=sua&masp="+masp);
        }
    }



}