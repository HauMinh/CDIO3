<%@ Page Title="" Language="C#" MasterPageFile="~/khachhang.master" AutoEventWireup="true" CodeFile="LSmuahang.aspx.cs" Inherits="LSmuahang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    <style>
        #main{
        background-color:gainsboro; 
        width:100%;
        height:100%;
        display:inline-table;
        }   
        #heder{
            background-color:white;
            
            font-size:16px;
            margin-left:1em;
            width:70%;
        }
        #khung{
        position:relative;
        /*float:left;*/
        width:70%;
        margin-left:1em;
        margin-top:1em;
        background-color:white;
        height:200px;
        line-height:200px;
    }
    #tien{
        position:absolute;
        top:123px;
        float:right;
        right:1em;
        width:20%;
        padding:1em 1em;
        background-color:white;
    }
    #khung #hinh{
        width:17%;
        float:left;        
        height:100%;
        line-height:200px;
    }
    #khung #thongtin{        
        float:left;
        width:45%;
        height:100%;
        line-height:200px;
    }
    #khung #soluong{  
        width:15%;
        float:right;     
        padding-top:20px;        
        height:100%;
    }
    #khung #soluong a{
         font-size:16px;  
         position:relative;
         top:-165px;
    }
    #khung #gia{
        width:15%;
        float:left;
        padding-top:20px; 
        height:100%;
    }    
    h4 {
        font-weight:normal;
     }

    #diachi{
         background-color:white;
         width:30%;
         margin-left:1em;
         padding:0.7em 0.7em;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main" style="padding:1em 1em;">
        <h2> Chi tiết đơn hàng </h2>
        
        <div style="background-color:white;">
            <asp:Repeater ID="Repeater_He" runat="server">
                <ItemTemplate>
                    <div id="heder" style="background-color:white;">
                        <div  style="float:left;">
                        <p>Đơn hàng #<%# Eval("madh") %></p>
                        <p style="color:gray;">Đặt ngày: <%# Eval("ngaydat") %></p>
                        </div>
                        <a style="color:gray; float:right; vertical-align:central;"> Tổng cộng: <%# Eval("thanhtien") %> đ</a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <h4></h4><br />
        <div style="display:block;">
            <asp:Repeater ID="Repeater_DH" runat="server">
                <ItemTemplate>
                 <div id="khung">   
                     <div id="hinh">           
                        <a href="<%string path = HttpContext.Current.Request.Url.AbsolutePath;
                        Response.Write(path);%>?page=xem&masp=<%# Eval("masp") %>" >
                        <img alt="" src="<%# Eval("hinhanh") %>" width="150" />  </a>
                    </div>
                    <div id="thongtin">
                        <h3> <%# Eval("tensanpham") %></h3>
                        <h4 > Màu: <%# Eval("mausac") %></h4>
                        <h4> Bộ nhớ: <%# Eval("bonhotrong") %></h4>
                    </div>
                    <div id="gia">
                        <h4 ><%# Eval("Gia") %> đ </h4>            
                    </div>
                    <div id="soluong">   
                        <h4>Qty: <%# Eval("SOLUONGmua") %></h4>
                    </div>
                </div>  
                
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <div>
            <asp:Repeater ID="Repeater_DC" runat="server">
                <ItemTemplate>
                    <div id="diachi">
                        <h4 style="font-weight:normal; margin:0 0;">Địa chỉ giao hàng</h4>
                        <h5> <%# Eval("nguoinhan") %> </h5>
                        <h5><i class="fa fa-home"></i>&nbsp <%# Eval("diachigiaohang") %>  </h5>
                        <h5> <%# Eval("sodienthoai") %> </h5>
                    </div>  
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

