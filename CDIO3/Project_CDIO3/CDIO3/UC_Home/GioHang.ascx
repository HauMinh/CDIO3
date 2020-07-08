<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GioHang.ascx.cs" Inherits="UC_Home_GioHang" %>

<style>
    #main{
        background-color:gainsboro; 
        position:absolute; 
        width:100%;
        height:100%;
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
        height:100%;
    }    
    h4 {
        font-weight:normal;
     }
    .btn_sl{
        width:25px;
        height:25px;
        font-size:16px;
        font-weight:bold;
        border:1px solid black;
        border-radius:3px 3px 3px 3px;
        vertical-align:top;
        
    }
   .txt{
       width:35px;
       height:25px;
       text-align:center;       
       vertical-align:top;       
   }
   .lbtongtien{
       color:red;
       font-size:22px;
       font-weight:bold;
   }
</style>
<div id="main"> 
    <h2 style="margin:1em 1em;">Giỏ hàng</h2>
 <div  style="margin-left:1em;">        
  <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand " >
    <ItemTemplate>
        <%--<div style="background-color:none; border:2px solid;display:block; ">--%>
        <div id="khung">   
       <div id="hinh">           
            <a href="<%string path = HttpContext.Current.Request.Url.AbsolutePath;
                    Response.Write(path);%>?page=xem&masp=<%# Eval("masp") %>" >
                <img alt="" src="<%# Eval("hinhanh") %>" width="150" />               
           </a>
       </div>
        <div id="thongtin">
           <h3> <%# Eval("tensanpham") %></h3>
            <h4 > Màu: <%# Eval("mausac") %></h4>
            <h4> Bộ nhớ: <%# Eval("bonhotrong") %></h4>
            <h4> <%# Eval("Noidungkhuyenmai") %></h4>
        </div>
        <div id="gia">
             <h3 ><%# Eval("Gia") %> đ </h3>
            <a style=" vertical-align:bottom; font-size:16px;">
                <asp:ImageButton ID="btn_xoa" runat="server" ImageUrl="~/Content/images/deletebtn.png" Width="70" CommandName="button_xoa" CommandArgument='<%# Eval("masp") %>'/>
            </a>
            
        </div>
        <div id="soluong">   
            <asp:ImageButton ID="btn_TruSL" runat="server" CssClass="btn_sl" ImageUrl="~/Content/images/-.png" CommandName="TruSL" CommandArgument='<%# Eval("masp") %>'/>            
            <asp:TextBox ID="txt_soluong" runat="server" Text='<%# Eval("SOLUONGmua") %>' CssClass="txt"  ></asp:TextBox>
            <asp:ImageButton ID="btn_CongSL" runat="server" CssClass="btn_sl" ImageUrl="~/Content/images/plus.png" CommandName="CongSL" CommandArgument='<%# Eval("masp") %>' />  
            <a id="up">
            <asp:ImageButton ID="button_update" runat="server" ImageUrl="~/Content/images/update.png" Width="70" CommandName="button_update"  CommandArgument='<%#Eval("masp")+","+ Eval("SOLUONGmua")%>'/>
            </a>
        </div>
            
      </div>  
        <br />
    </ItemTemplate>
</asp:Repeater>
 </div>
    
<div id="tien">
   <h4 style="font-size:16px; float:left;"> Thành tiền: </h4>
    <div style="float:right; text-align:center;">
        <asp:Label ID="txt_tongtien" runat="server" CssClass="lbtongtien" ></asp:Label> <a class="lbtongtien"> đ</a>
        <br />
        <h4 style="font-size:14px; font-style:italic;  "> (Đã bào gồm VAT) </h4>
    </div>
</div>
    <div style="position:absolute;top:245px;
        float:right;
        right:1em;
        width:20%;
        margin-top:1em; "  >
    <asp:ImageButton ID="btn_dathang" runat="server" ImageUrl="~/Content/images/btm_dathang.gif" Width="100%" OnClick="btn_dathang_Click"/>
    </div>
</div>