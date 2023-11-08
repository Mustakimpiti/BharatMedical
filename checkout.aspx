<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="checkout.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <a href="cart.aspx">Cart</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Checkout</strong></div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            
            <div class="row">
                <div class="col-md-6 mb-5 mb-md-0">
                    <h2 class="h3 mb-3 text-black">Address Details</h2>
                    <div class="p-3 p-lg-5 border">
                        <div class="row">

                            <div class="col-md-6 form-group">
                                <label for="tbfname" class="text-black">First Name <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbfname" CssClass="form-control" placeholder="Enter First Name" ReadOnly="true" required="" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="tblname" class="text-black">Last Name <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tblname" CssClass="form-control" placeholder="Enter Last Name" ReadOnly="true" required="" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="tbphone" class="text-black">Mobile No <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbphone" CssClass="form-control" placeholder="Enter Your Mobile No" ReadOnly="true" required="" runat="server" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="tbhouse" class="text-black">Flate,House No <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbhouse" CssClass="form-control" placeholder="Flate,House No" ReadOnly="true" required="" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="tbarea" class="text-black">Area,Street,Village <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbarea" CssClass="form-control" placeholder="Area,Street,Village" ReadOnly="true" required="" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="tbpincode" class="text-black">Pincode <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbpincode" CssClass="form-control" placeholder="Pincode" ReadOnly="true" required="" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="tbcity" class="text-black">City/Town <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbcity" CssClass="form-control" placeholder="City/Town" required="" ReadOnly="true" runat="server"></asp:TextBox>
                                <br />
                            </div>
                            <div class="col-md-12 form-group text-center">
                                <asp:Button ID="btnsave" CssClass="btn btn-primary shadow-2 mb-4" runat="server" Text="Change Address" />
                            </div>



                        </div>
                        <br />

                        
                    </div>
                </div>
                <div class="col-md-6">

                    <div class="row mb-5">
                        <div class="col-md-12">
                            <h2 class="h3 mb-3 text-black">Your Order</h2>
                            <div class="p-3 p-lg-5 border">


                                <asp:GridView ID="GridView2" CssClass="table text-center site-block-order-table mb-5" runat="server" AutoGenerateColumns="False" DataKeyNames="CartId,Id1">
                                    <Columns>
                                        <asp:BoundField DataField="PName" HeaderStyle-Font-Bold="true" HeaderText="Product" />
                                        <asp:BoundField DataField="DiscountedPrice" HeaderText="Price" />
                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                        <asp:BoundField DataField="Total" HeaderText="Total Amount" />
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                
                                                <asp:Image ID="img1" Width="50"  Height="50" runat="server" ImageUrl='<%#Bind("Img") %>' />

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                               <div class="row">
                                   <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Add Priscription"></asp:Label>&nbsp<br /><asp:FileUpload ID="FileUpload1" required="" CssClass="form-control" runat="server" />
                                   </div>
                                 <br />
                                <strong><asp:Label ID="Label2" runat="server" class="text-black font-weight-bold" Text="Pay When You Receive The Item"></asp:Label></strong>

                                <table class="table site-block-order-table mb-5">
                                    <tr>
                                        <td class="text-black font-weight-bold"><strong>Cart Subtotal</strong></td>
                                        <td class="text-black">
                                            <asp:Label ID="lbtotal" runat="server" Text=""></asp:Label></td>
                                    </tr>

                                    <%--                                    <tr>
                                        <td class="text-black font-weight-bold"><strong>Tax</strong></td>
                                        <td class="text-black">
                                            <asp:Label ID="lbtaxtamount" runat="server" Text=""></asp:Label></td>
                                    </tr>--%>
                                    <tr>
                                        <td class="text-black font-weight-bold"><strong>Order Total</strong></td>
                                        <td class="text-black font-weight-bold"><strong>
                                            <asp:Label ID="lbordertotal" runat="server" Text=""></asp:Label>
                                        </strong></td>
                                    </tr>
                                </table>

                                <div class="form-group">

                                    <asp:Button ID="btnorder" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Place Order" />
                                </div>
                                <%--<div class="border mb-3">
                                        <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsebank" role="button" aria-expanded="false" aria-controls="collapsebank">Direct Bank Transfer</a></h3>
                                        <div class="collapse" id="collapsebank">
                                            <div class="py-2 px-4">
                                                <p class="mb-0">
                                                    Make your payment directly into our bank account. Please use your Order ID as the
payment reference. Your order won’t be shipped until the funds have cleared in our account.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border mb-3">
                                        <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsecheque" role="button" aria-expanded="false" aria-controls="collapsecheque">Cheque Payment</a></h3>
                                        <div class="collapse" id="collapsecheque">
                                            <div class="py-2 px-4">
                                                <p class="mb-0">
                                                    Make your payment directly into our bank account. Please use your Order ID as the
payment reference. Your order won’t be shipped until the funds have cleared in our account.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border mb-5">
                                        <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsepaypal" role="button" aria-expanded="false" aria-controls="collapsepaypal">Paypal</a></h3>
                                        <div class="collapse" id="collapsepaypal">
                                            <div class="py-2 px-4">
                                                <p class="mb-0">
                                                    Make your payment directly into our bank account. Please use your Order ID as the
payment reference. Your order won’t be shipped until the funds have cleared in our account.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-lg btn-block" onclick="window.location='thankyou.html'">
                                            Place
Order</button>--%>
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

