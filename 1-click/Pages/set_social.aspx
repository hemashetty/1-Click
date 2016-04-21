<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_social.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.set_social" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_social.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="social.aspx" accesskey="2" title="">Add</a></li>
				<li class="current_page_item"><a href="set_social.aspx" accesskey="3" title="">Update</a></li>
				<li><a href="sites.aspx" accesskey="4" title="">Sites</a></li>
				<li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
<asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
    <asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <table style="width: 100%">
            <tr>
                <td><h1>Emails</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" rules="rows" style="height: 1025px">
            <tr>
                <td class="boxA" style="width: 672px">
                    <asp:Image ID="img_updt_yho" runat="server" Height="101px" ImageUrl="~/Images/24301.png" Width="94px" />
                    <br />
                    <asp:Button ID="btn_updt_yahoo" runat="server" OnClick="btn_updt_yahoo_Click" Text="Update Yahoo" CausesValidation="false" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_yho" runat="server" OnClick="btn_cls_yho_Click" Text="Delete Yahoo" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                </td>
                <td class="auto-style3" style="width: 304px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_yaho" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_updt_yahoemail" runat="server" Visible="False" Height="40px" placeholder="Email address" Width="397px" ValidationGroup="yaho_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_updt_yahoemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="yaho_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_yhopswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="yaho_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_updt_yhopswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="yaho_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_yahook" runat="server" OnClick="btn_updt_yahook_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="yaho_updt"/>
                    <br />
                    <br />
                </td>
                <td style="width: 217px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 672px">
                    <asp:Image ID="img_gmil" runat="server" Height="70px" ImageUrl="~/Images/gmail_.png" Width="76px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_gmail" runat="server" OnClick="btn_updt_gmail_Click" Text="Update Gmail" CausesValidation="false" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_gmil" runat="server" OnClick="btn_cls_gmil_Click" Text="Delete Gmail" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                </td>
                <td class="auto-style3" style="width: 304px; text-align: left;">
                    <br />
                    <br />
                    <asp:Label ID="lbl_gmail" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_updt_gmilemail" runat="server" Visible="False" placeholder="Email address" Height="40px" Width="397px" ValidationGroup="gmail_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_updt_gmilemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="gmail_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_gmilpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="gmail_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_updt_gmilpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="gmail_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_gmilok" runat="server" OnClick="btn_updt_gmilok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="gmail_updt"/>
                    <br />
                    <br />
                </td>
                <td style="width: 217px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 672px">
                    <asp:Image ID="img_outlook" runat="server" Height="76px" ImageUrl="~/Images/outlook_img.jpg" Width="79px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_outlook" runat="server" OnClick="btn_updt_outlook_Click" Text="Update Outlook" CausesValidation="false" Font-Size="Large" Height="39px" Width="161px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_outlok" runat="server" OnClick="btn_cls_outlok_Click" Text="Delete Outlook" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                </td>
                <td class="auto-style3" style="width: 304px; text-align: left;">
                    <br />
                    <br />
                    <asp:Label ID="lbl_updt_out" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_updt_outemail" runat="server" Visible="False" placeholder="Email address" Height="40px" Width="397px" ValidationGroup="out_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_updt_outemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="out_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_outpswd" runat="server" Visible="False" placeholder="Password" Height="40px" Width="397px" ValidationGroup="out_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_updt_outpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="out_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_outok" runat="server" OnClick="btn_updt_outok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="out_updt" />
                    <br />
                </td>
                <td style="width: 217px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 672px; height: 223px;">
                    <asp:Image ID="img_redif" runat="server" Height="87px" ImageUrl="~/Images/CIRCLE_logo_mail-300x225.jpg" Width="124px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_redif" runat="server" OnClick="btn_updt_redif_Click" Text="Update Rediff" CausesValidation="false" Font-Size="Large" Height="39px" Width="161px"/>
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_redif" runat="server" OnClick="btn_cls_redif_Click" Text="Delete Rediff" Font-Size="Large" Height="39px" Width="161px" CausesValidation="false"/>
                    <br />
                </td>
                <td class="auto-style3" style="width: 304px; height: 223px; text-align: left;">
                    <br />
                    <br />
                    <asp:Label ID="lbl_redif" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_updt_redifemail" runat="server" Visible="False" placeholder="Email address" Height="40px" Width="397px" ValidationGroup="redif_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_updt_redifemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="redif_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_redifpswd" runat="server" Visible="False" Height="40px" placeholder="Password" Width="397px" ValidationGroup="redif_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_updt_redifpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="redif_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_redfOK" runat="server" OnClick="btn_updt_redfOK_Click" Text="OK" Font-Size="Large" Height="39px" Width="96px" Visible="False" ValidationGroup="redif_updt"/>
                    <br />
                </td>
                <td style="height: 223px; width: 217px;">
                    &nbsp;</td>
            </tr>
        </table>
    
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </asp:Content>