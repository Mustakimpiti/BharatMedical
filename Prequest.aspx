<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Prequest.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-start">
                        <div class="row text-center">
                            <h1 class="mb-3 text-muted">All Product Requests By Users</h1>
                        </div>

                        <%--<img src="assets/img/edit2.png" height="100" width="100" alt="bootraper logo" class="app-logo">--%>
                        <asp:Button ID="CheckAll" CssClass="btn-block" runat="server" Text="CheckAll" />
                        &nbsp<asp:Button ID="UncheckAll" CssClass="btn-block" runat="server" Text="UncheckAll" /><%--<br /><br />--%>
                        &nbsp
                        <asp:Button ID="send" runat="server" CssClass="btn-success" Text="Send" />

                        <div class="text-end ">
                        Enter Medicine :
                        <asp:TextBox ID="txtSearch" Width="200" Height="30" runat="server" />
                        <br />
                        <asp:ImageButton ID="btnSearch" Height="30" Width="80" text="search" ImageUrl="~/Images/Searchbutton.png" runat="server"
                            Style="top: 5px; position: relative" OnClick="btnSearch_Click" />
                        &nbsp;&nbsp;
                                    <asp:ImageButton ID="btnClear" Width="80" Height="30" ImageUrl="~/Images/Clearbutton.png" runat="server" Style="top: 5px; position: relative"
                                        OnClick="btnClear_Click" /></div>
                        <br />
                        <br />
                        <div class="col-md-12 table-responsive">
                            <asp:GridView ID="GridView1" CssClass="table text-center table-bordered site-blocks-table" runat="server" AutoGenerateColumns="False" DataKeyNames="RId" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:TemplateField>

                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbRows" runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="RId" HeaderText="Request Id" InsertVisible="False" ReadOnly="True" SortExpression="RId" />
                                    <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                                    <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                DeleteCommand="DELETE FROM [Notifymst] WHERE [RId] = @RId" InsertCommand="INSERT INTO [Notifymst] ([Product], [User]) VALUES (@Product, @User)"
                                UpdateCommand="UPDATE [Notifymst] SET [Product] = @Product, [User] = @User WHERE [RId] = @RId"
                                SelectCommand="SELECT * FROM [Notifymst]"
                                FilterExpression="Product LIKE '%{0}%'">
                                <FilterParameters>
                                    <asp:ControlParameter Name="UserName" ControlID="txtSearch" PropertyName="Text" />
                                </FilterParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="RId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Product" Type="String" />
                                    <asp:Parameter Name="User" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Product" Type="String" />
                                    <asp:Parameter Name="User" Type="String" />
                                    <asp:Parameter Name="RId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

