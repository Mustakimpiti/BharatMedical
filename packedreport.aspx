<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="packedreport.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-start">
                        <div class="row text-center">
                        <h1 class="mb-3 text-muted">All Packed Orders</h1></div>
                        <div class="row text-center" >
                        <%--<img src="assets/img/edit2.png" height="100" width="100" alt="bootraper logo" class="app-logo">--%>
                            <asp:Button ID="btnExport" runat="server" Width="135" CssClass="btn-dark" Text="Export To PDF" OnClick="ExportToPDF" />
                            <div class="text-end ">
                        Enter Medicine :
                        <asp:TextBox ID="txtSearch" Width="200" Height="30" runat="server" />
                        <br />
                        <asp:ImageButton ID="btnSearch" Height="30" Width="80" text="search" ImageUrl="~/Images/Searchbutton.png" runat="server"
                            Style="top: 5px; position: relative" OnClick="Search" />
                        &nbsp;&nbsp;
                                    <asp:ImageButton ID="btnClear" Width="80" Height="30" ImageUrl="~/Images/Clearbutton.png" runat="server" Style="top: 5px; position: relative"
                                        OnClick="btnClear_Click" /></div>
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <%--<asp:TextBox ID="tbstart" runat="server" placeholder="DD-MM-YYYY" CssClass="form-control" Width="250" ToolTip="Start Date" ></asp:TextBox>&nbsp<asp:TextBox ID="tbend" CssClass="form-control" ToolTip="End Date" placeholder="DD-MM-YYYY" Width="250" runat="server"></asp:TextBox>&nbsp<asp:Button ID="btnsearch" CssClass="btn-success" Width="75" runat="server" OnClick="Search" Text="Check" /></div>
                        <br />--%>
                        <div class="col-md-12 table-responsive">
                            <asp:GridView ID="GridView1" CssClass="table text-center table-bordered site-blocks-table" runat="server" AutoGenerateColumns="False" DataKeyNames="Orderid">
                                <Columns>
                                    
                                    <%--<asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                
                                                <asp:Image ID="img1" Width="50"  Height="50" runat="server" ImageUrl='<%#Bind("Image") %>' />

                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                    <asp:BoundField DataField="Orderid" HeaderText="Orderid" InsertVisible="False" ReadOnly="True" SortExpression="Orderid" />
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Left">
                                            <HeaderTemplate>
                                                User Details
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <i title="User Name"></i>Name : <%# Eval("UName") %><br />
                                                <i  title="Mobile No"></i>Mo_No : <%# Eval("Umobile") %><br />
                                                <i  title="Address"></i>Address : <%# Eval("UAddress") %><br />
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
                                  <%-- <asp:TemplateField>
                                        <HeaderTemplate>Orderstatus </HeaderTemplate>
                                        <ItemTemplate>
                                            <%# If(Eval("Orderstatus").ToString() = "Approve", "<img class='icon-colored' src='../Admin/assets/img/a1.png' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                        If(Eval("Orderstatus").ToString() = "Packed", " <img class='icon-colored' src='../Admin/assets/img/packed.png' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                        "")) %>
                                            <%# If(Eval("Orderstatus").ToString() = "Shipped", "<img class='icon-colored' src='../Admin/assets/img/ship.png' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                                                                                                            If(Eval("Orderstatus").ToString() = "Delivered", " <img class='icon-colored' src='../Admin/assets/img/d2.jpg' style =' height:50px; width:50px;'  alt='colored-icons'>",
                                                                                                                                                                                                                            "")) %>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                </Columns>
                            </asp:GridView>
                            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ordermaster] where [Orderstatus]=@Orderstatus">
                                <selectparameters>
                            <asp:Parameter Name="Orderstatus" DefaultValue="Delivered" Type="String" />
                        </selectparameters>
                            </asp:SqlDataSource>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div></div>
</asp:Content>

