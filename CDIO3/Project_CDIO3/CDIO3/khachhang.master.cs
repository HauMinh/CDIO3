using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class khachhang : System.Web.UI.MasterPage
{
    XLDL xldl;
    String SQL;
    public String strMENU;
    DataTable tbmenu;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        Repeater1.DataSource = xldl.LayBang("select* from danhmucsanpham");
        Repeater1.DataBind();
        String tdn = (Request.Cookies["user"]["tdn"]).ToString();
        SQL = "SELECT * FROM donhang where tendangnhap='"+tdn+"'";
        tbmenu = xldl.LayBang(SQL);
        //tbmenu.DefaultView.RowFilter = "IdParent=0";
        DataTable tbmenuPARENT = tbmenu.DefaultView.ToTable();
        foreach (DataRow row in tbmenuPARENT.Rows)
        {
            strMENU += "<li>";
            strMENU += "<a href='LSmuahang.aspx?madh="+ row["madh"].ToString() + "'>"
              + row["madh"].ToString() + " || "+ row["ngaydat"].ToString()+" </a>";
            strMENU += "</li>";
        }
        
    }
    public void dequyMenu(String idperent)
    {

        tbmenu.DefaultView.RowFilter = "IdParent=" + idperent;
        DataTable tbmenuPARENT = tbmenu.DefaultView.ToTable();
        if (tbmenuPARENT.Rows.Count > 0)
        {
            strMENU += "<ul>";
            foreach (DataRow row in tbmenuPARENT.Rows)
            {
                strMENU += "<li>";
                strMENU += "<a href='" + row["Link"].ToString() + "'>"
                    + row["TenModul"].ToString() + "</a>";
                dequyMenu(row["IdModul"].ToString());
                strMENU += "</li>";
            }
            strMENU += "</ul>";

        }
    }



    protected void btn_tim_Click(object sender, EventArgs e)
    {
        Response.Redirect("khachhang.aspx?tim=" + txt_tim.Text + "");
    }  

    protected void btn_dx_Click1(object sender, EventArgs e)
    {
        if (Request.Cookies["user"] != null)
        {
            Response.Cookies["user"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Default.aspx");
        }
    }
}
