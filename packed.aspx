<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="packed.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-start"><div class="row text-center">
                        <h1 class="mb-3 text-muted">All Packed Orders</h1></div>

                        <%--<img src="assets/img/edit2.png" height="100" width="100" alt="bootraper logo" class="app-logo">--%>
                        <asp:Button id="CheckAll" CssClass="btn-block" runat="server" Text="CheckAll" />
                                &nbsp<asp:Button id="UncheckAll" CssClass="btn-block" runat="server" Text="UncheckAll" /><%--<br /><br />--%>
                        <asp:DropDownList ID="DropDownList1" CssClass="control" Width="120" Height="30" runat="server">
                            <asp:ListItem>Packed</asp:ListItem>
                                    <asp:ListItem>Shipped</asp:ListItem>

                        </asp:DropDownList>&nbsp
                        <asp:Button id="change" runat="server" CssClass="btn-success" Text="Change" />

                        <br />
                        <br />
                        <div class="col-md-12 table-responsive">
                            <asp:GridView ID="GridView1" CssClass="table text-center table-bordered site-blocks-table" runat="server" AutoGenerateColumns="False" DataKeyNames="Orderid" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:TemplateField>

                                            <itemtemplate>
                                                <asp:CheckBox id="cbRows" runat="server"></asp:CheckBox>
                                            </itemtemplate>
                                        </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                
                                                <asp:Image ID="img1" Width="50"  Height="50" runat="server" ImageUrl='<%#Bind("Image") %>' />

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    <asp:BoundField DataField="Orderid" HeaderText="Orderid" InsertVisible="False" ReadOnly="True" SortExpression="Orderid" />
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Left">
                                            <HeaderTemplate>
                                                User Details
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <i class="fas fa-user-alt " title="User Name"></i>&nbsp<%# Eval("UName") %><br />
                                                <i class="fas fa-mobile-alt " title="Mobile No"></i>&nbsp<%# Eval("Umobile") %><br />
                                                <i class="fas fa-address-book " title="Address"></i>&nbsp<%# Eval("UAddress") %><br />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    <%--<asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
                                    <asp:BoundField DataField="Umobile" HeaderText="Umobile" SortExpression="Umobile" />
                                    <asp:BoundField DataField="UAddress" HeaderText="UAddress" SortExpression="UAddress" />--%>
                                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                                    <asp:BoundField DataField="Productprice" HeaderText="Productprice" SortExpression="Productprice" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                    <asp:BoundField DataField="Totalamount" HeaderText="Totalamount" SortExpression="Totalamount" />
                                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
<%--                                    <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />--%>
                                    
                                    <asp:BoundField DataField="Orderstatus" HeaderText="Orderstatus" SortExpression="Orderstatus" />
<%--                                    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />--%>
                                   <asp:TemplateField>
                                        <HeaderTemplate>Orderstatus </HeaderTemplate>
                                        <ItemTemplate>
                                            <%# If(Eval("Orderstatus").ToString() = "Approve", "<img class='icon-colored' src='../Admin/assets/img/a1.png' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                                    If(Eval("Orderstatus").ToString() = "Packed", " <img class='icon-colored' src='../Admin/assets/img/packed.png' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                                    "")) %>
                                            <%# If(Eval("Orderstatus").ToString() = "Shipped", "<img class='icon-colored' src='../Admin/assets/img/ship.png' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                                                                                                            If(Eval("Orderstatus").ToString() = "Delivered", " <img class='icon-colored' src='../Admin/assets/img/d2.jpg' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                                                                                                            "")) %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ordermaster] where [Orderstatus]=@Orderstatus">
                                <selectparameters>
                            <asp:Parameter Name="Orderstatus" DefaultValue="Packed" Type="String" />
                        </selectparameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

