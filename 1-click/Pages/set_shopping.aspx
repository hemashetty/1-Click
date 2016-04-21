<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_shopping.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.set_shopping" %>


   <asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
       <ul>
				<li ><a href="get_shopping.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="shopping.aspx" accesskey="2" title="">Add</a></li>
				<li  class="current_page_item"><a href="set_shopping.aspx" accesskey="3" title="">Update</a></li>
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
        <table class="auto-style1" rules="rows" style="height: 1148px">
            <tr>
                <td class="boxA" style="width: 628px">
                    <asp:Image ID="img_flipkart" runat="server" Height="74px" ImageUrl="~/Images/flip.png" Width="75px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_flipkart" runat="server" OnClick="btn_updt_flipkart_Click" Text="Update Flipkart" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_flipkart" runat="server" OnClick="btn_cls_flipkart_Click" Text="Delete Flipkart" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="boxA" style="width: 598px; text-align: left;">
                    <asp:Label ID="lbl_flipkart" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_flipkartemail" runat="server" Visible="False" Height="40px" placeholder="Email/username" Width="397px" ValidationGroup="flipkart_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_updt_flipkartemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="flipkart_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_update_flipkartpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="394px" ValidationGroup="flipkart_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_update_flipkartpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="flipkart_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_flipkartok" runat="server" OnClick="btn_updt_flipkartok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="flipkart_updt" />
                    <br />
                </td>
                <td style="width: 306px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 628px">
                    <asp:Image ID="img_jabong" runat="server" Height="72px" ImageUrl="~/Images/Picture2.jpg" Width="78px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_jabong" runat="server" OnClick="btn_updt_jabong_Click" Text="Update Jabong" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_jabong" runat="server" OnClick="btn_cls_jabong_Click" Text="Delete Jabong" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="boxA" style="width: 598px; text-align: left;">
                    <asp:Label ID="lbl_jabong" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_jabongemail" runat="server" Visible="False" placeholder="Email/username" Height="40px" Width="397px" ValidationGroup="jabong_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_updt_jabongemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="jabong_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_jabongpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="jabong_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_updt_jabongpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="jabong_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_jabongok" runat="server" OnClick="btn_updt_jabongok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="jabong_updt" />
                    <br />
                </td>
                <td style="width: 306px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 628px">
                    <asp:Image ID="img_upt_mynta" runat="server" Height="73px" ImageUrl="~/Images/myntra.png" Width="77px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_mytra" runat="server" OnClick="btn_updt_mytra_Click" Text="Update Myntra" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_myntra" runat="server" OnClick="btn_cls_myntra_Click" Text="Delete Myntra" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="boxA" style="width: 598px; text-align: left;">
                    <asp:Label ID="lbl_myntra" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_myntraemail" runat="server" Visible="False" placeholder="Email/username" Height="40px" Width="397px" ValidationGroup="myntra_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_updt_myntraemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="myntra_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_myntrapswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="myntra_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_updt_myntrapswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="myntra_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_myntraok" runat="server" OnClick="btn_updt_myntraok_Click" Text="OK" Font-Size="Large" Height="39px" Visible="False" Width="96px" ValidationGroup="myntra_updt" />
                    <br />
                </td>
                <td style="width: 306px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 628px">
                    <asp:Image ID="Image1" runat="server" Height="79px" ImageUrl="~/Images/ebay-128.png" Width="87px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_ebay" runat="server" OnClick="btn_updt_ebay_Click" Text="Update Ebay" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_ebay" runat="server" OnClick="btn_cls_ebay_Click" Text="Delete Ebay" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="boxA" style="width: 598px; text-align: left;">
                    <asp:Label ID="lbl_updt_ebay" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_ebayemail" runat="server" placeholder="Email/username" Visible="False" Height="40px" Width="397px" ValidationGroup="ebay_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_updt_ebayemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="ebay_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_ebaypswd" runat="server" Visible="False" placeholder="Password" Height="40px" style="margin-bottom: 2px" Width="397px" ValidationGroup="ebay_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_updt_ebaypswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="ebay_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_ebayok" runat="server" OnClick="btn_updt_ebayok_Click" Text="OK" Font-Size="Large" Height="39px" Visible="False" Width="96px" ValidationGroup="ebay_updt" />
                    <br />
                </td>
                <td style="width: 306px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 628px">
                    <asp:Image ID="Image2" runat="server" Height="76px" ImageUrl="~/Images/amazon_.png" Width="81px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_amazon" runat="server" OnClick="btn_updt_amazon_Click" Text="Update Amazon" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_amzn" runat="server" OnClick="btn_cls_amzn_Click" Text="Delete Amazon" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="boxA" style="width: 598px; text-align: left;">
                    <asp:Label ID="lbl_amazon" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br /><asp:TextBox ID="txt_updt_amazonemail" runat="server" placeholder="Email/username" Visible="False" Height="40px" Width="397px" ValidationGroup="amazon_updt"></asp:TextBox>
                    
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_updt_amazonemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="amazon_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_amazonpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="amazon_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_updt_amazonpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="amazon_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_amazonok" runat="server" OnClick="btn_updt_amazonok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="amazon_updt" />
                    <br />
                </td>
                <td style="width: 306px">
                    &nbsp;</td>
            </tr>
        </table>
    
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
   
        </asp:Content>