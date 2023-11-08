<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="cart.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0">
                    <a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span>
                    <strong class="text-black">Cart</strong>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-12">
                    <asp:GridView ID="GridView2" CssClass=" table text-center table-bordered site-blocks-table" runat="server" AutoGenerateColumns="False" DataKeyNames="CartId,Id1">
                        <Columns>
                            <%--<asp:BoundField DataField="CartId" HeaderText="CartId" InsertVisible="False" ReadOnly="True" SortExpression="CartId" />--%>
                             <asp:ImageField DataImageUrlField="Img" ControlStyle-Height="50"
                                ControlStyle-Width="50" HeaderText="Image">
                                <ControlStyle Height="50px" Width="50px"></ControlStyle>
                            </asp:ImageField>
                            <asp:BoundField DataField="PName" HeaderText="Product" />


                            <asp:BoundField DataField="DiscountedPrice" HeaderText="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />



                            <asp:BoundField DataField="Total" HeaderText="Total Amount" />
                            <asp:TemplateField>
                                <HeaderTemplate></HeaderTemplate>
                                <ItemTemplate>

                                    <asp:LinkButton ID="lbdelete" Text="X" CssClass="btn btn-primary height-auto btn-sm" CommandName="Delete" OnClientClick="return confirm('Are you sure?')" CausesValidation="false" runat="server"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    
                    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM Cartmst INNER JOIN Productmst ON Cartmst.Id=Productmst.Id WHERE ([User] = @User)">
                        <selectparameters>
                            <asp:SessionParameter Name="User" SessionField="id" Type="String" />
                        </selectparameters>
                    </asp:SqlDataSource>--%>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="row mb-5">
                        <div class="col-md-6 mb-3 mb-md-0">
                            <asp:Button ID="btnclear" cssclass="btn btn-primary btn-md btn-block" runat="server" Text="Clear Cart" />
                            
                        </div>
                        <div class="col-md-6">
                            <asp:Button ID="btncontinue" cssclass="btn btn-outline-primary btn-md btn-block" runat="server" Text="Continue Shopping" />
                            
                        </div>
                    </div>
                    <%--<div class="row">
                        <div class="col-md-12">
                            <label class="text-black h4" for="coupon">Coupon</label>
                            <p>Enter your coupon code if you have one.</p>
                        </div>
                        <div class="col-md-8 mb-3 mb-md-0">
                            <input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code">
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-primary btn-md px-4">Apply Coupon</button>
                        </div>
                    </div>--%>
                </div>
                <div class="col-md-6 pl-5">
                    <div class="row justify-content-end">
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-md-12 text-right border-bottom mb-5">
                                    <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                                </div>
                            </div>
                            <%--<div class="row mb-3">
                                <div class="col-md-6">
                                    <span class="text-black">Subtotal</span>
                                </div>
                                <div class="col-md-6 text-right">
                                    <strong class="text-black">$230.00</strong>
                                </div>
                            </div>--%>
                            <div class="row mb-5">
                                <div class="col-md-6">
                                    <span class="text-black">Total</span>
                                </div>
                                <div class="col-md-6 text-right">
                                    <strong class="text-black">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></strong>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Button ID="btncheckout" runat="server" cssclass="btn btn-primary btn-lg btn-block" Text="Proceed To Checkout" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
        <div class="container">
            <div class="row align-items-stretch">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
                        <div class="banner-1-inner align-self-center">
                            <h2>Pharma Products</h2>
                            <p>
                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_2.jpg');">
                        <div class="banner-1-inner ml-auto  align-self-center">
                            <h2>Rated by Experts</h2>
                            <p>
                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                            </p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

