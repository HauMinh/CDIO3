<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Khoa_tk.ascx.cs" Inherits="UC_TaiKhoan_Khoa_tk" %>
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
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" >
            <asp:ListItem Value="Nu">Nữ</asp:ListItem>
            <asp:ListItem>Nam</asp:ListItem>
    </asp:RadioButtonList>
    </a>
    
    <br />

    <a>
        <asp:Label ID="Label8" runat="server" Text="Thời Hạn Khóa:  " ></asp:Label>
    </a>

    <br />

    <a>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="3 Gio">3 Giờ</asp:ListItem>
            <asp:ListItem Value="3 Ngay">3 Ngày</asp:ListItem>
            <asp:ListItem Value="1 Tuan">1 Tuần</asp:ListItem>
            <asp:ListItem Value="1 Thang">1 Tháng</asp:ListItem>
            <asp:ListItem Value="3 ">3 Tháng</asp:ListItem>
            <asp:ListItem Value="1 Nam">1 Năm</asp:ListItem>
            <asp:ListItem Value="Vinh Vien">Vĩnh Viễn</asp:ListItem>
    </asp:DropDownList>
    </a>

    <br />
    
    <br />
    <a >
        <input id="btn_khoa" type="button" value="Khóa" />
    </a>

    <br />
</div>
