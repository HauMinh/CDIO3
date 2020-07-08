using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CDIO3.App_code;
public partial class UC_QLSP_ThemSP : System.Web.UI.UserControl
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        XLDL xuliDL = new XLDL();
        this.ddl_danhmuc.DataSource = xuliDL.LayBang("select * from danhmucsanpham");
        this.ddl_danhmuc.DataTextField = "tendanhmuc";
        this.ddl_danhmuc.DataValueField = "madm";
        this.ddl_danhmuc.DataBind();
        
    }
    public String UploadAnh()
    {
        String filename = null;
        if (FileUpload1.HasFile)
        {
            String path = Server.MapPath("\\DataIMG\\");
            filename = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(path + filename);
        }
        return "DataIMG//" + filename;
    }
    protected void btn_them_Click(object sender, EventArgs e)
    {
        XLDL xuliDL = new XLDL();
        String filehinh = UploadAnh();
        string sql = "INSERT INTO dbo.sanpham VALUES('"+txt_masp.Text +"', '" + ddl_danhmuc.SelectedValue.ToString() + "', '" + txt_tensp.Text + "', '" + filehinh + "', '" + txt_gia.Text + "', '" + txt_soluong.Text + "', '" + txt_baohanh.Text + "', '" + txt_ram.Text + "', '" + txt_kichthuoc.Text + "', '" + txt_mau.Text + "', '" + txt_manghinh.Text + "', '" + txt_hedieuhaanh.Text + "', '" + txt_chipset.Text + "', '" + txt_camera.Text + "', '" + txt_bonhotrong.Text + "', '" + txt_pin.Text + "');";
        int k = 0;
        try
        {
            k = xuliDL.ThucThiSQL(sql);
        }
        catch
        {
            Response.Write("<script>");
            Response.Write("alert('Thêm không thành công!')");
            Response.Write("</script>");
        }

        if (k != 0)
        {
            Response.Write("<script>");
            Response.Write("alert('Thêm thành công!')");
            Response.Write("</script>");
            //Server.TransferRequest(Request.Url.AbsolutePath, false);
        }
        else
        {
            Response.Write("<script>");
            Response.Write("alert('Thêm không thành công!')");
            Response.Write("</script>");
        }
    }
}