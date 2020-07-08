<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TaiKhoan.aspx.cs" Inherits="TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/css/TaiKhoan.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ek+Mukta">
    <link href="Content/css/dangxuat.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style type="text/css">
        .auto-style7 {
            height: 433px;
        }
        .btndx{
            background-color:#1f568b;
            border:none;
            display:block;
            color:#919191;
           
            padding:0 0;
        }
        .btndx:hover{
            background-color: #3e3436;
            color: #be5b70;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="containerQL">
    <div class="headerr">
        <div class="themtaikhoan">
                <a href="TaiKhoan.aspx?page=them_tk" style="color:white;">
                        Thêm
                </a>
        </div>
        <div class="themtaikhoan">
            <a  href="TaiKhoan.aspx?page=khoa_tk" style="color:white;" >
                khóa
            </a>
        </div>
        <div class="themtaikhoan">
                <a href="TaiKhoan.aspx?page=capnhat_tk" style="color:white;">                  
                    cập nhật  </a>
        </div>
        <div class="use">
            <nav class="menu">
            <ul class="clearfix">
                <li>
                    <a href="#" style="height:25px; border:none ">
                        <img src="Content/images/pngguru.com.png"height="30"/><span class="arrow">&#9660;</span></a>
                    <ul class="sub-menu">
                    <li><a href="#" style="color:white;">Thông tin</a></li>
                    <li><a style="  ">
                        <asp:Button ID="txt_dx" runat="server" Text="Đăng xuất" Width="100%" Height="100%" CssClass="btndx"  OnClick="txt_dx_Click" /></a></li>
                </ul>
                </li>
            </ul>
            </nav>
        </div>

    </div>
    <div id="contentQL">
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
    </div>
        </div>
</asp:Content>

