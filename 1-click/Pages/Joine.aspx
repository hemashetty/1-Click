<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Joine.aspx.cs" MasterPageFile="~/Pages/Registration.Master" Inherits="_1_click.Pages.Joine" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>


<asp:Content ID="jnmn" ContentPlaceHolderID="menu" runat="server">
    <ul>
				<li ><a href="Home.aspx" accesskey="1" title="">Homepage</a></li>
				<li class="current_page_item"><a href="joine.aspx" accesskey="2" title="">Register</a></li>
				<li ><a href="login.aspx" accesskey="3" title="">Login</a></li>
				<li><a href="help.aspx" accesskey="4" title="">Help</a></li>
				<li><a href="contact_us.aspx" accesskey="5" title="">Contact Us</a></li>
			</ul>
</asp:Content>

<asp:Content ID="jnhd" ContentPlaceHolderID="headerr" runat="server">

<h1> 
    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/Images/join-icon.png" Width="120px" />
    </h1>
    <h1 class="auto-style11"> JOIN</h1>
    <p style="text-align: left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>

</asp:Content>
<asp:Content ID="jn" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
      .VeryPoor
       {
         background-color:red;
         }
          .Weak
        {
         background-color:orange;
         }
          .Average
         {
          background-color: #A52A2A
         }
          .Excellent
         {
         background-color:yellow;
         }
          .Strong
         {
         background-color:green;
         }
          .border
         {
          border: medium solid #800000;
          width:500px;                
         }
      </style>
    <style type="text/css">
        
        .auto-style3 {
            text-align: center;
            width: 1193px;
            height: 44px;
        }
        .auto-style4 {
            text-align: left;
            width: 1193px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style9 {
            text-align: justify;
        }
        .auto-style10 {
            text-align: center;
            width: 1193px;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>

        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style3">
                    <strong>
                    <br />
                    </strong>
                    <Ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </Ajax:ToolkitScriptManager>
                    <br />
                    &nbsp; <asp:TextBox ID="txt_Email" runat="server"  Width="392px" Height="40px"></asp:TextBox>
                    <Ajax:TextBoxWatermarkExtender ID="txt_Email_TextBoxWatermarkExtender" runat="server" TargetControlID="txt_Email" WatermarkText="Email">
                    </Ajax:TextBoxWatermarkExtender>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Email" ErrorMessage="*Please enter the email address" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;<asp:RegularExpressionValidator ID="exp_email" runat="server" ControlToValidate="txt_Email" ErrorMessage="*Please enter correct email address" ForeColor="#33CCFF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;
                    <asp:TextBox ID="txt_Uname" runat="server" Width="392px" Height="40px"></asp:TextBox>
                    <Ajax:TextBoxWatermarkExtender ID="txt_Uname_TextBoxWatermarkExtender" runat="server" TargetControlID="txt_Uname" WatermarkText="Username">
                    </Ajax:TextBoxWatermarkExtender>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="exp_unm" runat="server" ControlToValidate="txt_Uname" ErrorMessage="*Please enter the username" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;
                    <asp:TextBox ID="txt_Password" runat="server"  Width="392px" Placeholder="Password" TextMode="Password" Height="40px"></asp:TextBox>
                  
                    <Ajax:PasswordStrength ID="txt_Password_PasswordStrength" runat="server"  DisplayPosition="RightSide" StrengthIndicatorType="BarIndicator"
                         TargetControlID="txt_Password" PrefixText="Stength:" Enabled="true" RequiresUpperAndLowerCaseCharacters="true" MinimumLowerCaseCharacters="1"
 MinimumUpperCaseCharacters="1" MinimumSymbolCharacters="1"
MinimumNumericCharacters="1" PreferredPasswordLength="10"
 TextStrengthDescriptions="VeryPoor; Weak; Average; Strong; Excellent"
StrengthStyles="VeryPoor; Weak; Average; Excellent; Strong;"
 CalculationWeightings="25;25;15;35" BarBorderCssClass="border">
                    </Ajax:PasswordStrength>

                     <Ajax:PasswordStrength ID="PasswordStrength2" runat="server"
DisplayPosition="BelowLeft" StrengthIndicatorType="Text"
 TargetControlID="txt_Password" PrefixText="Stength:" Enabled="true"
RequiresUpperAndLowerCaseCharacters="true" MinimumLowerCaseCharacters="1"
 MinimumUpperCaseCharacters="1" MinimumSymbolCharacters="1"
MinimumNumericCharacters="1" PreferredPasswordLength="10"
 TextStrengthDescriptions="VeryPoor; Weak; Average; Strong; Excellent"
BarBorderCssClass="border">
         </Ajax:PasswordStrength>
                    <br />
                    <br />
                   
                    <asp:RequiredFieldValidator ID="exp_pass" runat="server" ControlToValidate="txt_Password" ErrorMessage="*Please enter the password" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;
                    <asp:TextBox ID="txt_cnfrmpassword" runat="server" Width="392px" Placeholder="Confirm Password" TextMode="Password" Height="40px"></asp:TextBox>
                  
                    <br />
                  
                    <asp:RequiredFieldValidator ID="exp_cnfpass" runat="server" ControlToValidate="txt_cnfrmpassword" ErrorMessage="*Please enter the confirm password" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="cmp_cnfpas" runat="server" ControlToCompare="txt_Password" ControlToValidate="txt_cnfrmpassword" ErrorMessage="*Password does not match" ForeColor="#33CCFF"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;
                    <asp:TextBox ID="txt_mobno" runat="server" Width="392px" Height="40px"></asp:TextBox>
                    <Ajax:TextBoxWatermarkExtender ID="txt_mobno_TextBoxWatermarkExtender" runat="server" TargetControlID="txt_mobno" WatermarkText="Mobile Number">
                    </Ajax:TextBoxWatermarkExtender>
                    <br />
                    <asp:RequiredFieldValidator ID="exp_mob" runat="server" ControlToValidate="txt_mobno" ErrorMessage="*Please enter the mobile no" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <div class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="auto-style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <center>
                    <recaptcha:RecaptchaControl ID="recaptcha" runat="server"
    PublicKey="6LcmlvoSAAAAALg_MmfTsSKPpKMAMnRlmVzD4lJz"
    PrivateKey="6LcmlvoSAAAAAP49VzXARM24Ug1f-7lkrz5aZAQf"/>
                                </center>
                        </div>
                    </div>
                    <br />
                   </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1-click %>" SelectCommand="SELECT * FROM [click_tb]"></asp:SqlDataSource>
                    &nbsp;<asp:Button ID="btn_join" runat="server" Text="Join" OnClick="btn_join_Click" Font-Size="Large" Height="37px" Width="84px" />
                </td>
            </tr>
        </table>
   
</asp:Content>