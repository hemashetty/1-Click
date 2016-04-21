<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_entertainment.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.set_entertainment" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li><a href="get_entertainment.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="entertainment.aspx" accesskey="2" title="">Add</a></li>
				<li  class="current_page_item"><a href="set_entertainment.aspx" accesskey="3" title="">Update</a></li>
				<li><a href="sites.aspx" accesskey="4" title="">Sites</a></li>
				<li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
    <asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width: 100%">
            <tr>
                <td><h1>Entertainment</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" rules="rows">
            <tr>
                <td class="auto-style2" style="width: 232px">
                    <asp:Image ID="img_ganna" runat="server" Height="96px" ImageUrl="~/Images/ganna.png" Width="82px" />
                    <asp:Button ID="updt_ganna" runat="server" OnClick="updt_ganna_Click" Text="Update Ganna" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_close_gana" runat="server" OnClick="btn_close_gana_Click" Text="Delete Gana" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="auto-style3" style="width: 282px; text-align: left;">
                    <asp:Label ID="lblupd_gana" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtupd_ganna_usrnm" runat="server" Visible="False" placeholder="Email/username" Height="40px" Width="397px" ValidationGroup="gaana_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtupd_ganna_usrnm" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="gaana_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtupd_gana_pswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="gaana_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtupd_gana_pswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="gaana_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnupd_gana_ok" runat="server" Text="OK" Visible="False" OnClick="btnupd_gana_ok_Click" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="gaana_updt" />
                    <br />
                    <br />
                </td>
                <td style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 232px">
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="63px" ImageUrl="~/Images/saavan.png" Width="71px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_savan" runat="server" OnClick="btn_updt_savan_Click" Text="Update Savan" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_savan" runat="server" OnClick="btn_cls_savan_Click" Text="Delete Savan" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="auto-style3" style="width: 282px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_savan" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_svnemail" runat="server" Visible="False" placeholder="Email/username" Height="40px" Width="397px" ValidationGroup="saavan_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_updt_svnemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="saavan_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_savnpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="saavan_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_updt_savnpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="saavan_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_svnok" runat="server" OnClick="btn_updt_svnok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="saavan_updt" />
                    <br />
                    <br />
                </td>
                <td style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 232px">
                    <asp:Image ID="Image2" runat="server" Height="105px" ImageUrl="~/Images/biscoot.jpg" Width="167px" />
                    <asp:Button ID="btn_updt_biscoot" runat="server" OnClick="btn_updt_biscoot_Click" Text="Update Biscoot" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_biscoot" runat="server" OnClick="btn_cls_biscoot_Click" Text="Delete Biscoot" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="auto-style3" style="width: 282px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_bisct" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_bisctemail" runat="server" Visible="False" placeholder="Email/username" Height="40px" Width="397px" ValidationGroup="biscoot_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_updt_bisctemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="biscoot_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_bisctpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="biscoot_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_updt_bisctpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="biscoot_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_bisctok" runat="server" OnClick="btn_updt_bisctok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="biscoot_updt" />
                    <br />
                    <br />
                </td>
                <td style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 232px">
                    <asp:Image ID="Image3" runat="server" Height="81px" ImageUrl="~/Images/youtube.jpg" Width="84px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_youtube" runat="server" OnClick="btn_updt_youtube_Click" Text="Update Youtube" CausesValidation="False" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_youtube" runat="server" OnClick="btn_cls_youtube_Click" Text="Delete Youtube" Font-Size="Large" Height="39px" Width="161px" />
                </td>
                <td class="auto-style3" style="width: 282px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_youtube" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_youtubeemil" runat="server" Visible="False" placeholder="Email/username" Height="40px" Width="397px" ValidationGroup="youtube_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_updt_youtubeemil" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="youtube_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_youtubepswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="youtube_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_updt_youtubepswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="youtube_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_youtubeOK" runat="server" OnClick="btn_updt_youtubeOK_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="youtube_updt" />
                    <br />
                    <br />
                </td>
                <td style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 232px">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 282px">&nbsp;</td>
                <td style="width: 239px">&nbsp;</td>
            </tr>
        </table>
    
   </asp:Content>
