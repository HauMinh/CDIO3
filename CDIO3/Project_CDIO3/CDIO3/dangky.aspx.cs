using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_dk_Click(object sender, EventArgs e)
    {
        XLDL xldl = new XLDL(); 
        String sql = "INSERT INTO taikhoan VALUES('"+txt_tdn.Text+"', '"+txt_mk.Text+"', '1', '"+txt_sdt.Text+"'); INSERT INTO khachhang VALUES('"+txt_tdn.Text+"', '"+txt_tenkh.Text+"', '"+txt_mail.Text+"', '"+txt_diachi.Text+ "','"+rdo_gt.SelectedValue+"');";
        int k = 0;
        try
        {
            k = xldl.ThucThiSQL(sql);
        }
        catch
        {
            string sMsg = "Đăng ký Không thành công!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);

        }

        if (k != 0)
        {
            string sMsg = "Đăng ký thành công!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }
    }
}