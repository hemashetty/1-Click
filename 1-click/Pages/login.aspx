<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" MasterPageFile="~/Pages/Registration.Master" Inherits="_1_click.Pages.login" %>


<asp:Content ID="mn" ContentPlaceHolderID="menu" runat="server">
    <ul>
				<li ><a href="Home.aspx" accesskey="1" title="">Homepage</a></li>
				<li><a href="joine.aspx" accesskey="2" title="">Register</a></li>
				<li class="current_page_item"><a href="login.aspx" accesskey="3" title="">Login</a></li>
				<li><a href="help.aspx" accesskey="4" title="">Help</a></li>
				<li><a href="contact_us.aspx" accesskey="5" title="">Contact Us</a></li>
			</ul>
</asp:Content>

<asp:Content ID="hd" ContentPlaceHolderID="headerr" runat="server">

<h1 style="text-align: center"> LOGIN</h1>

</asp:Content>
<asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <table class="auto-style1" style="width: 1195px">
            <tr>
                <td>
                    <br />
                    &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_uname" runat="server" placeholder="Username" Width="392px" Height="40px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="lgn_unm" runat="server" ControlToValidate="txt_uname" ErrorMessage="*Please enter the username" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_pass" runat="server" placeholder="Password" Width="392px" TextMode="Password" Height="40px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="lgn_pass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*Please enter the Password" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" Height="37px" Width="84px" Font-Size="Large" />
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066FF" NavigateUrl="~/Pages/Forgot_pswd.aspx">Forgot Password?</asp:HyperLink>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </asp:Content>
