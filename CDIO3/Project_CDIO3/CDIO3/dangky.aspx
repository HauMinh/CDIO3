<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="dangky.aspx.cs" Inherits="dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .container2{
            height:100%;
            width:100%;
            background-color:Gainsboro;
            margin-top:-10px;
            position:absolute;
        }
        .container2 h3{
           float:left;
           margin-left:360px;
           margin-top:45px;
        }
        .dangky{
            width:600px;
            height:590px;
            text-align:left;
            margin-left:360px;
            background-color:white;
           
        }
         .dangky h4 {
             line-height:50px;
             background-color:forestgreen;
             color:white;
             height:50px;
             margin-top:0px;
             text-align:center;
         }
        .auto-style1 {
            text-align:center ;
          
            
        }
        .style2 {
            width:200px;
            height:50px;
            font-size:17px;
            margin-top:20px;

        }
        .auto-style3 {
            width:500px;
            height:500px;
           margin-left:50px;
             
           margin-top:50px;
        } 
        .auto-style3 tr{
            line-height:50px;
        }
        
         .textbox{
                 margin-right:30px; 
                 height:30px; 
                 width:300px; padding:5px;
                 font-size: 17px;
         }
         .textbox:focus{
             outline:0;
         }
        .auto-style7 {
            width: 200px;
            height: 70px;
            font-size: 17px;
            margin-top: 20px;
        }
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container2">
          <h3>Tạo tài khoản</h3>
        <span  style="float:right;margin-right:360px;margin-top:55px;font-size:16px;">Bạn đã là thành viên ?<a href="dangnhap.aspx" > đăng nhập</a> tại đây.</span>
     <br/><br /><br />
      <div class=" dangky">
           <h4> ÐĂNG KÝ </h4>
            <table class="auto-style3">
               <tr>    
                    <td class="style2">Họ và tên</td>
                    <td>
                       
                        <asp:TextBox ID="txt_tenkh" required="" runat="server" class="textbox"></asp:TextBox>
                      
                    </td>
                </tr>
                <tr>    
                    <td class="style2">Địa chỉ</td>
                    <td>
                       
                        <asp:TextBox ID="txt_diachi" required="" runat="server" class="textbox"></asp:TextBox>
                      
                    </td>
                </tr>
                 <tr>    
                    <td class="style2">Giới tính</td>
                    <td>
                       
                        <asp:RadioButtonList ID="rdo_gt" runat="server" Font-Bold="false" Font-Size="17px" RepeatDirection="Horizontal">
                            <asp:ListItem Value="nam">Nam</asp:ListItem>
                            <asp:ListItem Value="nu">Nữ</asp:ListItem>
                        </asp:RadioButtonList>
                      
                    </td>
                </tr>
                <tr>
                    <td class="style2">Email</td>
                    <td>
                         <asp:TextBox ID="txt_mail" required="" runat="server" class="textbox"  placeholder="abc@gmail.com"></asp:TextBox></td>
                </tr>
                   <tr>
                    <td class="style2">Số Điện Thoại </td>
                    <td>
                       
                        <asp:TextBox ID="txt_sdt" required="" runat="server" class="textbox"></asp:TextBox>                  
                    </td>
                </tr>
                <tr>    
                    <td class="style2">Tên Đăng Nhập</td>
                    <td>
                       
                        <asp:TextBox ID="txt_tdn" required="" runat="server" class="textbox"></asp:TextBox>
                      
                    </td>
                </tr>
                
                <tr>
                    <td class="style2">Mật Khẩu </td>
                    <td>
                        <asp:TextBox ID="txt_mk" required="" runat="server" class="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"> 
                        <asp:Button ID="btn_dk" runat="server" Text="Ðăng Ký " ForeColor="White" BackColor="Red" style=" border-radius:10px 10px 10px 10px; margin-left:220px; font-size:17px; height:45px; margin-top:40px;line-height:10px; " OnClick="btn_dk_Click" />
                   </td>
                    
                </tr>
                
            </table>
          </div>
        </div>
</asp:Content>
