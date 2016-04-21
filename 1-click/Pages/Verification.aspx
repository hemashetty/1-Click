<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" MasterPageFile="~/Pages/Registration.Master" Inherits="_1_click.Pages.Verification" %>


    <asp:Content ID="mn" ContentPlaceHolderID="menu" runat="server">
 
</asp:Content>

<asp:Content ID="hd" ContentPlaceHolderID="headerr" runat="server">

<h1 style="text-align: center"> VERIFICATION</h1>
    <p style="text-align: center"> &nbsp;</p>

</asp:Content>
<asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <asp:TextBox ID="txt_verification" runat="server" Height="40px" Width="392px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_verification" runat="server" Font-Size="Large" Height="37px" Text="Verify Code" Width="120px" OnClick="btn_verification_Click" />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_verification" ErrorMessage="*Verfication code is required." Font-Size="Large" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
    
        <br />
        <asp:Label ID="lbl_vericode" runat="server" Text="Label" Visible="False"></asp:Label>
    
   </asp:Content>