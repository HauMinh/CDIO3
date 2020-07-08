<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HomeQL.ascx.cs" Inherits="UC_QLSP_HomeQL" %>

<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" BackColor="White" BorderColor="#757575" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black" OnItemCommand="DataList1_ItemCommand">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <div class="homeql">

                <a href="#" >
                    <img src="<%# Eval("hinhanh") %>" width="200"/>                
                    <br />
                    <a id="tensp"><%# Eval("tensanpham") %> &nbsp Giá:&nbsp <%# Eval("gia") %> </a>
                
                <div class="homebtn">
                    
                    <asp:Button ID="btn_sua" CommandName="sua" CommandArgument='<%# Eval("masp") %>' runat="server"  Text="Sửa" Width="50px" Height="40px" style="display:block; border-radius:20px; " 
                        />
                    <br />
                    
                    <asp:Button ID="btn_xoa"  CommandName="xoa" CommandArgument='<%# Eval("masp") %>' runat="server" Text="Xóa" Width="50px" Height="40px" style="display:block; border-radius:20px; " 
                        OnClientClick="return confirm('Bạn chắc chắn xóa mục này chứ?')"/>
                </div>
                </a>              
                </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    
</asp:DataList>

