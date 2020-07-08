<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="QLSanPham.aspx.cs" Inherits="QLSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/css/QuanLy.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="containerQL">
    <div class="headerr">
       
        <div class="tieude">
            <a href="QLSanPham.aspx?page=home" style="color:white;"> Quản lý sản phẩm</a> 
        </div>
        <div class="tim">
            <a> 
                <asp:TextBox ID="txt_Tim" runat="server" placeholder="Tìm Kiếm" style="width:250px;"></asp:TextBox>
                  &nbsp
                <asp:ImageButton ID="btn_tim" runat="server" ImageUrl="~/Content/images/search.png" Width="18px" style="color:white;" OnClick="btn_tim_Click"/>
  
               
            </a>
        </div>
        
        <div class="themsp"> 
            <a href="QLSanPham.aspx?page=them" id="themspa" > Thêm sản phẩm</a> 
        </div>
        
    </div>
    <div id="contentQL">
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
    </div>
    </div>
</asp:Content>

