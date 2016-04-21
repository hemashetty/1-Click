<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="get_entertainment.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.get_entertainment" %>

<asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li class="current_page_item"><a href="get_entertainment.aspx" accesskey="1" title="">Detail</a></li>
				<li ><a href="entertainment.aspx" accesskey="2" title="">Add</a></li>
				<li><a href="set_entertainment.aspx" accesskey="3" title="">Update</a></li>
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
                <td><h1>Entertainment</h1></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1" rules="none" style="height: 681px; margin-bottom: 27px">
            <tr>
                <td class="auto-style2" style="height: 99px; width: 233px">
                    <asp:ImageButton ID="btn_shw_gana" runat="server" Height="117px" ImageUrl="~/Images/ganna.png" OnClick="btn_shw_gana_Click" Width="104px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Ganna"></asp:Label>
                </td>
                <td style="height: 99px; width: 564px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 233px; height: 158px;">
                    <asp:ImageButton ID="img_shw_savan" runat="server" Height="70px" ImageUrl="~/Images/saavan.png" Width="72px" OnClick="img_shw_savan_Click" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Saavan"></asp:Label>
                </td>
                <td style="width: 564px; height: 158px;" class="boxA">
                    <asp:Label ID="lbl_nm_entertain" runat="server" Font-Size="Large" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lbl_note_entertainment" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_shw_email" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_shw_pswd" runat="server" Height="40px" Width="397px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 233px; height: 200px;">
                    <asp:ImageButton ID="btn_shw_biscot" runat="server" Height="108px" ImageUrl="~/Images/biscoot.jpg" Width="158px" OnClick="btn_shw_biscot_Click" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Biscoot"></asp:Label>
                </td>
                <td style="width: 564px; height: 200px;" class="boxA">
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 233px; height: 92px;">
                    <asp:ImageButton ID="btn_shw_youtube" runat="server" Height="87px" ImageUrl="~/Images/youtube.jpg" Width="95px" OnClick="btn_shw_youtube_Click" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Youtube"></asp:Label>
                </td>
                <td style="width: 564px; height: 92px;"></td>
            </tr>
        </table>
 
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </asp:Content>
