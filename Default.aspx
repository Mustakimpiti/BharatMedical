<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
        RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
        runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging">
        <Columns>
            <asp:BoundField DataField="UFirstName" HeaderText="Contact Name" ItemStyle-Width="150px" />
            <asp:BoundField DataField="ULastName" HeaderText="City" ItemStyle-Width="100px" />
            <asp:BoundField DataField="UEmail" HeaderText="Country" ItemStyle-Width="100px" />
        </Columns>
    </asp:GridView>
    <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UId" HeaderText="UId" InsertVisible="False" ReadOnly="True" SortExpression="UId" />
                <asp:BoundField DataField="UFirstName" HeaderText="UFirstName" SortExpression="UFirstName" />
                <asp:BoundField DataField="ULastName" HeaderText="ULastName" SortExpression="ULastName" />
                <asp:BoundField DataField="UEmail" HeaderText="UEmail" SortExpression="UEmail" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="HouseNo" HeaderText="HouseNo" SortExpression="HouseNo" />
                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM Usermst ORDER BY UId DESC"></asp:SqlDataSource>
    <asp:Button ID="btnExport" runat="server" Text="Export To PDF" OnClick = "ExportToPDF" />
    </form>
</body></html>
