<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" MasterPageFile="~/Pages/Profile.Master" Inherits="_1_click.Pages.History" %>

<asp:Content ID="hismnu" ContentPlaceHolderID="prfmnu" runat="server">
    <ul>
				<li ><a href="Account.aspx" accesskey="1" title="">Profile</a></li>
				<li ><a href="sites.aspx" accesskey="2" title="">Sites</a></li>
				<li class="current_page_item"><a href="History.aspx" accesskey="3" title="">History</a></li>
				
				<li><a href="Logout.aspx" accesskey="5" title="">Logout</a></li>
			</ul>
</asp:Content>
<asp:Content ID="prnme" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Font-Size="Large" ></asp:Label>

</asp:Content>
<asp:Content ID="hist" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 0px">
    
        <br />
        <b><strong><span style="font-size: x-large">HISTORY</span></strong></b><br />
        <br />
        <asp:Button ID="btn_history" runat="server" Font-Size="Large" Height="35px" OnClick="btn_history_Click" Text="Delete History" />
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="387px" Width="773px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1-click %>" SelectCommand="SELECT [Name], [Url], [Time] FROM [History_tb]"></asp:SqlDataSource>
    
    </div>
   
</asp:Content>