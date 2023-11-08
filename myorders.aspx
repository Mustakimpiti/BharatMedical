<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="myorders.aspx.vb" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <a href="profile.aspx">Profile</a><span class="mx-2 mb-0">/</span> <a href="Address.aspx">Address</a> <span class="mx-2 mb-0">/</span> <a href="Changepwd.aspx">Reset-Password</a><span class="mx-2 mb-0">/</span> <strong class="text-black">My Orders</strong> </div>
            </div>
        </div>
    </div>
    <div class="wrapper ">
        <div class="auth-content">
            <center>
                <div class="card text-center" style="width: 50%;">
                    <div class="card-body">
                        <div class="mb-4">
                            <h3 class="mb-4 text-muted ">
                                <asp:Label ID="lbtitle" runat="server" Text="My Orders" Font-Bold="True"></asp:Label></h3>


                        </div>
                        <div class="card">
                            <div class="row">
                                
                                    <div class="col-md-6 form-group"></div>
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="Orderid" DataSourceID="SqlDataSource1">
                                    <ItemStyle CssClass="border-columns-seprator" />
                                    <ItemTemplate>

                                        <table>
                                            <tr>
                                                <td>
                                                    <div class="card-body text-center">
                                         <asp:ImageButton ID="ImageButton1" Width="120"   Height="180" runat="server" ImageUrl='<%#Bind("Image") %>'  />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                        <br />
                                                        <td>&nbsp&nbsp&nbsp&nbsp  Orderid:
                                        <asp:Label ID="OrderidLabel" runat="server" Text='<%# Eval("Orderid") %>' /><br />
                                                            &nbsp&nbsp&nbsp&nbsp
                                                    <asp:Label ID="Label7" Font-Bold="true" runat="server" Text="Name :"></asp:Label> <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
<br />

                                                            &nbsp&nbsp&nbsp&nbsp 
                                                    <asp:Label ID="Label4" Font-Bold="true" runat="server" Text="Price :"></asp:Label> <asp:Label ID="ProductpriceLabel" runat="server" Text='<%# Eval("Productprice") %>' />&nbsp&nbsp&nbsp&nbsp&nbsp
