using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;
public partial class QLSanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Control hienthihome = new Control();
        if (Request.QueryString.Get("page") == "them")
            hienthihome = LoadControl("UC_QLSP/ThemSP.ascx");
        else
            if(Request.QueryString.Get("page") == "sua")
            hienthihome = LoadControl("UC_QLSP/SuaSPa.ascx");
        else
            hienthihome = LoadControl("UC_QLSP/HomeQL.ascx");
        this.Panel1.Controls.Add(hienthihome);
    }


    protected void btn_tim_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("QLSanPham.aspx?page=home&clicktim=true&tim=" + txt_Tim.Text + "");
    }
}