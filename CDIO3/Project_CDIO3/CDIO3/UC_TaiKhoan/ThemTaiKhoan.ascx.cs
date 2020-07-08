using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;
using System.Data;
using System.Data.SqlClient;

public partial class UC_TaiKhoan_ThemTaiKhoan : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_them_Click(object sender, EventArgs e)
    {
        XLDL xldl = new XLDL();
        string sql;
        sql = "INSERT INTO dbo.taikhoan VALUES('" + txt_tendangnhap.Text + "', '" + txt_matkhau.Text + "', '1' , '" + Txt_sdt.Text + "');";
        sql += "INSERT INTO dbo.khachhang VALUES('" + txt_tendangnhap.Text + "' , N'" + Txt_tenkhachhang.Text + "' , '" + Txt_email.Text + "' , N'" + Txt_diachi.Text + "'  ,  '" + rdo_gioitinh.SelectedValue + "');";
        int k = 0;
        try
        {
            k = xldl.ThucThiSQL(sql);
        }
        catch
        {
            lbe_thongbao.Text = "Thêm không thành công!";
        }
        if (k != 0)
        {
            lbe_thongbao.Text = "Thêm thành công!";
        }
    }
}