<br />
                                                            &nbsp&nbsp&nbsp&nbsp 
                                                    <asp:Label ID="Label5" Font-Bold="true" runat="server" Text="Quantity:"></asp:Label> <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<br />
                                                            &nbsp&nbsp&nbsp&nbsp 
                                                    <asp:Label ID="Label6" Font-Bold="true" runat="server" Text="Total:"></asp:Label><asp:Label ID="TotalamountLabel" runat="server" Text='<%# Eval("Totalamount") %>' />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<br />
                                                            
            
                                                           
                                                            &nbsp&nbsp&nbsp&nbsp 
            <%--<asp:Label ID="UAddressLabel" runat="server" Text='<%# Eval("UAddress") %>' /><br />
                                                            &nbsp&nbsp&nbsp&nbsp <asp:Label ID="Label8" runat="server" Font-Bold="true" Text="Order Date:"></asp:Label>
                                        <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Eval("OrderDate") %>' /><br />--%>
                                                            &nbsp&nbsp&nbsp&nbsp <td>
            <asp:TemplateField>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <HeaderTemplate> </HeaderTemplate>
                                        <ItemTemplate>
                                            <%# If(Eval("Orderstatus").ToString() = "Approve", "<img class='icon-colored' src='../Admin/assets/img/a1.png' style =' height:120px; width:120px;'  alt='colored-icons'>",
                                                                                                                                                                                                                                                    If(Eval("Orderstatus").ToString() = "Packed", " <img class='icon-colored' src='../Admin/assets/img/packed.png' style =' height:120px; width:120px;'  alt='colored-icons'>",
                                                                                                                                                                                                                                                    "")) %>
                                            <%# If(Eval("Orderstatus").ToString() = "Shipped", "<img class='icon-colored' src='../Admin/assets/img/ship.png' style =' height:120px; width:120px;'  alt='colored-icons'>",
                                                                                                                                                                                                                                                                                                                                                    If(Eval("Orderstatus").ToString() = "Delivered", " <img class='icon-colored' src='../Admin/assets/img/d2.jpg' style =' height:120px; width:120px;'  alt='colored-icons'>",
                                                                                                                                                                                                                                                                                                                                                    "")) %>
                                            <%# If(Eval("Orderstatus").ToString() = "Pending", " <img class='icon-colored' src='../Admin/assets/img/p2.png' style =' height:120px; width:120px;'  alt='colored-icons'>", "") %>
                                        </ItemTemplate>
                                    </asp:TemplateField><br />


                                                            &nbsp&nbsp&nbsp&nbsp   &nbsp&nbsp&nbsp&nbsp 
            <asp:Label ID="OrderstatusLabel" Font-Bold="true" Font-Size="Large" ForeColor="LimeGreen" runat="server" Text='<%# Eval("Orderstatus") %>' /><br /></td>
                                                            
                                                        </td><tr>
                                                        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Button ID="Button1"  runat="server" OnClientClick="return confirm('Are you sure you want to cancel your order?')" OnClick="OnDelete" CssClass="btn btn-primary shadow-2 mb-4" Text="Cancel" />
                                                            <asp:Button ID="Button2" CommandName="viewdetail" CommandArgument='<%# Eval("Orderid") %>' CssClass="btn btn-primary shadow-2 mb-4"  runat="server" Text="Generate Bill" />
                                                        </td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td>
                                        <br /><br />
                                                        </td></tr>
                                                    </div>
                                                    <div class="dropdown-divider"></div>
                                                    <br />
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        </div>
                                            </div>
                                              </div>
                                            </td>                                      

                                    </center>
                                    </ItemTemplate>
                                    
                                </asp:DataList></div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Ordermaster] WHERE [Orderid] = @Orderid" InsertCommand="INSERT INTO [Ordermaster] ([UName], [Umobile], [UAddress], [Pname], [Productprice], [Quantity], [Totalamount], [OrderDate], [User], [Orderstatus], [Image]) VALUES (@UName, @Umobile, @UAddress, @Pname, @Productprice, @Quantity, @Totalamount, @OrderDate, @User, @Orderstatus, @Image)" SelectCommand="SELECT * FROM [Ordermaster] WHERE ([User] = @User)" UpdateCommand="UPDATE [Ordermaster] SET [UName] = @UName, [Umobile] = @Umobile, [UAddress] = @UAddress, [Pname] = @Pname, [Productprice] = @Productprice, [Quantity] = @Quantity, [Totalamount] = @Totalamount, [OrderDate] = @OrderDate, [User] = @User, [Orderstatus] = @Orderstatus, [Image] = @Image WHERE [Orderid] = @Orderid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Orderid" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="UName" Type="String" />
                                        <asp:Parameter Name="Umobile" Type="String" />
                                        <asp:Parameter Name="UAddress" Type="String" />
                                        <asp:Parameter Name="Pname" Type="String" />
                                        <asp:Parameter Name="Productprice" Type="String" />
                                        <asp:Parameter Name="Quantity" Type="String" />
                                        <asp:Parameter Name="Totalamount" Type="String" />
                                        <asp:Parameter Name="OrderDate" Type="String" />
                                        <asp:Parameter Name="User" Type="String" />
                                        <asp:Parameter Name="Orderstatus" Type="String" />
                                        <asp:Parameter Name="Image" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter Name="User" SessionField="id" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="UName" Type="String" />
                                        <asp:Parameter Name="Umobile" Type="String" />
                                        <asp:Parameter Name="UAddress" Type="String" />
                                        <asp:Parameter Name="Pname" Type="String" />
                                        <asp:Parameter Name="Productprice" Type="String" />
                                        <asp:Parameter Name="Quantity" Type="String" />
                                        <asp:Parameter Name="Totalamount" Type="String" />
                                        <asp:Parameter Name="OrderDate" Type="String" />
                                        <asp:Parameter Name="User" Type="String" />
                                        <asp:Parameter Name="Orderstatus" Type="String" />
                                        <asp:Parameter Name="Image" Type="String" />
                                        <asp:Parameter Name="Orderid" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            
                        </div>
                    </div>
                </div>
            </center>
        </div>
    </div>
</asp:Content>

