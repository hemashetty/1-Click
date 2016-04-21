<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="get_shopping.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.get_shopping" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li class="current_page_item"><a href="get_shopping.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="shopping.aspx" accesskey="2" title="">Add</a></li>
				<li><a href="set_shopping.aspx" accesskey="3" title="">Update</a></li>
				<li><a href="sites.aspx" accesskey="4" title="">Sites</a></li>
				<li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
    <asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
      <br />
        <table style="width: 100%">
            <tr>
                <td><h1>Shopping</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
        <table class="auto-style1" style="height: 686px; width: 796px;" rules="none">
            <tr>
                <td class="auto-style2" style="width: 285px">
                    <asp:ImageButton ID="btn_shw_flipkart" runat="server" Height="76px" ImageUrl="~/Images/flip.png" OnClick="btn_shw_flipkart_Click" Width="75px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Flipkart"></asp:Label>
                    <br />
                </td>
                <td class="box1" style="width: 248px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 285px">
                    <asp:ImageButton ID="btn_shw_jabong" runat="server" Height="75px" ImageUrl="~/Images/Picture2.jpg" OnClick="btn_shw_jabong_Click" Width="78px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Jabong"></asp:Label>
                    <br />
                </td>
                <td class="box1" style="width: 248px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_nm_shopping" runat="server" Text="Label" Visible="False" Font-Size="Large"></asp:Label>
                    <asp:Label ID="lbl_note_shopping" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_shw_email" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_shw_pswd" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 285px">
                    <asp:ImageButton ID="btn_shw_myntra" runat="server" Height="72px" ImageUrl="~/Images/myntra.png" OnClick="btn_shw_myntra_Click" Width="78px" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Myntra"></asp:Label>
                </td>
                <td class="box1" style="width: 248px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 285px">
                    <asp:ImageButton ID="btn_shw_ebay" runat="server" Height="84px" ImageUrl="~/Images/ebay-128.png" OnClick="btn_shw_ebay_Click" Width="89px" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Ebay"></asp:Label>
                    <br />
                </td>
                <td class="box1" style="width: 248px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 285px">
                    <asp:ImageButton ID="btn_shw_amazon" runat="server" Height="80px" ImageUrl="~/Images/amazon_.png" OnClick="btn_shw_amazon_Click" Width="81px" />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Amazon"></asp:Label>
                </td>
                <td class="box1" style="width: 248px">&nbsp;</td>
            </tr>
        </table>
  
    
        </asp:Content>
   
