using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;
using System.Data;
using System.Data.SqlClient;
public partial class dangnhap : System.Web.UI.Page 
{
    XLDL xldl;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
    }

    protected void btn_dn_Click(object sender, EventArgs e)
    {
        DataTable tb = new DataTable();
        tb=xldl.LayBang("select * from taikhoan where tendangnhap='" + txt_tdn.Text + "' and matkhau='" + txt_pass.Text + "'");
        try
        {

        if (tb.Rows[0] !=null)
        {
            DataRow dr = tb.Rows[0];                
                Response.Cookies["user"]["tdn"] = txt_tdn.Text;
                Response.Cookies["user"].Expires = DateTime.Now.AddDays(1);
            string pq = dr["phanquyen"].ToString();            
            if(pq=="0")
            Response.Redirect("Admin.aspx");
            else if(pq=="1")
            Response.Redirect("khachhang.aspx");
            else
            Response.Redirect("Default.aspx");
                
               
        }

        }
        catch
        {
            string sMsg = "Tên đăng nhập hoặc mật khẩu sai!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
        }
    }
}