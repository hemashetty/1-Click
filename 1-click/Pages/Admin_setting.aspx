<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_setting.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.Admin_setting" %>

 <asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
     <ul>
				<li><a href="Admin_detail.aspx" accesskey="1" title="">Admin Detail</a></li>
				<li><a href="Admin_email.aspx" accesskey="2" title="">Admin Email</a></li>
				<li  class="current_page_item"><a href="Admin_setting.aspx" accesskey="3" title="">Setting</a></li>
				
				<li><a href="Admin_logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
    <asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Admin" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Admin Setting" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="width: 226px">Username:<br />
                </td>
                <td style="width: 668px; text-align: left">
                    <asp:Label ID="lbl_usernm" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 226px">
                    &nbsp;</td>
                <td style="width: 668px; text-align: left">
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Change Username"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 226px">
                    <asp:Label ID="lblusernm" runat="server" Text="Enter new username:"></asp:Label>
                </td>
                <td style="width: 668px; text-align: left">
                    <asp:TextBox ID="txt_chng_usenm" runat="server" Height="24px" Width="214px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_chng_usenm" ErrorMessage="*Please enter username" ValidationGroup="chg_user"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lbl_chnum_note" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 226px">&nbsp;</td>
                <td style="width: 668px; text-align: left">
                    <asp:Button ID="updt_usenm" runat="server" OnClick="updt_usenm_Click" Text="Update Username" ValidationGroup="chg_user" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 226px">
                    &nbsp;</td>
                <td class="auto-style6" style="width: 668px; text-align: left">
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Change Password"></asp:Label>
                    <br />
                    <asp:Label ID="lbl_chnpswd_note" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 226px">
                    <asp:Label ID="lblcrtpswd" runat="server" Text="Current Password"></asp:Label>
                </td>
                <td class="auto-style6" style="width: 668px; text-align: left">
                    <asp:TextBox ID="txt_crnt_pswd" runat="server" Height="24px" Width="214px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_crnt_pswd" ErrorMessage="*Please enter password" ValidationGroup="chng_pswd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 226px">
                    <asp:Label ID="lblnwpswd" runat="server" Text="New Password"></asp:Label>
                </td>
                <td style="width: 668px; text-align: left">
                    <asp:TextBox ID="txt_new_pswd" runat="server" Height="24px" Width="214px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_new_pswd" ErrorMessage="*Please enter new password" ValidationGroup="chng_pswd"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 226px">
                    <asp:Label ID="lblcfmpswd" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td style="width: 668px; text-align: left">
                    <asp:TextBox ID="txt_cnfrm_pswd" runat="server" Height="24px" Width="214px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Please enter confirm password" ValidationGroup="chng_pswd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_new_pswd" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Password does not match" ValidationGroup="chng_pswd"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 226px"></td>
                <td class="auto-style4" style="width: 668px; text-align: left">
                    <br />
                    <asp:Button ID="btn_updt_pswd" runat="server" OnClick="btn_updt_pswd_Click" Text="Update Password" ValidationGroup="chng_pswd" />
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
        <br />
        <br />
        <br />
    
    </div>
    

</asp:Content>