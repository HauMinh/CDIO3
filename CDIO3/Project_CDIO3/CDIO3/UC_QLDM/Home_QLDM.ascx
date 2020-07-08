<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Home_QLDM.ascx.cs" Inherits="UC_QLDM_Home_QLDM" %>


    <style type="text/css">
        .auto-style2 {
            width: 25%;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 50%;
        }
    </style>

<link href="../Content/css/Sua.css" rel="stylesheet" />
<div style="margin: 1em 1em;">
    <div class="group">      
      <asp:TextBox id="txt_madm" CssClass="input" runat="server" ></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Mã danh mục</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_TENDM" CssClass="input" runat="server"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Tên danh mục</label>
    </div>
    <div class="group">      
      <asp:TextBox id="txt_NhaSX" CssClass="input" runat="server"></asp:TextBox>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Nhà sản xuất</label>
    </div>
    <asp:Button ID="btnTHEMMOI" runat="server" Font-Size="20" Text="Thêm" Height="50px" Width="90px" OnClick="btn_them_Click" />
   
</div>

        
    <table style="font-size:20px;" class="auto-style3">
        
       
          <tr>
            <td colspan="2" style="text-align:center; color:red; font-size:14px;">
                <asp:Label ID="lbe_thongbao" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center; padding:1em 1em;">
                  <asp:GridView ID="grlDANHMUC" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                     OnRowDeleting="grdDANHMUC_RowDeleting" OnRowEditing="grdDANHMUC_RowEditing" OnRowUpdating="grdDANHMUC_RowUpdating"
                     PageSize="5" OnPageIndexChanging="grlDANHMUC_PageIndexChanging"  Width="90%" >
                    <Columns>
                        <asp:TemplateField HeaderText="Mã danh mục">
                            <ItemTemplate>
                                <asp:Label ID="lbeMADM" runat="server" Text='<%# Eval("madm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên danh mục">                            
                            <ItemTemplate>
                                <asp:Label ID="lbe_tendm" runat="server" Text='<%# Eval("tendanhmuc") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_tendm" runat="server" Text='<%# Eval("tendanhmuc") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nhà sản xuất">                            
                            <ItemTemplate>
                                <asp:Label ID="lbe_nsx" runat="server" Text='<%# Eval("nhasanxuat") %>'></asp:Label>
                            </ItemTemplate>
                             <EditItemTemplate>
                                <asp:TextBox ID="txt_nsx" runat="server" Text='<%# Eval("nhasanxuat") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" HeaderText="Sửa" ShowEditButton="True" ShowCancelButton="False" EditText="Sửa" UpdateText="Lưu" />
                        <asp:CommandField ButtonType="Button" HeaderText="Xóa" ShowDeleteButton="True" ShowCancelButton="False" DeleteText="Xóa" />
                        
                    </Columns>
                </asp:GridView>
            
                </td>
        </tr>
       
        
    </table>

