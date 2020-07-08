using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;

public partial class LSmuahang : System.Web.UI.Page
{
    XLDL xldl;
    String sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        xldl = new XLDL();
        string madh = Request.QueryString.Get("madh");
        sql = "select * from donhang where madh='"+madh+"'";
        this.Repeater_He.DataSource = xldl.LayBang(sql);
        this.Repeater_He.DataBind();
       
        this.Repeater_DC.DataSource = xldl.LayBang(sql);
        this.Repeater_DC.DataBind();

        sql = "select *, ct.soluong as SOLUONGmua from chitietdonhang as ct inner join sanpham as sp on ct.masp=sp.masp where madh=" + madh + "";
        this.Repeater_DH.DataSource = xldl.LayBang(sql);
        this.Repeater_DH.DataBind();

    }
}