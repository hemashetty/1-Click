<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_logout.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.Admin_logout" %>

 <asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
     <ul>
				<li ><a href="Admin_detail.aspx" accesskey="1" title="">Admin Detail</a></li>
				<li ><a href="Admin_email.aspx" accesskey="2" title="">Admin Email</a></li>
				<li ><a href="Admin_setting.aspx" accesskey="3" title="">Setting</a></li>
				
				<li class="current_page_item"><a href="Admin_logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
    <asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Admin" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        For security purpose, Please get log out when not using this site.<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Font-Size="Medium" Height="36px" Width="72px" />
    
   
        <br />
        <br />
        <br />
    
   
</asp:Content>