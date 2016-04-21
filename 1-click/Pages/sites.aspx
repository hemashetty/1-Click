<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sites.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.sites" %>
<asp:Content ID="sitemenu" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="Account.aspx" accesskey="1" title="">Profile</a></li>
				<li class="current_page_item"><a href="sites.aspx" accesskey="2" title="">Sites</a></li>
				<li><a href="History.aspx" accesskey="3" title="">History</a></li>
				
				<li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
<asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
    <asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <br />
        <table style="width: 100%">
            <tr>
                <td><h1>SITES</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" style="height: 215px; width: 717px">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 151px">
                    <asp:ImageButton ID="img_social_site" runat="server" Height="90px" ImageUrl="~/Images/social.jpg"  Width="112px" OnClick="img_social_site_Click" />
                    <br />
                    <asp:Label ID="lbl_social_name" runat="server" Text="Social Networking"></asp:Label>
                </td>
                <td class="auto-style3" style="height: 151px">
                    <asp:ImageButton ID="img_email_site" runat="server" ImageUrl="~/Images/email-14-512.jpg" Width="97px" OnClick="img_email_site_Click" />
                    <br />
&nbsp;<asp:Label ID="lbl_email_name" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style6" style="height: 151px">
                    <asp:ImageButton ID="img_travel_site" runat="server" ImageUrl="~/Images/travel.jpg" Width="97px" OnClick="img_travel_site_Click" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_travel_name" runat="server" Text="Travelling"></asp:Label>
                </td>
                <td class="auto-style5" style="height: 151px">
                    <asp:ImageButton ID="img_shop_site" runat="server" Height="97px" ImageUrl="~/Images/shope.jpg" Width="97px" OnClick="img_shop_site_Click" />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_shop_name" runat="server" Text="Shopping"></asp:Label>
                </td>
                <td style="height: 151px">
                    <asp:ImageButton ID="img_site_radio" runat="server" ImageUrl="~/Images/radio_icon_660px.png" Width="97px" OnClick="img_site_radio_Click" />
                    <br />
&nbsp;
                    <asp:Label ID="lbl_radio_name" runat="server" Text="Entertainment"></asp:Label>
                </td>
            </tr>
        </table>
    
    
</asp:Content>