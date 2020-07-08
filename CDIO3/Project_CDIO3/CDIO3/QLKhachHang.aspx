<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="QLKhachHang.aspx.cs" Inherits="QLKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/css/KhachHang.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .auto-style7 {
            margin-top: 38;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

      <div class="containerQL">
    <div class="headerr">
       
        <div class="tieude">
            <a href="QLKhachHang.aspx?page=home" style="color:white;"> Quản lý khách hàng</a> 
        </div>
        <div class="tim">
            <a> 
                <asp:ImageButton ID="btn_tim" runat="server" ImageUrl="~/Content/images/search.png" Width="18px" style="color:white;" />
  
                &nbsp <asp:TextBox ID="txt_Tim" runat="server" placeholder="Tìm Kiếm" style="width:250px;"></asp:TextBox>
            </a>
        </div>
        
        <div class="phanhoi">           
            <a href="QLKhachHang.aspx?page=them" > Phản hồi thông tin</a> 
               
        </div>
              
    </div>
    <div id="contentQL">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7" Width="269px">
        </asp:Panel>
    </div>  

</asp:Content>

