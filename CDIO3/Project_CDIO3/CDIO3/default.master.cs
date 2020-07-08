using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class _default : System.Web.UI.MasterPage
{
    XLDL xldl;    
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();       
        Repeater1.DataSource = xldl.LayBang("select* from danhmucsanpham");
        Repeater1.DataBind();
        
    }

    protected void btn_tim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?tim=" + txt_tim.Text + "");
    }
}
