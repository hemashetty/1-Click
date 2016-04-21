<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_detail.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.Admin_detail" %>


    <asp:Content ID="sitemenu_soc" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li class="current_page_item"><a href="Admin_detail.aspx" accesskey="1" title="">Admin Detail</a></li>
				<li ><a href="Admin_email.aspx" accesskey="2" title="">Admin Email</a></li>
				<li ><a href="Admin_setting.aspx" accesskey="3" title="">Setting</a></li>
				
				<li><a href="Admin_logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
    <asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Admin" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="sitedt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Welcome Admin" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
    
        <br />
        <br />
        <br />
        <table style="width: 100%">
            <tr>
                <td style="width: 328px">Number of users:</td>
                <td style="text-align: left">
        <asp:TextBox ID="txt_count" runat="server" Height="32px" Width="167px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 328px">&nbsp;</td>
                <td style="text-align: left">
                    <br />
        <asp:Button ID="btn_count" runat="server" OnClick="btn_count_Click" Text="Count" />
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <div style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource_admin" GridLines="Vertical" Height="285px" Width="795px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Phone_no" HeaderText="Phone_no" SortExpression="Phone_no" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource_admin" runat="server" ConnectionString="<%$ ConnectionStrings:1-click %>" SelectCommand="SELECT [Email], [Username], [Phone_no] FROM [Joine_tb]"></asp:SqlDataSource>
    
   </asp:Content>