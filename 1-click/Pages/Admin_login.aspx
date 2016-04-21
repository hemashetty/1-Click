<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" MasterPageFile="~/Pages/Registration.Master" Inherits="_1_click.Pages.Admin_login" %>

<asp:Content ID="mn" ContentPlaceHolderID="menu" runat="server">
    
</asp:Content>

<asp:Content ID="hd" ContentPlaceHolderID="headerr" runat="server">

<h1 style="text-align: center">ADMIN LOGIN</h1>

</asp:Content>
<asp:Content ID="admin" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="width: 388px">&nbsp;</td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 388px">
        <asp:Label ID="lbl_use_admin" runat="server" Text="Username:"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtusernm" runat="server" Height="40px" Width="392px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusernm" ErrorMessage="*Please enter username" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 388px">
        <asp:Label ID="lbl_paswd" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtpswd" runat="server" TextMode="Password" Height="40px" Width="392px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 388px">&nbsp;</td>
                <td class="auto-style3" style="text-align: left">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="btn_admin_login" runat="server" OnClick="btn_admin_login_Click" Text="LOGIN" Font-Size="Large" Height="42px" Width="83px" />
    
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 388px">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lbl_notice" runat="server" Text="Label" Visible="False"></asp:Label>
    
        <br />
&nbsp;
        <br />
&nbsp;
        <br />
    
        <br />
        <br />
    </asp:Content>
  