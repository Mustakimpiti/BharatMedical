<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="Genaric.aspx.vb" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">GEnaric</strong></div>
            </div>
        </div>
    </div>
    <div class="bg-light py-3">
        <div class="container">
            <div class="row text-center">
                
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:DropDownList ID="ddltype" Height="35" Width="155" CssClass="form-control" ToolTip="For Type" OnSelectedIndexChanged="Search" AutoPostBack="true" runat="server">
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
                        
                        <asp:TextBox ID="tbsearch" placeholder=" Product Name" Height="35" Width="140" CssClass="form-control" runat="server"></asp:TextBox>&nbsp
                        <asp:Button  runat="server" Height="35" Text="Search" cssclass="btn btn-primary shadow-2 mb-0" OnClick="Search" BorderStyle="None" />
                
            </div>
        </div>
    </div>
    <div class="site-section bg-info-light">
        <div class="container">
            <%--<div class="row">
                <div class="col-lg-6">
                    <h3 class="mb-3 h6 text-uppercase text-black d-block">Filter by Price</h3>
                    <div id="slider-range" class="border-primary"></div>
                    <input type="text" name="text" id="amount" class="form-control border-0 pl-0 bg-white" disabled="" />
                </div>
                <div class="col-lg-6">
                    <h3 class="mb-3 h6 text-uppercase text-black d-block">Filter by Reference</h3>
                    <button type="button" class="btn btn-secondary btn-md dropdown-toggle px-4" id="dropdownMenuReference" data-toggle="dropdown">Reference</button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
                        <a class="dropdown-item" href="#">Relevance</a>
                        <a class="dropdown-item" href="#">Name, A to Z</a>
                        <a class="dropdown-item" href="#">Name, Z to A</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Price, low to high</a>
                        <a class="dropdown-item" href="#">Price, high to low</a>
                    </div>
                </div>
            </div>--%>
            <div class="card">
                <div class="card-body text-center">
                    <div class="row">
                       
                       
                        <div class="col-md-12 table-responsive">
                            <br />
                            <asp:DataList ID="DataList1" runat="server" CellSpacing="15" CellPadding="10" RepeatColumns="5">
                                
                                
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemTemplate>
                                    <div class="card">
                                        <asp:ImageButton ID="imgPhoto" Width="180px"   Height="200" runat="server" CommandName="viewdetail" CommandArgument='<%# Eval("Id") %>' ImageUrl='<%#Bind("Img") %>'  />
                                    
                                    <br />
                                    
                                <asp:Label ID="PNameLabel" runat="server" Text='<%# Eval("PName") %>' Font-Bold="True" /><br />
                                    <%--( <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("Types") %>'></asp:Label>)<br />--%>
                                    
                                    &nbsp<asp:Label ID="Label1" class="text-primary h4" runat="server" Text="-" ></asp:Label><asp:Label ID="Label2" class="text-primary h4" runat="server" Text='<%# Eval("Discount") %>' Font-Size="X-Large"  /><asp:Label ID="Label3" runat="server" Text="%" class="text-primary h4"></asp:Label>&nbsp<asp:Label ID="Label4" runat="server" Text="₹" ForeColor="Black" Font-Bold="False" Font-Size="Larger"></asp:Label><asp:Label ID="DiscountedPriceLabel" runat="server" Text='<%# Eval("DiscountedPrice") %>' ForeColor="Black" Font-Bold="False" Font-Size="Larger" /><br />
                                        M.R.P:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' Font-Overline="False" Font-Strikeout="True" />

                                    
                                    <br />
                                    <br />
<%--                                    <asp:Button ID="btnview" Text="VIEW" width="100" cssclass="btn btn-primary shadow-2 mb-0" CommandName="viewdetail" CommandArgument='<%# Eval("Id") %>' runat="server"></asp:Button><br /><br />--%>
                                    </div>   
                                </ItemTemplate>
                            </asp:DataList>

                            

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

