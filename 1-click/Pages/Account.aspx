<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.Account" %>


<asp:Content ID="prfmnu" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
                <li><a href="Home.aspx" accesskey="4" title="">Home</a></li>
				<li class="current_page_item"><a href="Account.aspx" accesskey="1" title="">Profile</a></li>
				<li><a href="sites.aspx" accesskey="2" title="">Sites</a></li>
				
				
				<li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>


<asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="prfdt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <br />
        <table style="width: 100%">
            <tr>
                <td><h1>PROFILE</h1></td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;<table class="auto-style1" rules="rows">
            <tr>
                <td class="auto-style2" style="font-size: large; color: #000000; height: 64px; width: 346px; text-align: center;">Username:</td>
                <td style="width: 544px; text-align: justify; height: 64px">
                    <asp:Label ID="lblusername" runat="server" Text="Label" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #000000; font-size: large; height: 10px; width: 346px; text-align: justify;">Email Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnemailedit" runat="server" OnClick="btnemailedit_Click" Text="Edit" Font-Size="Large" Height="37px" Width="53px" CausesValidation="false" />
                </td>
                <td style="width: 544px; text-align: justify; height: 10px">
                    <br />
                    <asp:Label ID="lblemail" runat="server" Text="Label" Font-Size="Large"></asp:Label>
&nbsp;<br />
                    <asp:TextBox ID="txtchangemail" runat="server" Visible="False" placeholder="Email" Height="40px" Width="392px" ValidationGroup="acc_email"></asp:TextBox>
                    
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtchangemail" ErrorMessage="*Please enter the correct email." ForeColor="#33CCFF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="acc_email"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtchangemail" ErrorMessage="*Please enter email." ForeColor="#33CCFF" ValidationGroup="acc_email"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnok" runat="server" OnClick="btnok_Click" Text="OK" Visible="False" Font-Size="Large" Height="37px" Width="54px" ValidationGroup="acc_email" />
                    &nbsp;
                    <asp:Button ID="btn_cancel" runat="server" Font-Size="Large" Height="35px" OnClick="btn_cancel_Click" Text="Cancel" Visible="False" Width="94px" CausesValidation="false" />
                    <asp:Label ID="lblemailchanged" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: large; width: 346px; text-align: justify;">Change Password:
                    <asp:Button ID="btnchangepswd" runat="server" OnClick="btnchangepswd_Click" Text="Edit" Font-Size="Large" Height="43px" Width="60px" CausesValidation="false" />
                    </td>
                <td style="width: 544px; text-align: justify">
                    <br />
                    <br />
                    <asp:TextBox ID="txtcurrentpswd" runat="server" Visible="False" Height="40px" placeholder="Current Password" Width="397px" TextMode="Password" ValidationGroup="ch_pswd"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcurrentpswd" ErrorMessage="*Please enter current password" ForeColor="#33CCFF" ValidationGroup="ch_pswd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtchngpswd" runat="server" Visible="False" Height="40px" placeholder="New Password" Width="397px" TextMode="Password" ValidationGroup="ch_pswd"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtchngpswd" ErrorMessage="*Please enter the password" ForeColor="#33CCFF" ValidationGroup="ch_pswd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtchngpswd" ControlToValidate="txtcnfrmpswd" ErrorMessage="*Password does not match." CssClass="*Password does not match." ForeColor="#33CCFF" ValidationGroup="ch_pswd"></asp:CompareValidator>
                    <br />
                    <asp:TextBox ID="txtcnfrmpswd" runat="server" Visible="False" Height="40px" placeholder="Confirm Password" Width="397px" TextMode="Password" ValidationGroup="ch_pswd"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcnfrmpswd" ErrorMessage="*Please enter confirm password" ForeColor="#33CCFF" ValidationGroup="ch_pswd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblpswdchng" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:Button ID="btncngpswd" runat="server" OnClick="btncngpswd_Click" Text="OK" Visible="False" Font-Size="Large" Height="37px" Width="58px" ValidationGroup="ch_pswd" />
                &nbsp;<asp:Button ID="btn_psw_cancel" runat="server" Font-Size="Large" Height="37px" Text="Cancel" Width="92px" Visible="False" CausesValidation="false" OnClick="btn_psw_cancel_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: large; height: 58px; width: 346px; text-align: justify;">Close Account:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Close" OnClick="Button1_Click" Font-Size="Large" Height="37px" />
                </td>
                <td style="width: 544px; text-align: justify; height: 58px">
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
   
</asp:Content>