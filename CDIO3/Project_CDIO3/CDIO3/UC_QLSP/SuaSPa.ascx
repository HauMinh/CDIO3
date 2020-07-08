<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SuaSPa.ascx.cs" Inherits="UC_QLSP_SuaSPa" %>
<link href="../Content/css/Sua.css" rel="stylesheet" />
<div>

    
<div id="suasp">    
    <div >    
        <a style="  font-size:14px;  color:#5264AE;"> Danh mục sản phẩm</a><br />
      <asp:DropDownList style=" width: 300px; height: 20px; font-size:14px; border:none; border-bottom: 1px solid #757575;"
                ID="ddl_danhmuc" runat="server" >      
            </asp:DropDownList>        
    </div><br />
    <div class="group" style="height:58px;">    
        
     <label  style="font-weight: normal;    position: absolute;    pointer-events: none;    left: 5px;top: -10px;    font-size: 14px;    color: #5264AE;">Mã sản phẩm</label>
        <span class="highlight"></span>
      <span class="bar"></span>
        <asp:TextBox id="txt_masp" CssClass="input" runat="server"  required="true" ReadOnly="True"></asp:TextBox>
    
    </div>
    
      <div class="group">      
      <asp:TextBox id="txt_tensp" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Tên sản phẩm</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_hinhanh" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Hình ảnh (link)</label>
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
    </div><div class="group">      
      <asp:TextBox id="txt_pin" CssClass="input" runat="server" required="true"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Pin</label>
    </div>
   <br />
        <a> <asp:Button ID="btn_sua" runat="server" Text="Sửa" Width="92px" OnClick="btn_sua_Click1" 
            OnClientClick="return confirm('Bạn có muốn chỉnh sửa sản phẩm này không?')" /> </a>
  </div>     
    <div id="DanhsachSP">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="masp" HeaderText="Mã sản phẩm" />
                <asp:TemplateField HeaderText="Danh mục sản phẩm">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="tensanpham" HeaderText="Tên sản phẩm" />
                <asp:ImageField DataImageUrlField="hinhanh" HeaderText="Hình ảnh">
                </asp:ImageField>
                <asp:BoundField DataField="gia" HeaderText="Đơn giá" />
                <asp:BoundField DataField="soluong" HeaderText="Số lượng" />
                <asp:BoundField DataField="thoigianbaohanh" HeaderText="Bảo hành (tháng)" />
                <asp:BoundField DataField="ram" HeaderText="Ram" />
                <asp:BoundField DataField="kichthuoc" HeaderText="Kích thước (inch)" />
                <asp:BoundField DataField="mausac" HeaderText="Màu sắc" />
                <asp:BoundField DataField="manhinh" HeaderText="Công nghê màn hình" />
                <asp:BoundField DataField="hedieuhanh" HeaderText="Hệ điều hành" />
                <asp:BoundField DataField="chipset" HeaderText="CPU" />
                <asp:BoundField DataField="camere" HeaderText="Camera" />
                <asp:BoundField DataField="bonhotrong" HeaderText="Bộ nhơ trong" />
                <asp:BoundField DataField="pin" HeaderText="Pin" />
            </Columns>
        </asp:GridView>
    </div>

</div>