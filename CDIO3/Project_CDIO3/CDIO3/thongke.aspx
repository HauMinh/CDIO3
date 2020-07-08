<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="thongke.aspx.cs" Inherits="thongke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<div style="padding:2em 2em;">
    <h2>Thống Kê</h2>
    Trạng thái đơn hàng:
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
        <asp:ListItem Value="0">Tất cả</asp:ListItem>
        <asp:ListItem Value="1">Đang duyệt</asp:ListItem>
        <asp:ListItem Value="2">Đang vận chuyển</asp:ListItem>
        <asp:ListItem Value="3">Đã giao hàng</asp:ListItem>
        <asp:ListItem Value="4">Đã hủy</asp:ListItem>
    </asp:DropDownList><asp:Button ID="btn_ok" runat="server" Text="OK" />
    <br />
    <br />
    
    <asp:GridView ID="qlthongke" runat="server" AutoGenerateColumns="False" AllowPaging="True" Width="424px" OnRowDataBound="qlthongke_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None"
                    >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Mã đơn hàng">
                            <ItemTemplate>
                                <asp:Label ID="lbeMadh" runat="server" Text='<%# Eval("madh") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField  HeaderText="Trạng Thái" >
                           <ItemTemplate>
                                <asp:Label ID="lbetrangthai" runat="server" Text='<%# Eval("trangthai") %>'></asp:Label>
                          </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField  HeaderText="Thành tiền(đ)" >
                           <ItemTemplate>
                                <asp:Label ID="lbetongtien" runat="server" Text='<%# Eval("thanhtien") %>'></asp:Label>
                          </ItemTemplate>
                        </asp:TemplateField>
                        
                        <%--<asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" />--%>
                        
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
                </asp:GridView><br />
      <h3> Tổng đơn hàng: <asp:Label ID="lbe_tongdh" runat="server" ></asp:Label></h3><br />
      <h3> Tổng tiền: <asp:Label ID="lbe_Tongtien" runat="server" ></asp:Label></h3>
 </div>     
</asp:Content>

