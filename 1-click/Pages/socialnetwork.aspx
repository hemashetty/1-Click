<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="socialnetwork.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.socialnetwork" %>
<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_socialnetwork.aspx" accesskey="1" title="">Detail</a></li>
				<li class="current_page_item" ><a href="socialnetwork.aspx" accesskey="2" title="">Add</a></li>
				<li ><a href="set_socialnetwork.aspx" accesskey="3" title="">Update</a></li>
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
                <td><h1>SOCIAL NETWORKS</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" style="height: 493px" rules="rows">
            <tr>
                <td class="auto-style2" style="width: 147px; height: 167px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="74px" ImageUrl="~/Images/facebook-round_318-26615.jpg" Width="75px" OnClick="ImageButton1_Click" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Facebook"></asp:Label>
                    <asp:Button ID="btn_add_fb" runat="server" OnClick="btn_add_fb_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false" />
                </td>
                <td class="boxA" style="width: 501px; text-align: left; height: 167px;">
                    <asp:Label ID="lbl_note_fb" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtfacemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="fb_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfacemail" ErrorMessage="*Please enter username/email." ForeColor="#33CCFF" ValidationGroup="fb_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtfacpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="fb_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfacpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="fb_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btnface" runat="server" OnClick="btnface_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="fb_add" />
                    &nbsp;<asp:Button ID="btn_cancel_fb" runat="server" OnClick="btn_cancel_fb_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 147px; height: 177px;">
                    <asp:ImageButton ID="imgtweet" runat="server" Height="83px" ImageUrl="~/Images/twitter_circle_black-512.png" OnClick="imgtweet_Click" Width="88px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Twitter"></asp:Label>
                    <br />
                    <asp:Button ID="btn_twt_add" runat="server" OnClick="btn_twt_add_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false" />
                </td>
                <td class="boxA" style="width: 501px; text-align: left; height: 177px;">
                    <br />
                    <asp:Label ID="lbl_note_tweet" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtweetemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="twet_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtweetemail" ErrorMessage="*Please enter username/email." ForeColor="#33CCFF" ValidationGroup="twet_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtweetpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="twet_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtweetpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="twet_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btntweet" runat="server" OnClick="btntweet_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="twet_add" />
                    &nbsp;<asp:Button ID="btn_cancel_tweet" runat="server" OnClick="btn_cancel_tweet_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 147px">
                    <asp:ImageButton ID="imglink" runat="server" Height="81px" ImageUrl="~/Images/linkedin_circle_black-256.png" OnClick="imglink_Click" Width="85px" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="LinkedIn"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_linkedin" runat="server" OnClick="btn_add_linkedin_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td class="boxA" style="width: 501px; text-align: left">
                    <br />
                    <asp:Label ID="lbl_note_linked" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtlinemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="linked_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlinemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="linked_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtlinpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="linked_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtlinpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="linked_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btnlink" runat="server" OnClick="btnlink_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="linked_add" />
                    &nbsp;<asp:Button ID="btn_cancel__linked" runat="server" OnClick="btn_cancel__linked_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 147px">
                    <asp:ImageButton ID="imggplus" runat="server" Height="73px" ImageUrl="~/Images/gplus-icon.png" OnClick="imggplus_Click" Width="77px" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Google+"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_gplus" runat="server" OnClick="btn_add_gplus_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td class="boxA" style="width: 501px; text-align: left">
                    <br />
                    <asp:Label ID="lbl_note_gplus" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtgplsemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="gplus_add" ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtgplsemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="gplus_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtgplspswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="gplus_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtgplspswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="gplus_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btngplus" runat="server" OnClick="btngplus_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="gplus_add" />
                    &nbsp;<asp:Button ID="btn_cancel_gplus" runat="server" OnClick="btn_cancel_gplus_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 147px">
                    <asp:ImageButton ID="imgpint" runat="server" Height="71px" ImageUrl="~/Images/pinterest-logo-circle_318-40721.png" OnClick="imgpint_Click" Width="77px" />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Pinterest"></asp:Label>
                    <asp:Button ID="btn_add_pinterest" runat="server" OnClick="btn_add_pinterest_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false" />
                </td>
                <td class="boxA" style="width: 501px; text-align: left">
                    <br />
                    <asp:Label ID="lbl_note_pinterest" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtpinemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="pin_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpinemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="pin_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtpinpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="pin_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpinpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="pin_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btnpin" runat="server" OnClick="btnpin_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="pin_add" />
                    &nbsp;<asp:Button ID="btn_cancel_pinterest" runat="server" OnClick="btn_cancel_pinterest_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 147px">
                    <asp:ImageButton ID="imgtumblr" runat="server" Height="81px" ImageUrl="~/Images/tumblr_circle_black-256.png" OnClick="imgtumblr_Click" Width="83px" />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Tumblr"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_tumblr" runat="server" OnClick="btn_add_tumblr_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td class="boxA" style="width: 501px; text-align: left">
                    <br />
                    <asp:Label ID="lbl_note_tumblr" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtumbemil" runat="server" Placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="tumblr_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtumbemil" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="tumblr_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtumbpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="tumblr_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtumbpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="tumblr_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btntublr" runat="server" OnClick="btntublr_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="tumblr_add" />
                    &nbsp;<asp:Button ID="btn_cancel_tumblr" runat="server" OnClick="btn_cancel_tumblr_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 147px">
                    <asp:ImageButton ID="imgflickr" runat="server" Height="73px" ImageUrl="~/Images/images.jpg" OnClick="imgflickr_Click" Width="74px" />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Flikr"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_fliker" runat="server" OnClick="btn_add_fliker_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false" ForeColor="Black"/>
                </td>
                <td class="boxA" style="width: 501px; text-align: left">
                    <br />
                    <asp:Label ID="lbl_note_flickr" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtflicemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="flikr_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtflicemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="flikr_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtflicpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="flikr_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtflicpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="flikr_add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btnflickr" runat="server" OnClick="btnflickr_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="flikr_add" />
                    &nbsp;<asp:Button ID="btn_cancel_flikr" runat="server" OnClick="btn_cancel_flikr_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                </td>
            </tr>
        </table>
    
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
   </asp:Content>