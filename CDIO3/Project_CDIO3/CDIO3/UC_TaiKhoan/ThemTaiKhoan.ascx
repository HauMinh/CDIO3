<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThemTaiKhoan.ascx.cs" Inherits="UC_TaiKhoan_ThemTaiKhoan" %>
<style>
    #them{
    width:50%;
    text-align:left;
    margin-left:25%
}
#them a{
    margin-left:1em;
    margin-top:1em;
}
    #them a input  {
        font-size:14px;
        margin-bottom:1em;
    }
</style>


<div id="them">
    <a>
        <asp:Label ID="Label2" runat="server" Text="Tên Đăng Nhập:  " ></asp:Label>
    </a>

    <br />

    <a>
        <asp:TextBox ID="txt_tendangnhap" runat="server" Width="507px"></asp:TextBox>
    </a>

    <br />

    <a >
        <asp:Label ID="Label6" runat="server" Text="Mật Khẩu:  " ></asp:Label>
    </a>

    <br />

    <a >
        <asp:TextBox ID="txt_matkhau" runat="server" Width="507px"></asp:TextBox>
    </a>

    <br />
    <a >
        <asp:Label ID="Label1" runat="server" Text="Tên Khách Hàng  " ></asp:Label>
    </a>

    <br />
    <a  >
        <asp:TextBox ID="Txt_tenkhachhang" runat="server" Width="507px"></asp:TextBox>
    </a>

    <br />

    <a>
        <asp:Label ID="Label3" runat="server" Text="Email:  " ></asp:Label>
    </a>

    <br />

    <a >
        <asp:TextBox ID="Txt_email" runat="server" Width="507px"></asp:TextBox>
    </a>

    <br />

    <a>
        <asp:Label ID="Label5" runat="server" Text="Địa Chỉ:  " ></asp:Label>
    </a>

    <br />

    <a >
        <asp:TextBox ID="Txt_diachi" runat="server" Width="507px"></asp:TextBox>
    </a>

    <br />

    <a>
        <asp:Label ID="Label4" runat="server" Text="Số Điện Thoại:" ></asp:Label>
    </a>

    <br />

    <a>
        <asp:TextBox ID="Txt_sdt" runat="server" Width="507px"></asp:TextBox>
    </a>

    <br />

    <a>
        <asp:Label ID="Label7" runat="server" Text="Giới Tính:  " ></asp:Label>
    </a>

    <br />

    <a >
        <asp:RadioButtonList ID="rdo_gioitinh" runat="server" RepeatDirection="Horizontal" >
            <asp:ListItem Value="Nu">Nữ</asp:ListItem>
            <asp:ListItem>Nam</asp:ListItem>
    </asp:RadioButtonList>
    </a>
    
    <asp:Button ID="btn_them" runat="server" OnClick="btn_them_Click" Text="THÊM" />
    
    <br />
    <a >
        &nbsp;</a><br />
</div>
<div style="text-align:center; color:red; font-size:14px;">
    <asp:Label ID="lbe_thongbao" runat="server" ></asp:Label>
</div>


