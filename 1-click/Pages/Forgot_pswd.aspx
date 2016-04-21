<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_pswd.aspx.cs" MasterPageFile="~/Pages/Forget_Password.Master" Inherits="_1_click.Pages.Forgot_pswd" %>

<asp:Content ID="frgt" ContentPlaceHolderID="forget" runat="server">
    <h1>Forget Password</h1>
    <p>&nbsp;</p>

    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="txt_frgt_pass" runat="server" Placeholder="Email" Height="40px" Width="392px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvrs" runat="server" ErrorMessage="*Please enter the email" ControlToValidate="txt_frgt_pass"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btn_frgt" runat="server" Text="Reset Password" OnClick="btn_frgt_Click" Font-Size="Large" Height="37px" Width="145px" />
    
        <br />
        <br />
        <br />
        <asp:Label ID="lbl_emsg" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
    
</asp:Content>