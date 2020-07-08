<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TrangChu.ascx.cs" Inherits="UC_Home_TrangChu" %>


 <style>
        #conten{
            padding: 0 1em;
            display:inline-table;
        }
         #hinh{
            margin-top: 1em;
            text-align:left;
            
        }
        .trangchu {
            margin-top: 1em;
            transition: all 0.2s;
            -moz-transition: all 0.2s;
            -webkit-transition: all 0.2s;
            position: relative;
            text-align:left;
            padding:0 1em;
        }
        .trangchu:hover {
            margin-top: 0.5em;
        }
       
        #tensp{
            
            color:black;
            font-size:16px;
            text-align:left;
        }
        #gia{
            color:red;
            font-size:16px;
            font-weight:bold;
        }
        #khuyenmai{
            color:black;
            font-size:14px;
            font-weight:normal;
        }
        
    </style>



    <div id="conten">
<asp:DataList ID="DataList_home" runat="server" RepeatColumns="5" BackColor="White" BorderColor="Gainsboro" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle ForeColor="#003399" BackColor="White" />
            <ItemTemplate>
                <div class="trangchu">

                <a href="<%string path = HttpContext.Current.Request.Url.AbsolutePath;
                    Response.Write(path);%>?page=xem&masp=<%# Eval("masp") %>" >
                    
                  <%--<script>
                        function xemsp(){
                            location.href = "?page=xem&masp=<%# Eval("masp") %>";
                        }
                  </script>--%>
                    <table style="width: 100%; display:block;">
                        <tr>
                            <td>
                                <img src="<%# Eval("hinhanh") %>" width="200"  />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label id="tensp"><%# Eval("tensanpham") %> <%# Eval("masp") %></label>
                            </td>
                        </tr>
                        <tr>
                            <td style="height:10px; line-height:10px;">                                
                                <label id="gia"><%# Eval("gia") %> đ
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <label id="khuyenmai">                    
                                    <%# Eval("NoiDungkhuyenmai") %> 
                                </label>
                            </td>
                        </tr>
                    </table>
               </a>
                            
                </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    
</asp:DataList>

</div> 

