<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.shopping" %>


<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_shopping.aspx" accesskey="1" title="">Detail</a></li>
				<li class="current_page_item" ><a href="shopping.aspx" accesskey="2" title="">Add</a></li>
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
        &nbsp;<table class="auto-style1" rules="rows">
            <tr>
                <td class="box1" style="width: 243px">
                    <asp:ImageButton ID="imgflipkart" runat="server" Height="70px" ImageUrl="~/Images/flip.png" OnClick="imgflipkart_Click" Width="73px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Flipkart"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_flipkart" runat="server" OnClick="btn_add_flipkart_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td style="width: 558px; text-align: left;">
                    <asp:Label ID="lbl_note_flipkart" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtflipemail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="flip_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtflipemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="flip_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtflipswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="flip_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtflipswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="flip_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnflipkart" runat="server" OnClick="btnflipkart_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="97px" ValidationGroup="flip_add" />
                    &nbsp;<asp:Button ID="btn_cancel_flipkart" runat="server" OnClick="btn_cancel_flipkart_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="box1" style="width: 243px">
                    <asp:ImageButton ID="imgjubong" runat="server" Height="75px" ImageUrl="~/Images/Picture2.jpg" OnClick="imgjubong_Click" Width="75px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Jabong"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_jabong" runat="server" OnClick="btn_add_jabong_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td style="width: 558px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_jabong" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtjubemil" runat="server" Visible="False" placeholder="Email/username" Height="40px" Width="397px" ValidationGroup="jabong_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtjubemil" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="jabong_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtjubpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="jabong_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtjubpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="jabong_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnjubong" runat="server" OnClick="btnjubong_Click" Text="OK" Height="39px" Visible="False" Font-Size="Large" Width="96px" ValidationGroup="jabong_add" />
                    &nbsp;<asp:Button ID="btn_cancel_jabong" runat="server" OnClick="btn_cancel_jabong_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="box1" style="width: 243px">
                    <asp:ImageButton ID="imgmyntra" runat="server" Height="74px" ImageUrl="~/Images/myntra.png" OnClick="imgmyntra_Click" Width="78px" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Myntra"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_myntra" runat="server" OnClick="btn_add_myntra_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="False" />
                </td>
                <td style="width: 558px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_myntra" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtmyntemail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="myntra_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmyntemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="myntra_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtmyntpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="myntra_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmyntpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="myntra_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnmyntra" runat="server" OnClick="btnmyntra_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="myntra_add" />
                    &nbsp;<asp:Button ID="btn_cancel_myntra" runat="server" OnClick="btn_cancel_myntra_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="box1" style="width: 243px">
                    <asp:ImageButton ID="imgeby" runat="server" Height="79px" ImageUrl="~/Images/ebay-128.png" OnClick="imgeby_Click" Width="84px" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Ebay"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_ebay" runat="server" OnClick="btn_add_ebay_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="False" />
                </td>
                <td style="width: 558px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_ebay" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtebyemail" runat="server" placeholder="Email/username" Visible="False" Height="40px" Width="397px" ValidationGroup="ebay_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtebyemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="ebay_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtebypswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="ebay_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtebypswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="ebay_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnebay" runat="server" OnClick="btnebay_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="ebay_add" />
                    &nbsp;<asp:Button ID="btn_cancel_ebay" runat="server" OnClick="btn_cancel_ebay_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="box1" style="width: 243px">
                    <asp:ImageButton ID="imgamazon" runat="server" Height="74px" ImageUrl="~/Images/amazon_.png" OnClick="imgamazon_Click" Width="81px" />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Amazon"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_amazon" runat="server" OnClick="btn_add_amazon_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="False" />
                </td>
                <td style="width: 558px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_amazon" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtamazemail" runat="server" placeholder="Email/username" Visible="False" Height="40px" Width="397px" ValidationGroup="amazon_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtamazemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="amazon_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtamazpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="amazon_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtamazpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="amazon_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnamazon" runat="server" OnClick="btnamazon_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="amazon_add" />
                    &nbsp;<asp:Button ID="btn_cancel_amazon" runat="server" OnClick="btn_cancel_amazon_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="box1" style="width: 243px">
                    &nbsp;</td>
                <td style="width: 558px">&nbsp;</td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
    </asp:Content>