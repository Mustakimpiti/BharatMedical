<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="EditMedicines.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-center">
                        <h1 class="mb-3 text-muted">Edit Medicines</h1>

                        <%--<img src="assets/img/edit2.png" height="100" width="100" alt="bootraper logo" class="app-logo">--%>


                        <br /><br />

                        <div class="text-end ">
                            <p>
                                <asp:DropDownList ID="DropDownList1" height="30" Width="60" runat="server">

                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp<asp:linkbutton runat="server" CssClass="fas fa-search" /><br />
                                <br />
                                <asp:Button id="CheckAll" CssClass="btn-block" runat="server" Text="CheckAll" />
                                &nbsp<asp:Button id="UncheckAll" CssClass="btn-block" runat="server" Text="UncheckAll" />&nbsp<asp:Button id="DeleteSelectedProducts" runat="server" CssClass="btn-danger" Text="Delete" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                                    Enter UserName : <asp:TextBox ID="txtSearch" height="30" runat="server" />
                                    <br />
                                    <asp:ImageButton ID="btnSearch" height="30" text="search" ImageUrl="~/Images/Searchbutton.png" runat="server"
                                        Style="top: 5px; position: relative" onclick="btnSearch_Click" />
                                    &nbsp;&nbsp;
                                    <asp:ImageButton ID="btnClear" height="30" ImageUrl="~/Images/Clearbutton.png"  runat="server" Style="top: 5px; position: relative"
                                        onclick="btnClear_Click" />
                                    <br />
                                    
                            </p>
                        </div>

                        <div class="col-md-12 table-responsive">
                            <div class="GridviewDiv">
                                
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped tab-content table-bordered table-hover text-center" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                                    <columns>
                                        <asp:TemplateField>

                                            <itemtemplate>
                                                <asp:CheckBox id="cbRows" runat="server"></asp:CheckBox>
                                            </itemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Id</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lblId" Font-Bold="true" Font-Size="Small" runat="server" Text='<%#Bind("Id")%>'></asp:Label>
                                            </itemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="UserName">
                                            <itemtemplate>
                                                <asp:Label ID="lblFirstname" Font-Bold="true" Font-Size="Small" Text='<%# HighlightText(Eval("PName").ToString()) %>' runat="server" />
                                            </itemtemplate>

                                            <edititemtemplate>
                                                <asp:TextBox ID="txtName" Font-Bold="true" Font-Size="Small" runat="server" Text='<%#Bind("PName") %>' MaxLength="50"></asp:TextBox>
                                            </edititemtemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Price</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lblprice" Font-Bold="true" Font-Size="Small" runat="server" Text='<%#Bind("Price") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="txtprice" Font-Bold="true" Font-Size="Small" runat="server" Text='<%#Bind("Price") %>' MaxLength="50" TextMode="Number"></asp:TextBox>
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Actual Price</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lbldiscount" Font-Bold="true" Font-Size="Small" runat="server" Text='<%#Bind("DiscountedPrice") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="txtdiscount" Font-Bold="true" Font-Size="Small" runat="server" Text='<%#Bind("DiscountedPrice") %>' MaxLength="50" TextMode="Number"></asp:TextBox>
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Category</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lblcat" Font-Bold="true" runat="server" Font-Size="Small" Text='<%#Bind("Category") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="textcat" runat="server" Font-Bold="true" Font-Size="Small" Text='<%#Bind("Category") %>' MaxLength="50"></asp:TextBox>
                                            </edititemtemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Types</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lbltypes" Font-Bold="true" runat="server" Font-Size="Small" Text='<%#Bind("Types") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="texttypes" Font-Bold="true" runat="server" Font-Size="Small" Text='<%#Bind("Types") %>' MaxLength="50"></asp:TextBox>
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Medicines Description</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lbldesc" Font-Bold="true" runat="server" Font-Size="Small" Text='<%#Bind("Description") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="textdesc" Font-Bold="true" runat="server" Font-Size="Small" Text='<%#Bind("Description") %>' TextMode="MultiLine"></asp:TextBox>
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Quantity</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lblQuantity" Font-Bold="true" runat="server" Font-Size="Small" Text='<%#Bind("Quantity") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="textQuantity" Font-Bold="true" runat="server" Font-Size="Small" Text='<%#Bind("Quantity") %>' MaxLength="50" TextMode="Number"></asp:TextBox>
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>MFG</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lblmfg" runat="server" Font-Bold="true" Font-Size="Small" Text='<%#Bind("MFGDate") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="txtmfg" runat="server" Font-Bold="true" Font-Size="Small" Text='<%#Bind("MFGDate") %>' TextMode="Date"></asp:TextBox>
                                            </edititemtemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>EXP Date</headertemplate>
                                            <itemtemplate>
                                                <asp:Label ID="lblexp" runat="server" Font-Bold="true" Font-Size="Small" Text='<%#Bind("EXPDate") %>'></asp:Label>
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:TextBox ID="txtexp" runat="server" Font-Bold="true" Font-Size="Small" Text='<%#Bind("EXPDate") %>' TextMode="Date"></asp:TextBox>
                                            </edititemtemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Photo</headertemplate>
                                            <itemtemplate>
                                                <asp:Image ID="imgPhoto" Width="100px"  CssClass="rounded-circle" Height="100px" runat="server" ImageUrl='<%#Bind("Img") %>' />
                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:Label ID="lblexp" runat="server" Text='<%#Bind("Img") %>'></asp:Label>
                                                <asp:FileUpload ID="fuPhoto" runat="server" ToolTip="select Employee Photo" />
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <headertemplate>Task To Perform</headertemplate>
                                            <itemtemplate>
                                                <asp:LinkButton ID="LinkButton2" CssClass="fas fa-edit" ToolTip="Edit" CommandName="Edit" runat="server"></asp:LinkButton>&nbsp<asp:LinkButton ID="LinkButton3" CssClass="fas fa-trash-alt" CommandName="Delete" ToolTip="Delete" OnClientClick="return confirm('Are you sure?')" runat="server"></asp:LinkButton>

                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="fas fa-edit" ToolTip="Change" CommandName="Update" runat="server"></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton4" CssClass="fas fa-times-circle" ToolTip="Cancel" CommandName="Cancel" runat="server"></asp:LinkButton>
                                               
                                            </edititemtemplate>
                                        </asp:TemplateField>







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
                                    </columns>
                                    <footerstyle forecolor="#990099" />
                                    <pagerstyle backcolor="#FFFFCC" borderstyle="Solid" height="30px" horizontalalign="Center" />
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Bharat_Medical.mdf;Integrated Security=True"
                                    DeleteCommand="DELETE FROM [Productmst] WHERE [Id] = @Id"
                                    InsertCommand="INSERT INTO [Productmst] ([PName], [Price], [Category], [Types], [Description], [Quantity], [MFGDate], [EXPDate], [Img],[DiscountedPrice]) VALUES (@PName, @Price, @Category, @Types, @Description, @Quantity, @MFGDate, @EXPDate, @Img,@DiscountedPrice)" ProviderName="System.Data.SqlClient"
                                    UpdateCommand="UPDATE [Productmst] SET [PName] = @PName, [Price] = @Price, [Category] = @Category, [Types] = @Types, [Description] = @Description, [Quantity] = @Quantity, [MFGDate] = @MFGDate, [EXPDate] = @EXPDate, [Img] = @Img,[DiscountedPrice] = @DiscountedPrice WHERE [Id] = @Id"
                                    SelectCommand="SELECT * FROM [Productmst]"
                                    FilterExpression="PName LIKE '%{0}%'">
                                    <filterparameters>
                                        <asp:ControlParameter Name="UserName" ControlID="txtSearch" PropertyName="Text" />
                                    </filterparameters>
                                    
                                    <deleteparameters>
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </deleteparameters>
                                    <insertparameters>
                                        <asp:Parameter Name="PName" Type="String" />
                                        <asp:Parameter Name="Price" Type="String" />
                                        <asp:Parameter Name="Category" Type="String" />
                                        <asp:Parameter Name="Types" Type="String" />
                                        <asp:Parameter Name="Description" Type="String" />
                                        <asp:Parameter Name="Quantity" Type="String" />
                                        <asp:Parameter Name="MFGDate" Type="String" />
                                        <asp:Parameter Name="EXPDate" Type="String" />
                                        <asp:Parameter Name="Img" Type="String" />
                                        <asp:Parameter Name="DiscountedPrice" Type="String" />
                                    </insertparameters>
                                    <updateparameters>
                                        <asp:Parameter Name="PName" Type="String" />
                                        <asp:Parameter Name="Price" Type="String" />
                                        <asp:Parameter Name="Category" Type="String" />
                                        <asp:Parameter Name="Types" Type="String" />
                                        <asp:Parameter Name="Description" Type="String" />
                                        <asp:Parameter Name="Quantity" Type="String" />
                                        <asp:Parameter Name="MFGDate" Type="String" />
                                        <asp:Parameter Name="EXPDate" Type="String" />
                                        <asp:Parameter Name="Img" Type="String" />
                                        <asp:Parameter Name="DiscountedPrice" Type="String" />
                                        <asp:Parameter Name="Id" Type="Int32" />

                                    </updateparameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>

