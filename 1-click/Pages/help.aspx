<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/Registration.Master" CodeBehind="help.aspx.cs" Inherits="_1_click.Pages.help" %>

<asp:Content ID="mn" ContentPlaceHolderID="menu" runat="server">
    <ul>
				<li ><a href="Home.aspx" accesskey="1" title="">Homepage</a></li>
				<li><a href="joine.aspx" accesskey="2" title="">Register</a></li>
				<li ><a href="login.aspx" accesskey="3" title="">Login</a></li>
				<li class="current_page_item"><a href="help.aspx" accesskey="4" title="">Help</a></li>
				<li><a href="contact_us.aspx" accesskey="5" title="">Contact Us</a></li>
			</ul>
</asp:Content>
<asp:Content ID="hd" ContentPlaceHolderID="headerr" runat="server">

<h1 style="text-align: center"> HELP</h1>

</asp:Content>
<asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p style="text-align: left">
        You need to following steps for using this applications.</p>
    <p style="text-align: left">
        1.Creat account in 1-Click
    </p>
    <p style="text-align: left">
        2.Get login to use its services.</p>
    <p style="text-align: left">
        3.You can save,update and delete the username,email and password into it.</p>
    <p style="text-align: left">
        4.Whensoever you need to access it, you do get it globally.</p>
    <p style="text-align: left">
        5.For security purpose get logout.</p>

</asp:Content>