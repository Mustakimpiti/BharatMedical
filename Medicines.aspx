<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Medicines.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <h2 class="mb-4 text-muted">Medicines Report</h2>
                    <div class="card-body text-end">
                        
                        <div class="text-end">
                        <asp:Button ID="btnExport" runat="server" Width="135" CssClass="btn-dark" Text="Export To PDF" OnClick="ExportToPDF" /></div>
                        <br />
                        <%--<asp:DropDownList ID="DropDownList1" height="30" Width="60" runat="server">
                            
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                             <asp:ListItem>50</asp:ListItem>
                        </asp:DropDownList>--%>&nbsp&nbsp<asp:DropDownList ID="ddlcat" cssclass="form-Control" OnSelectedIndexChanged="Search" Height="35" AutoPostBack="true" ToolTip="For Category" runat="server">
                            <asp:ListItem Text="All" Value=""></asp:ListItem>
                                    <asp:ListItem>Standard</asp:ListItem>
                                    <asp:ListItem>Generic</asp:ListItem>
                                    
                            
                        </asp:DropDownList>&nbsp<asp:DropDownList cssclass="form-Control" Height="35" ID="ddltype" OnSelectedIndexChanged="Search"  ToolTip="For Type" AutoPostBack="true" runat="server">
                            <asp:ListItem Text="All" Value=""></asp:ListItem>
                           <asp:ListItem>Antibiotics</asp:ListItem>
                                    <asp:ListItem>Pain Killer</asp:ListItem>
                                    <asp:ListItem>Cold</asp:ListItem>
                                    <asp:ListItem>Blood pressure</asp:ListItem>
                                    <asp:ListItem>Diabetic</asp:ListItem>
                                    <asp:ListItem>Sugar</asp:ListItem>
                                    <asp:ListItem>Acidity</asp:ListItem>
                                    <asp:ListItem>Vitamins</asp:ListItem>
                                    
                            
                        </asp:DropDownList>&nbsp
                        
                        <asp:TextBox ID="txtSearch" CssClass="form- control" Height="35" runat="server"></asp:TextBox>
                        
                        <asp:Button runat="server" CssClass="btn-success" Height="35" Text="Search" OnClick="Search" />
                    </div>
                    
                </div>
                <div class="col-md-12 table-responsive">
                    <asp:GridView ID="GridView1" runat="server"  CssClass="table table-striped tab-content table-bordered table-hover text-center" AutoGenerateColumns="false" AllowPaging="false" AllowSorting="True" >
                        <Columns>
                            
                            <asp:TemplateField>
                                <HeaderTemplate> Id</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Bind("Id")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>Name</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%#Bind("PName") %>'></asp:Label>
                                </ItemTemplate>


                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate >Price</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblprice" runat="server" Text='<%#Bind("Price") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>Actual Price</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbldiscount" runat="server" Text='<%#Bind("DiscountedPrice") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>Category</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblcat" runat="server" Text='<%#Bind("Category") %>'></asp:Label>
                                </ItemTemplate>


                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>Types</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbltypes" runat="server" Text='<%#Bind("Types") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <%--<asp:TemplateField>
                                <HeaderTemplate>Medicines Description</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbldesc" runat="server" Text='<%#Bind("Description") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>--%>
                            <asp:TemplateField>
                                <HeaderTemplate>Quantity</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblQuantity" runat="server" Text='<%#Bind("Quantity") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>MFG-Date</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblmfg" runat="server" Text='<%#Bind("MFGDate") %>'></asp:Label>
                                </ItemTemplate>


                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>EXP-Date</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblexp" runat="server" Text='<%#Bind("EXPDate") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <%--<asp:TemplateField>
                                <HeaderTemplate>Photo</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="imgPhoto" Width="100px" CssClass="rounded-circle" Height="100px" runat="server" ImageUrl='<%#Bind("Img") %>' />
                                </ItemTemplate>

                            </asp:TemplateField>--%>








                            <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />--%>
                            <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="MFGDate" HeaderText="MFGDate" SortExpression="MFGDate" />
                                <asp:BoundField DataField="EXPDate" HeaderText="EXPDate" SortExpression="EXPDate" />
                                <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />--%>
                        </Columns>
                        <FooterStyle ForeColor="#990099" />
                        <PagerStyle BackColor="#FFFFCC" BorderStyle="Solid" Height="30px" HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

