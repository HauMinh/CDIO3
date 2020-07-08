<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Quanlydonhang.aspx.cs" Inherits="Quanlydonhang" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
<div style="padding: 2em 2em;">
    <h1>Quản lý đơn hàng</h1><br />
     Trạng thái đơn hàng:
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
        <asp:ListItem Value="0">Tất cả</asp:ListItem>
        <asp:ListItem Value="1">Đang duyệt</asp:ListItem>
        <asp:ListItem Value="2">Đang giao hàng</asp:ListItem>
        <asp:ListItem Value="3">Đã giao hàng</asp:ListItem>
        <asp:ListItem Value="4">Đã hủy</asp:ListItem>
    </asp:DropDownList><asp:Button ID="btn_ok" runat="server" Text="OK" />
    <h4></h4>
 <asp:GridView ID="qldonhang" runat="server" AutoGenerateColumns="False" AllowPaging="True" Width="787px" OnRowCommand="qldonhang_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None"
                    >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Mã đơn hàng">
                            <ItemTemplate>
                                <asp:Label ID="lbeMadh" runat="server" Text='<%# Eval("madh") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ngày đặt hàng">                            
                             <ItemTemplate>
                                <asp:Label ID="lbeNgaydat" runat="server" Text='<%# Eval("ngaydat") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Khách hàng">                            
                          <ItemTemplate>
                                <asp:Label ID="lbeKhachhang" runat="server" Text='<%# Eval("nguoinhan") %>'></asp:Label>
                          </ItemTemplate>

                        </asp:TemplateField>
                       <asp:TemplateField  HeaderText="Trạng Thái" >
                           <ItemTemplate>
                                <asp:Label ID="lbetrangthai" runat="server" Text='<%# Eval("trangthai") %>'></asp:Label>
                          </ItemTemplate>
                        </asp:TemplateField>
                     <asp:TemplateField  HeaderText="Tổng tiền(đ)" >
                           <ItemTemplate>
                                <asp:Label ID="lbetongtien" runat="server" Text='<%# Eval("thanhtien") %>'></asp:Label>
                          </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Thao tác " >
                            <ItemTemplate>
                                <asp:Button ID="btn_duyet" runat="server" Text="Duyệt" CommandName="duyet" CommandArgument='<%# Eval("madh") %>' OnClientClick="return enableButtonGH()"/>
                                <asp:Button ID="btn_giaohang" runat="server" Text="Đã giao hàng"  CommandName="giaohang" CommandArgument='<%# Eval("madh") %>' OnClientClick="enableButtonHUY()"/>
                                <asp:Button ID="btn_huy" runat="server" Text="Hủy" CommandName="huy" CommandArgument='<%# Eval("madh") %>'  OnClientClick="return confirm('Bạn chắc chắn hủy đơn hàng này chứ?')"/>
                            </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField  >
                            <ItemTemplate>
                               <asp:ImageButton ID="btn_xoa" ImageUrl="~/Content/images/delete.png" Width="18" runat="server" CommandName="xoa" CommandArgument='<%# Eval("madh") %>'  OnClientClick="return confirm('Bạn chắc chắn xóa đơn hàng này chứ?')" />
                            </ItemTemplate>
                       </asp:TemplateField>
                        
                       
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            <asp:Button ID="btn_thongke" runat="server" Text="Thống Kê" OnClick="btn_thongke_Click" />
    </div>
     <script>
        function enableButtonGH() {
            document.getElementById("btn_giaohang").disabled = false;
            document.getElementById("btn_duyet").disabled = true;
         }
         function enableButtonHUY() {
             document.getElementById("btn_giaohang").disabled = true;
             document.getElementById("btn_duyet").disabled = true;
             document.getElementById("btn_huy").disabled = true;
        }
    </script>
</asp:Content>

 