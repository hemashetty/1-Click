<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="get_social.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.get_social" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li class="current_page_item"><a href="get_social.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="social.aspx" accesskey="2" title="">Add</a></li>
				<li><a href="set_social.aspx" accesskey="3" title="">Update</a></li>
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
                <td><h1>Emails</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" rules="none" style="width: 748px">
            <tr>
                <td class="auto-style2" style="height: 109px; width: 233px">
                    <asp:ImageButton ID="btn_shw_yahoo" runat="server" Height="107px" ImageUrl="~/Images/24301.png" OnClick="btn_shw_yahoo_Click" Width="87px" />
                    <br />
                    <asp:Label ID="lbl_nm_yho" runat="server" Text="Yahoo"></asp:Label>
                </td>
                <td style="height: 109px; width: 259px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 103px; width: 233px">
                    <asp:ImageButton ID="btn_shw_gmail" runat="server" Height="76px" ImageUrl="~/Images/gmail_.png" OnClick="btn_shw_gmail_Click" Width="80px" />
                    <br />
                    <asp:Label ID="lbl_nm_gmail" runat="server" Text="Gmail"></asp:Label>
                </td>
                <td style="height: 103px; width: 259px; text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_note_nm" runat="server" Text="Label" Font-Size="Large" Visible="False"></asp:Label>
                    &nbsp;&nbsp;<asp:Label ID="lbl_note_email" runat="server" Text="Label" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_shw_email" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_shw_pswd" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 110px; width: 233px">
                    <asp:ImageButton ID="btn_shw_outlook" runat="server" Height="75px" ImageUrl="~/Images/outlook_img.jpg" OnClick="btn_shw_outlook_Click" Width="82px" />
                    <br />
                    <asp:Label ID="lbl_nm_outlook" runat="server" Text="Outlook"></asp:Label>
                </td>
                <td style="height: 110px; width: 259px">
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 154px; width: 233px">
                    &nbsp;
                    <asp:ImageButton ID="btn_shw_rediff" runat="server" Height="100px" ImageUrl="~/Images/CIRCLE_logo_mail-300x225.jpg" OnClick="btn_shw_rediff_Click" Width="133px" style="margin-right: 16px" />
                    <br />
                    <asp:Label ID="lbl_nm_redif" runat="server" Text="Reddiff"></asp:Label>
                </td>
                <td style="height: 154px; width: 259px"></td>
            </tr>
        </table>
    
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </asp:Content>