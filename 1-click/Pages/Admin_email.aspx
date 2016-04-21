<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_email.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.Admin_email" %>

 <asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
     <ul>
				<li ><a href="Admin_detail.aspx" accesskey="1" title="">Admin Detail</a></li>
				<li class="current_page_item"><a href="Admin_email.aspx" accesskey="2" title="">Admin Email</a></li>
				<li ><a href="Admin_setting.aspx" accesskey="3" title="">Setting</a></li>
				
				<li><a href="Admin_logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
    <asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Admin" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <table class="auto-style1" style="height: 533px; width: 733px">
            <tr>
                <td class="auto-style2" style="width: 125px">
                    &nbsp;</td>
                <td class="box1" style="width: 508px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Email To User"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 125px">
                    <asp:Label ID="lbl_subjct" runat="server" Text="Subject:"></asp:Label>
                </td>
                <td class="box1" style="width: 508px; text-align: left">
                    <asp:TextBox ID="txt_subject" runat="server" Height="34px" Width="560px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_subject" ErrorMessage="*Please enter subject" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 125px">Body:</td>
                <td class="box1" style="width: 508px; text-align: left">
                    <asp:TextBox ID="txt_email_body" runat="server" Height="281px" Width="564px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_email_body" ErrorMessage="*Please enter detail" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 125px"></td>
                <td class="box1" style="width: 508px">
                    <asp:Button ID="btn_sendmail" runat="server" OnClick="btn_sendmail_Click" Text="Send Email" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </asp:Content>