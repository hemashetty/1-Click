<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_socialnetwork.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.set_socialnetwork" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_socialnetwork.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="socialnetwork.aspx" accesskey="2" title="">Add</a></li>
				<li class="current_page_item"><a href="set_socialnetwork.aspx" accesskey="3" title="">Update</a></li>
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
                <td><h1>SOCIAL NETWORKS</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" frame="void" rules="rows">
            <tr>
                <td class="auto-style2" style="width: 589px">
                    <asp:Image ID="img_fb" runat="server" Height="76px" ImageUrl="~/Images/facebook-round_318-26615.jpg" Width="84px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_fb" runat="server" OnClick="btn_updt_fb_Click" Text="Update Facebook" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_fb" runat="server" OnClick="btn_cls_fb_Click" Text="Delete Facebook" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                </td>
                <td class="auto-style3" style="width: 314px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_fb" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_fbemail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="fb_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_updt_fbemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="fb_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_fbpswd" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Password" ValidationGroup="fb_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_updt_fbpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="fb_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_fbok" runat="server" OnClick="btn_updt_fbok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="86px" ValidationGroup="fb_set" />
                    <br />
                </td>
                <td class="box1" style="width: 307px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 589px">
                    <asp:Image ID="img_twit" runat="server" Height="80px" ImageUrl="~/Images/twitter_circle_black-512.png" Width="91px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_twit" runat="server" OnClick="btn_updt_twit_Click" Text="Update Twitter" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_twit" runat="server" OnClick="btn_cls_twit_Click" Text="Delete Twitter" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                </td>
                <td class="auto-style3" style="width: 314px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_twit" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_twitemail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="twet_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_updt_twitemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="twet_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_twtpswd" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Password" ValidationGroup="twet_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_updt_twtpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="twet_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_twitok" runat="server" OnClick="btn_twitok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="86px" ValidationGroup="twet_set" />
                    <br />
                </td>
                <td class="box1" style="width: 307px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 589px">
                    <asp:Image ID="img_link" runat="server" Height="92px" ImageUrl="~/Images/linkedin_circle_black-256.png" Width="96px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_link" runat="server" OnClick="btn_updt_link_Click" Text="Update LinkedIn" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_link" runat="server" OnClick="btn_cls_link_Click" Text="Delete LinkedIn" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                </td>
                <td class="auto-style3" style="width: 314px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_link" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_linkemail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="link_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_updt_linkemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="link_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_linkpswd" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Password" ValidationGroup="link_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_updt_linkpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="link_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_linkOk" runat="server" OnClick="btn_updt_linkOk_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="86px" ValidationGroup="link_set" />
                    <br />
                </td>
                <td class="box1" style="width: 307px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 589px">
                    <asp:Image ID="img_updt_gplus" runat="server" Height="79px" ImageUrl="~/Images/gplus-icon.png" Width="89px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_gplus" runat="server" OnClick="btn_updt_gplus_Click" Text="Update G+" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_gpls" runat="server" OnClick="btn_cls_gpls_Click" Text="Delete G+" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                </td>
                <td class="auto-style3" style="width: 314px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_gplus" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_gplusemail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="gplus_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_updt_gplusemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="gplus_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_gpluspswd" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Password" ValidationGroup="gplus_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_updt_gpluspswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="gplus_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_gok" runat="server" OnClick="btn_updt_gok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="86px" ValidationGroup="gplus_set" />
                    <br />
                </td>
                <td class="box1" style="width: 307px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 589px">
                    <asp:Image ID="img_updt_pinterst" runat="server" Height="79px" ImageUrl="~/Images/pinterest-logo-circle_318-40721.png" Width="85px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_pinterest" runat="server" OnClick="btn_updt_pinterest_Click" Text="Update Pinterest" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_pin" runat="server" OnClick="btn_cls_pin_Click" Text="Delete Pinterest" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                </td>
                <td class="auto-style3" style="width: 314px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_pint" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_pinemail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="pin_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_updt_pinemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="pin_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_pinpswd" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Password" ValidationGroup="pin_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_updt_pinpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="pin_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_pint" runat="server" OnClick="btn_updt_pint_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="86px" ValidationGroup="pin_set" />
                    <br />
                </td>
                <td class="box1" style="width: 307px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 589px">
                    <asp:Image ID="img_tumblr" runat="server" Height="93px" ImageUrl="~/Images/tumblr_circle_black-256.png" Width="96px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_tumblr" runat="server" OnClick="btn_updt_tumblr_Click" Text="Update Tumbler" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_tumblr" runat="server" OnClick="btn_cls_tumblr_Click" Text="Delete Tumbler" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                </td>
                <td class="auto-style3" style="width: 314px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_tumblr" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_tumblremail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="tumblr_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txt_updt_tumblremail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="tumblr_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_tumblrpswd" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Password" ValidationGroup="tumblr_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txt_updt_tumblrpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="tumblr_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_tumblrok" runat="server" OnClick="btn_updt_tumblrok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="86px" ValidationGroup="tumblr_set" />
                    <br />
                </td>
                <td class="box1" style="width: 307px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 589px">
                    <asp:Image ID="img_updt_fliker" runat="server" Height="86px" ImageUrl="~/Images/images.jpg" Width="87px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_fliker" runat="server" OnClick="btn_updt_fliker_Click" Text="Update Fliker" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_flikr" runat="server" OnClick="btn_cls_flikr_Click" Text="Delete Fliker" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                </td>
                <td class="auto-style3" style="width: 314px; text-align: left;">
                    <br />
                    <br />
                    <asp:Label ID="lbl_updt_flikr" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_flikremail" runat="server" Visible="False" placeholder="Email/Username" Height="40px" Width="397px" ValidationGroup="flik_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txt_updt_flikremail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="flik_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_flikrpswd" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Password" ValidationGroup="flik_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txt_updt_flikrpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="flik_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_flikrOK" runat="server" OnClick="btn_updt_flikrOK_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="86px" ValidationGroup="flik_set" />
                </td>
                <td class="box1" style="width: 307px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </asp:Content>