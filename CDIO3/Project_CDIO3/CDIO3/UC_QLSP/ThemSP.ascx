<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThemSP.ascx.cs" Inherits="UC_QLSP_ThemSP" %>
<link href="../Content/css/Sua.css" rel="stylesheet" />
<div>

    
<div id="suasp">    
    <div >    
        <a style="  font-size:14px;  color:#5264AE;"> Danh mục sản phẩm</a><br />
      <asp:DropDownList style=" width: 300px; height: 20px; font-size:14px; border:none; border-bottom: 1px solid #757575;"
                ID="ddl_danhmuc" runat="server" >      
            </asp:DropDownList>        
    </div><br />
    <div class="group">      
      <asp:TextBox id="txt_masp" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Mã sản phẩm</label>
    </div>
    
      <div class="group">      
      <asp:TextBox id="txt_tensp" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Tên sản phẩm</label>
    </div>
    <div class="group">      
      <%--<asp:TextBox id="txt_hinhanh" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Hình ảnh (link)</label>--%>
        <a style="  font-size:14px;  color:#5264AE;"> Hình ảnh</a><br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
    <div class="group">      
      <asp:TextBox id="txt_gia" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Đơn giá</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_soluong" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Số lượng</label>
    </div>    
    <div class="group">      
      <asp:TextBox id="txt_baohanh" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Số tháng bảo hành</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_ram" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Ram</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_kichthuoc" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Kích thước</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_mau" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Màu</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_manghinh" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Màn hình</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_hedieuhaanh" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Hệ điều hành</label>
    </div
        ><div class="group">      
      <asp:TextBox id="txt_chipset" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Chipset</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_camera" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Camera</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_bonhotrong" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Bộ nhớ trong</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_pin" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Pin</label>
    </div>
    <br />
        <a style="text-align:center;">
            <asp:Button ID="btn_them" runat="server" Text="Thêm" Width="92px" OnClick="btn_them_Click" />
        </a>
  </div>     