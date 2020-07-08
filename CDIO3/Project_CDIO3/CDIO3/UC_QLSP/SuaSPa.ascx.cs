using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;
using System.Data;
using System.Data.SqlClient;

public partial class UC_QLSP_SuaSPa : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        XLDL xldl = new XLDL();
        this.ddl_danhmuc.DataSource = xldl.LayBang("select* from danhmucsanpham");
        this.ddl_danhmuc.DataTextField = "tendanhmuc";
        this.ddl_danhmuc.DataValueField = "madm";
        this.ddl_danhmuc.DataBind();
        String masp = Request.QueryString.Get("masp");
        DataTable tb = new DataTable();
        tb = xldl.LayBang("select* from sanpham where masp='" + masp + "'");
        DataRow dr = tb.Rows[0];
        txt_masp.Text = dr["masp"].ToString();
        ddl_danhmuc.SelectedValue= dr["madm"].ToString();
        txt_tensp.Text = dr["tensanpham"].ToString();
        txt_hinhanh.Text = dr["hinhanh"].ToString();
        txt_gia.Text = dr["gia"].ToString();
        txt_soluong.Text = dr["soluong"].ToString();
        txt_baohanh.Text = dr["thoigianbaohanh"].ToString();
        txt_ram.Text = dr["ram"].ToString();
        txt_kichthuoc.Text = dr["kichthuoc"].ToString();
        txt_mau.Text = dr["mausac"].ToString();
        txt_manghinh.Text = dr["manhinh"].ToString();
        txt_hedieuhaanh.Text = dr["hedieuhanh"].ToString();
        txt_chipset.Text = dr["chipset"].ToString();
        txt_camera.Text = dr["camera"].ToString();
        txt_bonhotrong.Text = dr["bonhotrong"].ToString();
        txt_pin.Text = dr["pin"].ToString();
    }



    protected void btn_sua_Click1(object sender, EventArgs e)
    {

        XLDL xuliDL = new XLDL();
        string sql = "UPDATE sanpham SET madm='" + ddl_danhmuc.SelectedValue.ToString() + "', tensanpham='" + txt_tensp.Text + "', hinhanh='" + txt_hinhanh.Text + "', gia='" + txt_gia.Text + "', soluong='" + txt_soluong.Text + "', thoigianbaohanh='" + txt_baohanh.Text + "', ram='" + txt_ram.Text + "', kichthuoc='" + txt_kichthuoc.Text + "', mausac='" + txt_mau.Text + "', manhinh='" + txt_manghinh.Text + "', hedieuhanh='" + txt_hedieuhaanh.Text + "', chipset='" + txt_chipset.Text + "', camera='" + txt_camera.Text + "', bonhotrong='" + txt_bonhotrong.Text + "', pin='" + txt_pin.Text + "' where masp='" + txt_masp.Text + "' ;";
        int k = 0;
        try
        {
            k = xuliDL.ThucThiSQL(sql);
        }
        catch
        {
            string sMsg = "Sửa Không thành công!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
        }
        if (k != 0)
        {
            string sMsg = "Sửa thành công!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);

        }
        else
        {
            string sMsg = "Sửa Không thành công!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + sMsg + "')", true);
        }
    }
}