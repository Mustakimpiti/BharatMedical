<%@ Page Language="VB" AutoEventWireup="false" CodeFile="stock2.aspx.vb" Inherits="Admin_stock2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <div class="container">

                <div class="auth-content">
                    <div class="card">
                        <div class="card-body text-center">
                            <h2 class="mb-4 text-muted">Stock Report</h2>
                            <br />
                            <asp:DropDownList ID="DropDownList1" Height="30" Width="60" runat="server">

                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="txtSearch" CssClass="search-bar" runat="server"></asp:TextBox>
                            <%--<asp:DropDownList ID="txtSearch" runat="server" cssclass="selected" DataSourceID="SqlDataSource2" DataTextField="PName" DataValueField="PName"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PName] FROM [Productmst]"></asp:SqlDataSource>--%>
                            <asp:LinkButton runat="server" CssClass="fas fa-search" OnClick="Search" />
                        </div>
                    </div>
                    <div class="col-md-12 table-responsive">
                        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                            runat="server" AutoGenerateColumns="false" AllowPaging="true" >
                            <Columns>

                                <asp:BoundField DataField="Id" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="PName" HeaderText="Product Name" SortExpression="PName" />
                                <asp:BoundField DataField="Quantity" HeaderText="Available Stock" SortExpression="Quantity" />
                            </Columns>
                            <FooterStyle BorderColor="Black" BorderStyle="Solid" />
                            <PagerStyle BackColor="#FFFFCC" BorderStyle="Solid" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                        <asp:Button ID="btnExport" runat="server" Text="Export To PDF" OnClick="ExportToPDF" />
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
