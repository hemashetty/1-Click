<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_travelling.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.set_travelling" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="get_travelling.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="Travelling.aspx" accesskey="2" title="">Add</a></li>
				<li class="current_page_item"><a href="set_travelling.aspx" accesskey="3" title="">Update</a></li>
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
        <table class="auto-style1" rules="rows" style="height: 1363px; width: 795px; margin-right: 4px">
            <tr>
                <td class="boxA" style="width: 305px">
                    <asp:Image ID="imgmakemytrip" runat="server" Height="66px" ImageUrl="~/Images/makemytrip.png" Width="72px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_makemytrip" runat="server" OnClick="btn_updt_makemytrip_Click" Text="Update MakeMyTrip" CausesValidation="False" Font-Size="Large" Height="39px" Width="180px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_mytrip" runat="server" OnClick="btn_cls_mytrip_Click" Text="Delete MakeMyTrip" Font-Size="Large" Height="39px" Width="180px" />
                </td>
                <td class="auto-style3" style="width: 280px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_makemytrip" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_makemytripemail" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="my_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_updt_makemytripemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="my_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_makemytrippswd" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="my_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_updt_makemytrippswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="my_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_makemytripok" runat="server" Text="OK" Visible="False" OnClick="btn_updt_makemytripok_Click" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="my_updt" />
                    <br />
                </td>
                <td style="width: 77px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 305px">
                    <asp:Image ID="imgbookmyshow" runat="server" Height="66px" ImageUrl="~/Images/bookmyshow_.jpg" Width="69px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_bookmyshow" runat="server" OnClick="btn_updt_bookmyshow_Click" Text="Update BookMyShow" CausesValidation="False" Font-Size="Large" Height="39px" Width="191px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_bkmyshw" runat="server" OnClick="btn_cls_bkmyshw_Click" Text="Delete BookMyShow" Font-Size="Large" Height="39px" Width="191px" />
                </td>
                <td class="auto-style3" style="width: 280px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_bkmyshw" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_bkmyshwemail" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="bk_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_updt_bkmyshwemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="bk_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_bkmyshwpswd" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="bk_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_updt_bkmyshwpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="bk_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_bkmyshwOK" runat="server" OnClick="btn_updt_bkmyshwOK_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="bk_updt" />
                    <br />
                </td>
                <td style="width: 77px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 305px">
                    <asp:Image ID="imgjetairway" runat="server" Height="65px" ImageUrl="~/Images/jetairway.png" Width="71px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_jetairways" runat="server" OnClick="btn_updt_jetairways_Click" Text="Update Jet Airways" CausesValidation="False" Font-Size="Large" Height="39px" Width="180px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_jetair" runat="server" OnClick="btn_cls_jetair_Click" Text="Delete Jet Airways" Font-Size="Large" Height="39px" Width="180px" />
                </td>
                <td class="auto-style3" style="width: 280px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_updt_jetairways" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_jetemail" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="jet_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_updt_jetemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="jet_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_jetpswd" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="jet_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_updt_jetpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="jet_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_jetOK" runat="server" OnClick="btn_updt_jetOK_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="jet_updt" />
                    <br />
                </td>
                <td style="width: 77px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 305px">
                    <asp:Image ID="imgyatra" runat="server" Height="66px" ImageUrl="~/Images/yatra_.png" Width="72px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_yatra" runat="server" OnClick="btn_updt_yatra_Click" Text="Update Yatra" CausesValidation="False" Font-Size="Large" Height="39px" Width="180px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_yatra" runat="server" OnClick="btn_cls_yatra_Click" Text="Delete Yatra" Font-Size="Large" Height="39px" Width="180px" />
                </td>
                <td class="auto-style3" style="width: 280px; text-align: left;">
                    <br />
                    <asp:Label ID="lbl_yatra" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_yatraemail" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="yatra_upd"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_updt_yatraemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="yatra_upd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_yatrapswd" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="yatra_upd"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_updt_yatrapswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="yatra_upd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_yatraok" runat="server" OnClick="btn_updt_yatraok_Click" Text="OK" Visible="False" Font-Size="Large" Height="39px" Width="96px" ValidationGroup="yatra_upd" />
                    <br />
                </td>
                <td style="width: 77px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 305px; height: 241px;">
                    <asp:Image ID="imgrailway" runat="server" Height="59px" ImageUrl="~/Images/25cd5ff3-b699-436b-ad0b-71f485972b49.jpg" Width="72px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_updt_rail" runat="server" OnClick="btn_updt_rail_Click" Text="Update Railway" CausesValidation="False" Font-Size="Large" Height="39px" Width="180px" />
                    <br />
                    <br />
                    <asp:Button ID="btn_cls_rail" runat="server" OnClick="btn_cls_rail_Click" Text="Delete Railway" Font-Size="Large" Height="39px" Width="180px" />
                </td>
                <td class="auto-style3" style="width: 280px; text-align: left; height: 241px;">
                    <br />
                    <asp:Label ID="lbl_rail" runat="server" Text="Label" Visible="False" ForeColor="#33CCFF"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_updt_railemail" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="rail_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_updt_railemail" ErrorMessage="*Please enter username/password" ForeColor="#33CCFF" ValidationGroup="rail_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txt_updt_railpswd" runat="server" Visible="False" Height="40px" Width="397px" ValidationGroup="rail_updt"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_updt_railpswd" ErrorMessage="*Please enter password" ForeColor="#33CCFF" ValidationGroup="rail_updt"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btn_updt_railOK" runat="server" OnClick="btn_updt_railOK_Click" Text="OK" Visible="False" Font-Size="Large" Height="36px" Width="96px" ValidationGroup="rail_updt" />
                    <br />
                </td>
                <td style="height: 241px; width: 77px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="boxA" style="width: 305px; height: 22px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 280px; height: 22px;"></td>
                <td style="height: 22px; width: 77px"></td>
            </tr>
        </table>
    
   </asp:Content>
