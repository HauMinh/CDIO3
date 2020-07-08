using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QLDanhMuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control hienthihome = new Control();
        if (Request.QueryString.Get("page") == "them")
            hienthihome = LoadControl("UC_QLDM/ThemDM.ascx");
        else
            if (Request.QueryString.Get("page") == "sua")
            hienthihome = LoadControl("UC_QLDM/SuaDM.ascx");
        else
            hienthihome = LoadControl("UC_QLDM/Home_QLDM.ascx");
        this.Panel1.Controls.Add(hienthihome);
    }
    protected void btn_tim_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("QLDanhMuc.aspx?page=home&clicktim=true&tim=" + txt_Tim.Text + "");
    }
}