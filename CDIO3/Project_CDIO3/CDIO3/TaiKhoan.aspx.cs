using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class TaiKhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control hienthi = new Control();
        if (Request.QueryString.Get("page") == "them_tk" )
        {
            hienthi = LoadControl("UC_TaiKhoan/ThemTaiKhoan.ascx");
            
        }
        else if (Request.QueryString.Get("page") == "khoa_tk")
        {
           hienthi = LoadControl("UC_TaiKhoan/Khoa_tk.ascx");
        }    
       else //if(Request.QueryString.Get("page") == "capnhat_tk")
       {
            hienthi = LoadControl("UC_TaiKhoan/CapNhat_tk.ascx");
       }    
        this.Panel1.Controls.Add(hienthi);
    }

    protected void txt_dx_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["user"] != null)
        {
            Response.Cookies["user"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Default.aspx");
        }
    }
}