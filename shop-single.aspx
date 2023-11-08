<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="shop-single.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <a href="shop.aspx">Store</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Cart</strong></div>
            </div>
        </div>
    </div>
    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mr-auto">
                    <div class="border text-center">
                        <%--<img src="images/product_07_large.png" alt="Image" class="img-fluid p-5">--%>
                        <asp:Image ID="imgmed" CssClass="img-fluid p-0" Height="400" runat="server"></asp:Image>
                    </div>
                </div>
                <div class="col-md-6">
                    <h2 class="text-black">
                        <asp:Label ID="lbname" runat="server" Text=""></asp:Label>
                    </h2>
                    <h5 class="text-black">(<asp:Label ID="lbtype" runat="server" Text=""></asp:Label>)
                    </h5>
                    <p>
                        <asp:Label runat="server" ID="lbdes" Text=""></asp:Label>
                    </p>
                                         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image1" CssClass="image" src="/Admin/assets/img/out.png" Height="220" Width="400" runat="server" /><br />
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<div class="row"><asp:Button ID="notify" Font-Bold="true" runat="server" CssClass="buy-now btn btn-sm height-auto px-4 py-3 btn-primary" Text="Notify Me" />&nbsp&nbsp&nbsp<asp:TextBox CssClass="form-control" placeholder="Enter Email" Width="300" ID="tbnot" required="" runat="server" TextMode="Email"></asp:TextBox></div>

                    <p>
                        <asp:Label ID="lbdis" runat="server" Text="" Font-Size="XX-Large" ForeColor="Red" Font-Italic="False">
                            </asp:Label>
                        &nbsp<strong class="text-primary h4">
                            <asp:Label runat="server" ID="lbactual" Text="" Font-Size="XX-Large" Font-Bold="false" ForeColor="Black"></asp:Label>
                        </strong>
                        <br />
                        <asp:Label ID="lbmrp" runat="server" Text="M.R.P :"></asp:Label>&nbsp<del>
                            <asp:Label ID="lbprice" runat="server" Text=""></asp:Label><br />

                        </del>
                        <asp:Label ID="Label1" runat="server" Text="Inclusive of all taxes" ForeColor="#333333"></asp:Label>
                    </p>
                    <div class="mb-5">
                        <div class="input-group mb-3" style="max-width: 220px;">
                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                            </asp:DropDownList>
                           
<%--                            <asp:TextBox CssClass="form-control" placeholder="Quantity" ID="DropDownList1" runat="server" Text="1" TextMode="SingleLine"></asp:TextBox>--%>
                        </div>
                    </div>
                    <%--<asp:Label ID="lbshow" CssClass="label" runat="server" Text="" Font-Size="XX-Large" Font-Bold="True" ForeColor="#FF3300"></asp:Label>--%>
                    
                    <p>
                        <asp:Button ID="btncart" CssClass="buy-now btn btn-sm height-auto px-4 py-3 btn-primary" runat="server" Text="ADD TO CART" />
                    </p>

                </div>
            </div>

        </div>
        <br />
        <br />
        <div class="container site-blocks-1 border-0">
            <div class="row">
                <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="">
                    <div class="icon mr-4 align-self-start">
                        <span class="icon-truck text-primary"></span>
                    </div>
                    <div class="text">
                        <h2>Bharat Medical Delivered</h2>
                        <p>
                            Your Product/Medicine Will Be Delivered By Our Trusted Delivery Boys .
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="icon mr-4 align-self-start">
                        <span class="icon-refresh2 text-primary"></span>
                    </div>
                    <div class="text">
                        <h2>7 days Returnable</h2>
                        <p>
                            If You Have Any Issue Regarding To Our Medicines Then You Can Return It In 7 Days Widhout Any Cost .
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="icon mr-4 align-self-start">
                        <span class="icon-money text-primary"></span>
                    </div>
                    <div class="text">
                        <h2>Cash On Delivery</h2>
                        <p>
                            Cash On Delivery Available So You Can Pay After Getting The Medicines In Your Hand.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>

