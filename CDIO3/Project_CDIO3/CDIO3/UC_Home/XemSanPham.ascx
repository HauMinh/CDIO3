<%@ Control Language="C#" AutoEventWireup="true" CodeFile="XemSanPham.ascx.cs" Inherits="UC_Home_XemSanPham" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style>
    #ten{
        width:100%;
        border-bottom:1px solid gainsboro;        
        margin-top:1em;
    }
    #hinh{
        float:left;
        padding:1em 1em;
    }
    #gia{
        float:left;
        padding:1em 1em;
        word-wrap:break-word;
    }
    #km{
        border:1px solid gainsboro;
        border-radius: 4px 4px 4px 4px;
        padding:1em 1em;
        
    }
    #thongsokt{
        float:left;
        font-size: 14px;
        margin-left:2em;
        margin-top:1em;
        
    }
    .viewparameterfull {
        display: block;
        width: 100%;
        padding: 6px 0;
        margin: 10px 0 0;
        cursor: pointer;
        text-align: center;
        font-size: 14px;
        background-color: #288ad6;
        color: #fff;
        border: 1px solid #288ad6;
        border-radius: 4px;
    }
    .viewparameterfull:hover{
        background-color:#fff;
        color: #288ad6;
    }
    #BinhLuan{
        float:left;
        width:100%;
        margin-left:2em;
        margin-top:1em;
        max-height:30%; 
        display:block;    
    }
   
</style>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>

        <div id="ten" >
            <h2><%# Eval("tensanpham") %></h2>
        </div>
        <div id="hinh">
            <img alt="" src="<%# Eval("hinhanh") %>" width="400" height="460"/>
        </div>
        <div id="gia">
            <h2 style="color:red; font-weight:bold;"><%# Eval("gia") %>đ</h2>
            <div id="km">
                <h4 style="font-weight:bold;">Khuyến mãi: <%# Eval("Tenkhuyenmai") %></h4>
                <i class="fa fa-check-circle" style="color:green;"></i>&nbsp 
                <a style="margin-left:1em; text-decoration:none; word-wrap:break-word;"> <%# Eval("Noidungkhuyenmai") %></a>               
            </div>
            <br />
            <asp:ImageButton ID="btn_mua" runat="server" ImageUrl="~/DataIMG/mua_ngay_button.gif" OnClick="btn_mua_Click" />
        </div>
        <div id="thongsokt">
            <table style="width: 100%; line-height:50px;">
                <tr style="border-bottom:1px solid gainsboro;" >
                    <th>Thông số kỹ thuật</th>
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Màn hình: </td>
                    <td><%# Eval("manhinh") %></td>                    
                </tr >
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Hệ diều hành: </td>
                    <td><%# Eval("hedieuhanh") %></td>                    
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Camera:</td>
                    <td><%# Eval("camera") %></td>                    
                </tr >
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>CPU: </td>
                    <td><%# Eval("chipset") %></td>                    
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>RAM: </td>
                    <td><%# Eval("ram") %></td>                    
                </tr>
                <tr style="border-bottom:1px solid gainsboro;">
                    <td>Bộ nhơ trong: </td>
                    <td><%# Eval("bonhotrong") %></td>                    
                </tr>
                <tr >
                    <td>Dung lượng pin: </td>
                    <td><%# Eval("pin") %></td>                    
                </tr>
               
            </table>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                   Xem cấu hình chi tiết 
             </button>
           <%--  <asp:Button ID="Button1" runat="server" CssClass="viewparameterfull" Text="Xem cấu hình chi tiết" />--%>
        </div>
    </ItemTemplate>
</asp:Repeater>
<h5 ></h5>
<div id="BinhLuan" >
    <div style="float:left; width:60%; text-align:left;" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" Width="80%" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="Bình Luận" >
                <ItemTemplate >
                    <h4><%# Eval("tenkhachhang") %></h4>
                    <h5 style="font-weight:normal; margin-left:1em;" >
                        <%# Eval("binhluan") %></h5>
                    <div style="font-weight:normal; margin-left:1.5em; margin-right:2em; background-color:lightgray; ">
                        <h5>Admin: </h5><h5 style="font-weight:normal;margin-left:1em; vertical-align:central; word-wrap:break-word;"><%# Eval("traloi") %></h5>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
    <div style="float:left;width:30%; margin-right:2em; margin-top:2em;">
    <asp:TextBox ID="txt_binhluan" runat="server"  TextMode="MultiLine"  Font-Size="14" Width="100%" Height="100"></asp:TextBox>
        <h5></h5>
    <asp:Button ID="btn_binhluan" runat="server" Text="Bình luận" OnClick="btn_binhluan_Click" />
</div>
    
</div>
<div class="container">

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h2 class="modal-title">THÔNG TIN CHI TIẾT </h2>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="height:700px;">

            <asp:Repeater ID="Repeater_xemct" runat="server">
                <ItemTemplate>
                    <table style="width: 100%; font-size:14px; line-height:30px; ">
                        <tr style="font-size:20px; ">
                            <th colspan="2" style="text-align:center;">Thông số kỹ thuật chi tiết <%# Eval("tensanpham") %></th>                            
                        </tr>
                        <tr>
                            <th colspan="2" style="text-align:center;">
                                <img alt="" src="<%# Eval("hinhanh") %>" /></th>   
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro; color:orangered; background-color:aliceblue; font-size:16px;">
                            <th colspan="2">Màng hình</th>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Độ phân giải </th>
                            <td><%# Eval("manhinh") %></td>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Màn hình rộng</th>
                            <td><%# Eval("kichthuoc") %></td>
                        </tr>
                         <tr style="border-bottom:1px solid gainsboro; color:orangered; background-color:aliceblue; font-size:16px;">
                            <th colspan="2">Hệ điều hành - CPU</th>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Hệ điều hành </th>
                            <td><%# Eval("hedieuhanh") %></td>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Chipset (hãng SX CPU)</th>
                            <td><%# Eval("chipset") %></td>
                        </tr>
                         <tr style="border-bottom:1px solid gainsboro; color:orangered; background-color:aliceblue; font-size:16px;">
                            <th colspan="2">Bộ nhớ & Lưu trữ</th>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Ram</th>
                            <td><%# Eval("ram") %></td>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Bộ nhớ trong</th>
                            <td><%# Eval("bonhotrong") %></td>
                        </tr>
                         <tr style="border-bottom:1px solid gainsboro; color:orangered; background-color:aliceblue; font-size:16px;">
                            <th colspan="2">Camera - Pin</th>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Camera</th>
                            <td><%# Eval("camera") %></td>
                        </tr>
                        <tr style="border-bottom:1px solid gainsboro;">
                            <th>Pin</th>
                            <td><%# Eval("pin") %></td>
                        </tr>
                        
                    </table>
                </ItemTemplate>
            </asp:Repeater>
            
           </div>
         </div>
       </div>
    </div>
  </div>

