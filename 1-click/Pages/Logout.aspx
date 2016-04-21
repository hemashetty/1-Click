<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.Logout" %>

<asp:Content ID="logmnu" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li><a href="Account.aspx" accesskey="1" title="">Profile</a></li>
				<li><a href="get_social.aspx" accesskey="2" title="">Sites</a></li>
				<li><a href="History.aspx" accesskey="3" title="">History</a></li>
				<li><a href="social" accesskey="4" title="">Settings</a></li>
				<li class="current_page_item"><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
<asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="prfdt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        For Security Purpose, Please logout.<br />
        <asp:Button ID="btn_logout" runat="server" OnClick="btn_logout_Click" Text="Log Out" />
    
    </div>
  
    </asp:Content>