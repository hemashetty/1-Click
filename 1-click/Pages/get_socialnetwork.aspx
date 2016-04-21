<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="get_socialnetwork.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.get_socialnetwork" %>


<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li class="current_page_item"><a href="get_socialnetwork.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="socialnetwork.aspx" accesskey="2" title="">Add</a></li>
				<li><a href="set_socialnetwork.aspx" accesskey="3" title="">Update</a></li>
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
                <td><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SOCIAL NETWORKS</h1></td>
            </tr>
        </table>
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    
        <table class="auto-style1" rules="none" style="height: 719px">
            <tr>
                <td class="auto-style2" style="width: 257px; height: 119px;">
                    <asp:ImageButton ID="btn_shw_facebook" runat="server" Height="74px" ImageUrl="~/Images/facebook-round_318-26615.jpg" Width="75px" OnClick="btn_shw_facebook_Click" />
                    <br />
                    <asp:Label ID="lbl_nm_fb" runat="server" Text="Facebook"></asp:Label>
                </td>
                <td style="width: 676px; height: 119px;"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 257px; height: 151px;">
                    <asp:ImageButton ID="btn_shw_twitter" runat="server" Height="77px" ImageUrl="~/Images/twitter_circle_black-512.png" Width="83px" OnClick="btn_shw_twitter_Click" />
                    <br />
                    <asp:Label ID="lbl_nm_twitter" runat="server" Text="Twitter"></asp:Label>
                </td>
                <td style="width: 676px; height: 151px;">
                    <asp:Label ID="socialnet_nm" runat="server" Font-Size="Large" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lbl_note_socialnetwork" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_shw_email" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_shw_pswd" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 257px; height: 148px">
                    <asp:ImageButton ID="btn_shw_linkedin" runat="server" Height="81px" ImageUrl="~/Images/linkedin_circle_black-256.png" Width="85px" OnClick="btn_shw_linkedin_Click" />
                    <br />
                    <asp:Label ID="lbl_nm_link" runat="server" Text="LinkedIn"></asp:Label>
                </td>
                <td style="width: 676px; height: 148px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 257px">
                    <asp:ImageButton ID="btn_shw_gplus" runat="server" Height="73px" ImageUrl="~/Images/gplus-icon.png" Width="77px" OnClick="btn_shw_gplus_Click" />
                    <br />
                    <asp:Label ID="lbl_nm_gplus" runat="server" Text="Google+"></asp:Label>
                </td>
                <td style="width: 676px">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 257px; height: 135px;">
                    <asp:ImageButton ID="btn_shw_pinterest" runat="server" Height="71px" ImageUrl="~/Images/pinterest-logo-circle_318-40721.png" Width="77px" OnClick="btn_shw_pinterest_Click" />
                    <br />
                    <asp:Label ID="lbl_nm_pinterest" runat="server" Text="Pinterest"></asp:Label>
                </td>
                <td class="auto-style4" style="width: 676px; height: 135px;"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 257px; height: 138px;">
                    <asp:ImageButton ID="btn_shw_tumbler" runat="server" Height="81px" ImageUrl="~/Images/tumblr_circle_black-256.png" Width="83px" OnClick="btn_shw_tumbler_Click" />
                    <br />
                    <asp:Label ID="lbl_nm_tumblr" runat="server" Text="Tumblr"></asp:Label>
                </td>
                <td class="auto-style4" style="width: 676px; height: 138px;"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 257px; height: 130px;">
                    <asp:ImageButton ID="btn_shw_fliker" runat="server" Height="73px" ImageUrl="~/Images/images.jpg" OnClick="btn_shw_fliker_Click" Width="74px" />
                    <br />
                    <asp:Label ID="lbl_nm_flikr" runat="server" Text="Flickr"></asp:Label>
                </td>
                <td class="auto-style4" style="width: 676px; height: 130px;"></td>
            </tr>
        </table>
    
    
        </asp:Content>