<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="social.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.social" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_social.aspx" accesskey="1" title="">Detail</a></li>
				<li class="current_page_item"><a href="social.aspx" accesskey="2" title="">Add</a></li>
				<li><a href="set_social.aspx" accesskey="3" title="">Update</a></li>
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
        <table class="auto-style1" rules="rows" style="height: 1015px">
            <tr>
                <td class="auto-style3" style="width: 234px; height: 209px;">
                    <asp:ImageButton ID="imgyh" runat="server" Height="98px" ImageUrl="~/Images/24301.png" Width="85px" OnClick="imgyh_Click" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Yahoo"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_yahoo" runat="server" OnClick="btn_add_yahoo_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td class="auto-style4" style="text-align: left; width: 611px; height: 209px;">
                    <asp:Label ID="lbl_note_yahoo" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtyahemail" runat="server" placeholder="Email address" Visible="False" Height="40px" Width="397px" ValidationGroup="yaho_set"></asp:TextBox>
              
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtyahemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="yaho_set"></asp:RequiredFieldValidator>
              
                    <br />
                    <asp:TextBox ID="txtyahpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="yaho_set"></asp:TextBox>
                    
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtyahpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="yaho_set"></asp:RequiredFieldValidator>
                    
                    <br />
                    <asp:Button ID="btnyahoo" runat="server" OnClick="btnyahoo_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="yaho_set" />
                &nbsp;<asp:Button ID="btn_cancel_yhoo" runat="server" OnClick="btn_cancel_yhoo_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 234px; height: 230px;">
                    <asp:ImageButton ID="imgmail" runat="server" Height="76px" ImageUrl="~/Images/gmail_.png" Width="78px" OnClick="imgmail_Click" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Gmail"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_gmail" runat="server" OnClick="btn_add_gmail_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td class="auto-style5" style="text-align: left; width: 611px; height: 230px;">
                    <br />
                    <asp:Label ID="lbl_note_gmail" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtgmail" runat="server" placeholder="Email address"  Visible="False" Height="40px" Width="397px" ValidationGroup="gmail_set"></asp:TextBox>
              
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtgmail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="gmail_set"></asp:RequiredFieldValidator>
              
                    <br />
                    <asp:TextBox ID="txtgpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="gmail_set"></asp:TextBox>
                    
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtgpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="gmail_set"></asp:RequiredFieldValidator>
                    
                    <br />
                    <asp:Button ID="btngmail" runat="server" OnClick="btngmail_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="gmail_set" />
                    &nbsp;<asp:Button ID="btn_cancel_gmail" runat="server" OnClick="btn_cancel_gmail_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 235px; width: 234px;">
                    <asp:ImageButton ID="imgout" runat="server" Height="78px" ImageUrl="~/Images/outlook_img.jpg" OnClick="imgout_Click" Width="81px" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Outlook"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_outlook" runat="server" OnClick="btn_add_outlook_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                    <br />
                    <br />
                </td>
                <td class="auto-style5" style="height: 235px; text-align: left; width: 611px;">
                    <br />
                    <asp:Label ID="lbl_note_outlook" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtoutmail" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Email address" ValidationGroup="out_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtoutmail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="out_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtoutpswd" runat="server" Visible="False" Height="40px" placeholder="Password" Width="397px" ValidationGroup="out_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtoutpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="out_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnout" runat="server" OnClick="btnout_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="out_set" />
                &nbsp;<asp:Button ID="btn_cancel_outlook" runat="server" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" OnClick="btn_cancel_outlook_Click" CausesValidation="false"/>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 234px; height: 235px;">
                    <asp:ImageButton ID="imgredf" runat="server" Height="91px" ImageUrl="~/Images/CIRCLE_logo_mail-300x225.jpg" OnClick="imgredf_Click" Width="121px" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Reddiff"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_redif" runat="server" OnClick="btn_add_redif_Click" Text="Add" Font-Size="Large" Height="41px" Width="86px" CausesValidation="false"/>
                </td>
                <td class="auto-style5" style="text-align: left; width: 611px; height: 235px;">
                    <br />
                    <asp:Label ID="lbl_note_rediff" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtredmail" runat="server" Visible="False" Height="40px" Width="397px" placeholder="Email address" ValidationGroup="redif_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtredmail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="redif_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtredpswd" runat="server" Visible="False" Height="40px"  placeholder="Password" Width="397px" ValidationGroup="redif_set"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtredpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="redif_set"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnredf" runat="server" OnClick="btnredf_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="redif_set" />
                &nbsp;<asp:Button ID="btn_cancel_rediff" runat="server" OnClick="btn_cancel_rediff_Click" Text="Cancel" Visible="False" Font-Size="Large" Height="39px" Width="116px" CausesValidation="false"/>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lbl_yh" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lbl_flik" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
    
    </asp:Content>
    
