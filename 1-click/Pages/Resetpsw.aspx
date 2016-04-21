<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetpsw.aspx.cs" MasterPageFile="~/Pages/Forget_Password.Master" Inherits="_1_click.Pages.Resetpsw" %>

<asp:Content ID="frgt" ContentPlaceHolderID="forget" runat="server">
    <h1>Forget Password</h1>
    <p>&nbsp;</p>
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="txtpswd" runat="server" placeholder="Password" Width="392px" Height="40px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rgvpsw" runat="server" ControlToValidate="txtcfpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcfpswd" runat="server" placeholder="Confirm Password" Width="392px" Height="40px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvcpsw" runat="server" ControlToValidate="txtcfpswd" ErrorMessage="*Please enter the confirm password field" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpswd" ControlToValidate="txtcfpswd" ErrorMessage="*Password does not match" ForeColor="#33CCFF"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btnpsw" runat="server" Text="Change password" OnClick="btnpsw_Click" Font-Size="Large" Height="37px" />
    
        <br />
        <asp:Label ID="lbljid" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
   
</asp:Content>