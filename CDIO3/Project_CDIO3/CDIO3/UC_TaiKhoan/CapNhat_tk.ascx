<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CapNhat_tk.ascx.cs" Inherits="UC_TaiKhoan_CapNhat_tk" %>
<style>
    #them{
    width:50%;
    text-align:left;
    margin-left:25%
}
#them a{
    
    margin:0;
}
    #them a input  {
        font-size:14px;
        margin-bottom:1em;
    }
</style>

<div class="tim">
            <a> 
                <asp:ImageButton ID="btn_tim" runat="server" ImageUrl="~/Content/images/search.png" Width="18px" style="color:black;" OnClick="btn_tim_Click"/>  
                &nbsp <asp:TextBox ID="txt_tim" runat="server" placeholder="Nhập tài khoản:" style="width:250px;"></asp:TextBox>
            </a>
        </div>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="770px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
    <Columns>
        <asp:TemplateField HeaderText="Tên Tài Khoản">
            <ItemTemplate>
                <%# Eval("tendangnhap") %>
            </ItemTemplate>
             <EditItemTemplate>
                 <asp:Label ID="lb_tentaikhoan" runat="server" Text='<%# Eval("tendangnhap") %>'></asp:Label>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Số Điện Thoại">
            <ItemTemplate>
                <%# Eval("sodienthoai") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txt_sdt" runat="server" Text='<%# Eval("sodienthoai") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Mật Khẩu">
            <ItemTemplate>
                <%# Eval("matkhau") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txt_matkhau" runat="server" Text='<%# Eval("matkhau") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ButtonType="Button" HeaderText="Sửa" ShowEditButton="True" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />

</asp:GridView>



