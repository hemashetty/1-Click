<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entertainment.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.entertainment" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_entertainment.aspx" accesskey="1" title="">Detail</a></li>
				<li class="current_page_item"><a href="entertainment.aspx" accesskey="2" title="">Add</a></li>
				<li><a href="set_entertainment.aspx" accesskey="3" title="">Update</a></li>
				<li><a href="sites.aspx" accesskey="4" title="">Sites</a></li>
				<li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
    <asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
        <table style="width: 100%">
            <tr>
                <td><h1>Entertainment</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" style="height: 737px" rules="rows">
            <tr>
                <td class="auto-style2" style="width: 186px">
                    <asp:ImageButton ID="imgana" runat="server" Height="109px" ImageUrl="~/Images/ganna.png" OnClick="imgana_Click" Width="87px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Gaana"></asp:Label>
                    <br />
                    <asp:Button ID="btngna" runat="server" Height="41px" OnClick="btngna_Click" Text="Add" Width="86px" CausesValidation="False" Font-Size="Large" />
                </td>
                <td class="box1" style="width: 609px; text-align: left;">
&nbsp;<asp:Label ID="lbl_not_ganna" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:TextBox ID="txtganaemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="gaana_add"></asp:TextBox>
                    <br />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtganaemail" ErrorMessage="*Please enter email/username" ForeColor="#33CCFF" ValidationGroup="gaana_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtganapswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="gaana_add"></asp:TextBox>
                    <br />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtganapswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="gaana_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btngana" runat="server" OnClick="btngana_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="gaana_add" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_cancel_ganna" runat="server" Text="Cancel" Visible="False" OnClick="btn_cancel_ganna_Click" CausesValidation="False" Font-Size="Large" Height="39px" Width="116px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 186px">
                    <asp:ImageButton ID="imgsaavan" runat="server" Height="71px" ImageUrl="~/Images/saavan.png" OnClick="imgsaavan_Click" Width="70px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Saavan"></asp:Label>
                    <br />
                    <asp:Button ID="btnadsavan" runat="server" OnClick="btnadsavan_Click" Text="Add" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td class="box1" style="width: 609px; text-align: left;">
&nbsp;&nbsp;<asp:Label ID="lbl_note_saavan" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:TextBox ID="txtsavanemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="saavan_add"></asp:TextBox>
                    &nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsavanemail" ErrorMessage="*Please enter email/username" ForeColor="#33CCFF" ValidationGroup="saavan_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtsavanpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="saavan_add"></asp:TextBox>
                    <br />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsavanpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="saavan_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnsaavan" runat="server" OnClick="btnsaavan_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="saavan_add" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_cancel_saavan" runat="server" Text="Cancel" Visible="False" OnClick="btn_cancel_saavan_Click" CausesValidation="False" Font-Size="Large" Height="39px" Width="116px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 186px">
                    <asp:ImageButton ID="imgbiscoot" runat="server" Height="104px" ImageUrl="~/Images/biscoot.jpg" OnClick="imgbiscoot_Click" Width="161px" style="margin-right: 0px" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Biscoot"></asp:Label>
                    <br />
                    <asp:Button ID="btnaddbiscoot" runat="server" OnClick="btnaddbiscoot_Click" Text="Add" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td class="box1" style="width: 609px; text-align: left;">
&nbsp;<asp:Label ID="lbl_note_biscoot" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:TextBox ID="txtbiscootemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="biscoot_add"></asp:TextBox>
                    &nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbiscootemail" ErrorMessage="*Please enter email/username" ForeColor="#33CCFF" ValidationGroup="biscoot_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtbiscootpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="biscoot_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtbiscootpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="biscoot_add"></asp:RequiredFieldValidator>
                    &nbsp;<br />
                    <asp:Button ID="btnbiscoot" runat="server" OnClick="btnbiscoot_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="biscoot_add" />
                &nbsp;&nbsp;<asp:Button ID="btn_cancel_biscoot" runat="server" OnClick="btn_cancel_biscoot_Click" Text="Cancel" UseSubmitBehavior="False" CausesValidation="False" Font-Size="Large" Height="39px" Visible="False" Width="116px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 186px">
                    <asp:ImageButton ID="imgyoutube" runat="server" Height="88px" ImageUrl="~/Images/youtube.jpg" OnClick="imgyoutube_Click" Width="86px" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Youtube"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_youtube" runat="server" OnClick="btn_add_youtube_Click" Text="Add" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td class="box1" style="width: 609px; text-align: left;">
                    <asp:Label ID="lbl_note_youtube" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtutubeemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="youtube_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtutubeemail" ErrorMessage="*Please enter email/username" ForeColor="#33CCFF" ValidationGroup="youtube_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtutubepswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="youtube_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtutubepswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="youtube_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnyoutube" runat="server" OnClick="btnyoutube_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="youtube_add" />
                &nbsp;<asp:Button ID="btn_cancel_youtube" runat="server" OnClick="btn_cancel_youtube_Click" Text="Cancel" Visible="False" CausesValidation="False" Font-Size="Large" Height="39px" Width="116px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </asp:Content>