<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="get_travelling.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.get_travelling" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li class="current_page_item"><a href="get_travelling.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="Travelling.aspx" accesskey="2" title="">Add</a></li>
				<li><a href="set_travelling.aspx" accesskey="3" title="">Update</a></li>
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
        <table class="auto-style1" rules="none" style="width: 795px">
            <tr>
                <td class="auto-style2" style="width: 202px; height: 99px;">
                    <asp:ImageButton ID="btn_shw_makemytrip" runat="server" Height="59px" ImageUrl="~/Images/makemytrip.png" OnClick="btn_shw_makemytrip_Click" Width="72px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="MakeMyTrip"></asp:Label>
                </td>
                <td class="box1" style="width: 330px; height: 99px;"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 116px; width: 202px;">
                    <asp:ImageButton ID="btn_shw_bookmyshow" runat="server" Height="59px" ImageUrl="~/Images/bookmyshow.jpg" OnClick="btn_shw_bookmyshow_Click" Width="72px" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="BookMyShow"></asp:Label>
                </td>
                <td style="height: 116px; width: 330px;">
                    <br />
                    <asp:Label ID="lbl_nm_travelling" runat="server" Font-Size="Large" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lbl_note_travelling" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_shw_email" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_shw_pswd" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"  style="width: 202px; height: 120px;">
                    <asp:ImageButton ID="btn_shw_jetairway" runat="server" Height="59px" ImageUrl="~/Images/jetairway.png" Width="72px" OnClick="btn_shw_jetairway_Click" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Jet Airways"></asp:Label>
                </td>
                <td class="box1" style="width: 330px; height: 120px;">
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"  style="width: 202px; height: 114px;">
                    <asp:ImageButton ID="btn_shw_yatra" runat="server" Height="59px" ImageUrl="~/Images/yatra_.png" Width="72px" OnClick="btn_shw_yatra_Click" />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Yatra"></asp:Label>
                </td>
                <td class="box1" style="width: 330px; height: 114px;"></td>
            </tr>
            <tr>
                <td class="auto-style2"  style="width: 202px; height: 147px;">
                    <asp:ImageButton ID="btn_shw_railway" runat="server" Height="59px" ImageUrl="~/Images/25cd5ff3-b699-436b-ad0b-71f485972b49.jpg" Width="72px" OnClick="btn_shw_railway_Click" />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Railway"></asp:Label>
                </td>
                <td class="box1" style="width: 330px; height: 147px;"></td>
            </tr>
        </table>
    
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
</asp:Content>