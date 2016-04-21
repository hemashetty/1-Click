<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Travelling.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.Travelling" %>


<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_travelling.aspx" accesskey="1" title="">Detail</a></li>
				<li class="current_page_item"><a href="Travelling.aspx" accesskey="2" title="">Add</a></li>
				<li ><a href="set_travelling.aspx" accesskey="3" title="">Update</a></li>
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
                <td><h1>Travel</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" rules="rows">
            <tr>
                <td class="auto-style2" style="width: 209px">
                    <asp:ImageButton ID="imgmytrip" runat="server" Height="67px" ImageUrl="~/Images/makemytrip.png" OnClick="imgmytrip_Click" Width="72px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="MakeMyTrip"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_mytrip" runat="server" Text="Add" OnClick="btn_add_mytrip_Click" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td style="width: 583px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_mytrip" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtmytripemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="mk_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmytripemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="mk_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtmytripswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="mk_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmytripswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="mk_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnmytrip" runat="server" OnClick="btnmytrip_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="mk_add" />
                    &nbsp;<asp:Button ID="btn_cancel_mytrip" runat="server" OnClick="btn_cancel_mytrip_Click" Text="Cancel" Visible="False" CausesValidation="False" Font-Size="Large" Height="39px" Width="116px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 209px">
                    <asp:ImageButton ID="imgbookmytrip" runat="server" Height="59px" ImageUrl="~/Images/bookmyshow.jpg" OnClick="imgbookmytrip_Click" Width="67px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="BookMyShow"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_mybookshow" runat="server" OnClick="btn_add_mybookshow_Click" Text="Add" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td style="width: 583px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_bookmyshow" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtbookmyemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="bkmyshop_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbookmyemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="bkmyshop_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtbookmypswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="bkmyshop_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbookmypswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="bkmyshop_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnbookmyshow" runat="server" OnClick="btnbookmyshow_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="bkmyshop_add" />
                &nbsp;<asp:Button ID="btn_cancel_bookmyshow" runat="server" OnClick="btn_cancel_bookmyshow_Click" Text="Cancel" Visible="False" CausesValidation="False" Font-Size="Large" Height="39px" Width="116px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 209px">
                    <asp:ImageButton ID="imgjetairway" runat="server" Height="63px" ImageUrl="~/Images/jetairway.png" OnClick="imgjetairway_Click" Width="73px" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Jet Airways"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_jetairways" runat="server" OnClick="btn_add_jetairways_Click" Text="Add" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td style="width: 583px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_jetairways" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtjetairemail" runat="server" placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="jet_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtjetairemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="jet_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtjetairpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="jet_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtjetairpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="jet_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnjetairway" runat="server" OnClick="btnjetairway_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="jet_add" />
                    &nbsp;<asp:Button ID="btn_cancel_jetairwys" runat="server" OnClick="btn_cancel_jetairwys_Click" Text="Cancel" Visible="False" CausesValidation="False" Font-Size="Large" Height="39px" Width="116px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 209px">
                    <asp:ImageButton ID="imgyatra" runat="server" Height="59px" ImageUrl="~/Images/yatra_.png" OnClick="imgyatra_Click" Width="70px" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Yatra"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_yatra" runat="server" OnClick="btn_add_yatra_Click" Text="Add" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td style="width: 583px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_yatra" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtyatraemail" runat="server" Placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="yatra_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtyatraemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="yatra_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtyatrapswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="yatra_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtyatrapswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="yatra_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnyatra" runat="server" OnClick="btnyatra_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="yatra_add" />
                    &nbsp;<asp:Button ID="btn_cancel_yatra" runat="server" OnClick="btn_cancel_yatra_Click" Text="Cancel" CausesValidation="False" Font-Size="Large" Height="39px" Visible="False" Width="116px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 209px">
                    <asp:ImageButton ID="imgrail" runat="server" Height="59px" ImageUrl="~/Images/25cd5ff3-b699-436b-ad0b-71f485972b49.jpg" OnClick="imgrail_Click" Width="70px" />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Railway"></asp:Label>
                    <br />
                    <asp:Button ID="btn_add_railway" runat="server" OnClick="btn_add_railway_Click" Text="Add" CausesValidation="False" Font-Size="Large" Height="41px" Width="86px" />
                </td>
                <td style="width: 583px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_note_railway" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtrailemail" runat="server" Placeholder="Email/Username" Visible="False" Height="40px" Width="397px" ValidationGroup="rail_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtrailemail" ErrorMessage="*Please enter username/email" ForeColor="#33CCFF" ValidationGroup="rail_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtrailpswd" runat="server" placeholder="Password" Visible="False" Height="40px" Width="397px" ValidationGroup="rail_add"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtrailpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="rail_add"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnrailway" runat="server" OnClick="btnrailway_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="rail_add" />
                    &nbsp;<asp:Button ID="btn_cancel_railway" runat="server" Text="Cancel" Visible="False" OnClick="btn_cancel_railway_Click" CausesValidation="False" Font-Size="Large" Height="39px" Width="116px" />
                    <br />
                </td>
            </tr>
        </table>
   
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
   
    </asp:Content>