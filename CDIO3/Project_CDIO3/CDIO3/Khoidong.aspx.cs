using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Khoidong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tdn = null;
      
        try
        {
            tdn = (Request.Cookies["user"]["tdn"]).ToString();
           
         }
        catch
        {
        };
        if(tdn != null)
        {
            if(tdn=="admin")
            Response.Redirect("Admin.aspx");
            else
            Response.Redirect("khachhang.aspx");
        }
        else
            Response.Redirect("Default.aspx");
    }
}