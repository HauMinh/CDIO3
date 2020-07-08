<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="QLDanhMuc.aspx.cs" Inherits="QLDanhMuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="Content/css/QuanLy.css" rel="stylesheet" />
     <style type="text/css">
         .auto-style7 {
             margin-bottom: 0;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   <div class="containerQL">
    <div class="headerr">
       
        <div class="tieude">
            <a href="QLDanhMuc.aspx?page=home" style="color:white;"> Quản lý danh mục</a> 
        </div>
        <div class="tim">
            <a> 
                <asp:TextBox ID="txt_Tim" runat="server" placeholder="Tìm Kiếm" style="width:250px;"></asp:TextBox> &nbsp 
                <asp:ImageButton ID="btn_tim" runat="server" ImageUrl="~/Content/images/search.png" Width="18px" style="color:white;" OnClick="btn_tim_Click1"/>  
               
            </a>
        </div>
        
       
        
    </div>
    <div id="contentQL">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7"></asp:Panel>
    </div>
    </div>
</asp:Content>

