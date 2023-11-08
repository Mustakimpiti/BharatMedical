<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="site-blocks-cover" style="background-image: url('images/bg_1.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
                    <div class="site-block-cover-content text-center">
                        <%--<a href="shop.aspx">shop.aspx</a>--%>
                        <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
                        <h1>Welcome To Bharat Medical</h1>
                        <p>
                            <a href="shop.aspx" class="btn btn-primary px-5 py-3">Shop Now</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <div class="row align-items-stretch section-overlap">
                <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <div class="banner-wrap bg-primary h-100">
                        <a href="Special3.aspx" class="h-100">
                            <h5>Mega Offer
                                        <br>
                                50% Off On Medicines Let's faaaast......</h5>
                            <p>
                                We Give You Last Medicines
                                        <strong>Like education, Healthcare Also Needs To Be Given Importance.</strong>
                            </p>
                        </a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <div class="banner-wrap h-100">
                        <a href="special.aspx" class="h-100">
                            <h5>Season
                                        <br>
                                Sale 25% Off Medicines</h5>
                            <p>
                                We Are For Your Health
                                        <strong>Your Healthy Life is Our First Priority</strong>
                            </p>
                        </a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                    <div class="banner-wrap bg-warning h-100">
                        <a href="special2.aspx" class="h-100">
                            <h5>Check For
                                        <br>
                                Some 10% Off Medicines</h5>
                            <p>
                                We Are For You
                                        <strong>Be Patient With Patients Who Are Not Patient.</strong>
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section bg-light">
        <div class="container">
            <div class="row">
                <div class="title-section text-center col-12">
                    <h2 class="text-uppercase">Shop By Types</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 block-3 products-wrap">
                    <div class="nonloop-block-3 owl-carousel">
                        <div class="text-center item mb-4">
                            <a href="vitamins.aspx">
                                <img src="images/vitamins.jpg" alt="Image" height="200"></a>
                            <h3 class="text-dark"><a href="vitamins.aspx">Vitamins</a></h3>

                        </div>
                        <div class="text-center item mb-4">
                            <a href="Antibiotics.aspx">
                                <img src="images/antibiotics.jpg" alt="Image" height="200"></a>
                            <h3 class="text-dark"><a href="Antibiotics.aspx">Antibiotics</a></h3>

                        </div>
                        <div class="text-center item mb-4">
                            <a href="acidity.aspx">
                                <img src="images/antacide.png" alt="Image" height="200"></a>
                            <h3 class="text-dark"><a href="acidity.aspx">Acidity / Antacide</a></h3>

                        </div>
                        <div class="text-center item mb-4">
                            <a href="painkiller.aspx">
                                <img src="images/pain.png" alt="Image" height="200"></a>
                            <h3 class="text-dark"><a href="painkiller.aspx">Pain Killer</a></h3>

                        </div>
                        <div class="text-center item mb-4">
                            <a href="cold.aspx">
                                <img src="images/coldcough.png" alt="Image" height="200"></a>
                            <h3 class="text-dark"><a href="cold.aspx"></a>Cold-Cough</h3>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="site-section">
        <div class="container">

            <div class="card">
                <div class="card-body text-center">
                    <div class="row">
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:DropDownList CssClass="dropdown" ID="ddlcat" runat="server">
                            <asp:ListItem Text="All" Value=""></asp:ListItem>
                                    <asp:ListItem>Standard</asp:ListItem>
                                    <asp:ListItem>Generic</asp:ListItem>
                                    
                            
                        </asp:DropDownList>
                        
                        <asp:TextBox ID="tbsearch" runat="server"></asp:TextBox><br />
                        <asp:Button  runat="server" Text="Search" cssclass="btn-primary bi-mouse3-fill" OnClick="Search" BorderStyle="None" />
                        

                        <div class="col-md-12 table-responsive">
                            <asp:DataList ID="DataList1" runat="server" CellSpacing="10" CellPadding="10" RepeatColumns="5">


                                <ItemStyle HorizontalAlign="Center" />
                                <ItemTemplate>


                                    <asp:Image ID="imgPhoto" Width="180px" Height="240" runat="server" ImageUrl='<%#Bind("Img") %>' /><br />
                                    <br />

                                    <asp:Label ID="PNameLabel" runat="server" Text='<%# Eval("PName") %>' Font-Bold="True" /><br />

                                    MRP:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' Font-Overline="False" Font-Strikeout="True" />
                                    <br />
                                    DiscountedPrice:
                                <asp:Label ID="DiscountedPriceLabel" runat="server" Text='<%# Eval("DiscountedPrice") %>' ForeColor="#666666" />
                                    <br />
                                    <br />

                                </ItemTemplate>
                            </asp:DataList>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <%--<div class="container">
        <div class="card">
            <div class="card-body text-center">
                <div class="row">
                    <div class="col-md-12">
                        <h1>25% off Medicines</h1>

                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
        <div class="container">
            <div class="row align-items-stretch">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
                        <div class="banner-1-inner align-self-center">
                            <h2>Bharat Medical Products</h2>
                            <p>
                                Take Care Of Patient And Everything Else Will Follow
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_2.jpg');">
                        <div class="banner-1-inner ml-auto  align-self-center">
                            <h2>Rated by Experts</h2>
                            <p>
                                Our pharmacy has the most experienced pharmacists.
                            </p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

