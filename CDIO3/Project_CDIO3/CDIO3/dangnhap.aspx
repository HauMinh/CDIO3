<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        .container1{
            height:100%;
            width:100%;
            background-color:Gainsboro;
            margin-top:-10px;
            position:absolute;
        }
        .container1 h3{
           float:left;
           margin-left:360px;
           margin-top:50px;
        }
        .dangnhap{
            width:500px;
            height:350px;
            margin-left:390px;
            background-color:white;
            

        }
        .dangnhap h4{
             line-height:50px;
             background-color:forestgreen;
             color:white;
             height:50px;
             margin-top:0px;
             text-align:center;
        }
        .dangnhap .form{
            margin-left: 60px;
            margin-top:60px;
            line-height:60px;
           
        }
        .textbox {
                 
                 width:300px;
                 padding:0 1em;
                 font-size: 17px;
                 position:relative;
                 top:-5px; 
                 border:none; 
                 height:30px;
                
        }
        .textbox:focus{
            outline:0;
        }

        .dn{
            display:block;
            line-height:40px;
            position:absolute; 
            border:1px solid black;
            border-radius:3px 3px 3px 3px; 
            height:40px; 
            padding:0 0.5em;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container1">
        <h3>Chào mừng bạn đến với DTU SmartPhone Shop.com !</h3>
     <br/><br /><br />
     <div class=" dangnhap">
           <h4> ÐĂNG NHẬP </h4>

            <table class="form">
               
                <tr>    
                   
                    <td>
                         <a class="dn"><i class=" fa fa-user" style="color:black; "> </i>
                        <asp:TextBox ID="txt_tdn" runat="server" class="textbox" ForeColor="Black" placeholder="Tên đăng nhập " required=""></asp:TextBox>
                        </a><br />
                    </td>
                </tr>
                <tr>
                  <td >
                        <a class="dn"><i class=" fa fa-lock" style="color:black; "> </i>
                        <asp:TextBox TextMode="Password" ID="txt_pass" runat="server" class="textbox" placeholder=" Mật khẩu"  ForeColor="Black" required=""></asp:TextBox>
                        </a>
                      <br />
                    </td>
                </tr> 
                 
                <tr>
                   <td class="auto-style1" colspan="2"> 
                        <asp:Button ID="btn_dn" runat="server" Text="Ðăng Nhập " ForeColor="White" BackColor="Red" style=" border-radius:10px 10px 10px 10px; margin-left:140px; font-size:17px; height:40px; margin-top:40px;line-height:10px; " OnClick="btn_dn_Click" />
                   </td>
                    
                </tr>
                
            </table>
          </div>
         <span  style="float:right;margin-right:435px;margin-top:30px;font-size:16px;">Thành viên mới ?<a href="dangky.aspx" > đăng ký</a> tại đây.</span>
    </div>


</asp:Content>

