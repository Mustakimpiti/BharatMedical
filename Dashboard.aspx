<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Dashboard.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12 page-header">
                    <div class="page-pretitle">Overview</div>
                    <h2 class="page-title">Dashboard</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-3 mt-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="icon-big text-center">
                                        <a href="Neworder.aspx"><i class="teal fas fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="detail">
                                        <p class="detail-subtitle">New Orders</p>
                                        <asp:Label id="lbpending" cssclass="number" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="footer">
                                        <hr />
                                        <div class="stats">
                                            <i class="fas fa-calendar" href=""></i> For this Week
                                        </div>
                                    </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 mt-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="icon-big text-center">
                                        <a href="Deliveredreport.aspx"><i class="blue fas fa-shipping-fast"></i></a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="detail">
                                        <p class="detail-subtitle">Delivered Orders</p>
                                        <asp:Label id="lbdelivered" cssclass="number" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="footer">
                                        <hr />
                                        <div class="stats">
                                            <i class="fas fa-calendar" href=""></i> For this Week
                                        </div>
                                    </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 mt-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="icon-big text-center">
                                        <a href="order.aspx"><i class="orange fas fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="detail">
                                        <p class="detail-subtitle">All Orders</p>
                                        <asp:Label id="lball" cssclass="number" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="footer">
                                        <hr />
                                        <div class="stats">
                                            <i class="fas fa-calendar" href=""></i> For this Week
                                        </div>
                                    </div>--%>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-6 col-lg-3 mt-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="icon-big text-center">
                                        <a href="UserReport.aspx"><i class="olive fas fa-user"></i></a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="detail">
                                        <p class="detail-subtitle">User</p>
                                        <asp:Label id="lbluser" cssclass="number" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 mt-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="icon-big text-center">
                                        <i class="violet fas fa-eye"></i>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                     <div class="detail">
                                        <p class="detail-subtitle">Number Of Visitors</p>
                                        <span class="number"><asp:Label id="lbview" runat="server" Text=""></asp:Label></span>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="footer">
                                        <hr />
                                        <div class="stats">
                                            <i class="fas fa-stopwatch"></i> For this Month
                                        </div>
                                    </div>--%>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-6 col-lg-3 mt-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="icon-big text-center">
                                        <a href="Prequest.aspx"><i class="orange fas fa-reply-all"></i></a>
                                        
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="detail">
                                        <p class="detail-subtitle">Product Request</p>
                                        <span class="number">
                                            <asp:Label id="lbrequest" runat="server" Text=""></asp:Label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="footer">
                                        <hr />
                                        <div class="stats">
                                            <i class="fas fa-envelope-open-text"></i> For this week
                                        </div>
                                    </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 mt-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="icon-big text-center">
                                        <a href="Feedback.aspx"><i class="orange fas fa-envelope"></i></a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="detail">
                                        <p class="detail-subtitle">Feedback Of Website</p>
                                        <span class="number"><asp:Label id="lbfk" runat="server" Text=""></asp:Label></span>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="footer">
                                        <hr />
                                        <div class="stats">
                                            <i class="fas fa-envelope-open-text"></i> For this week
                                        </div>
                                    </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="content">

                            <div class="head">
                                <h5 class="mb-0">Stock</h5>
                                <p class="text-muted">Check Your Stock Here</p>
                            </div>

                            <div class="canvas-wrapper">
                                <div class="mb-0 text-end">


                                    <asp:TextBox id="txtSearch" CssClass="search-bar" runat="server"></asp:TextBox>
                                    <%--<asp:DropDownList ID="txtSearch" runat="server" cssclass="selected" DataSourceID="SqlDataSource2" DataTextField="PName" DataValueField="PName"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PName] FROM [Productmst]"></asp:SqlDataSource>--%>
                                    <asp:linkbutton runat="server" CssClass="fas fa-search" OnClick="Search" />
                                </div>

                                <div class="table table-striped">

                                    <asp:GridView id="gvmed" cssclass="table table-striped" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="OnPaging" DataKeyNames="Id" PageSize="7">
                                        <columns>
                                            <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                                            <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                        </columns>
                                        <footerstyle backcolor="#993399" bordercolor="Black" forecolor="#993399" height="20px" />
                                    </asp:GridView>
                                    <%--                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [PName], [Quantity] FROM [Productmst]"></asp:SqlDataSource>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="content">
                            <div class="head">
                                <h5 class="mb-0">Out Of Stock Products</h5>
                                <p class="text-muted">Current Out Of Stock Products Details</p>
                            </div>
                            <div class="canvas-wrapper">
                                
                                    <asp:GridView ID="gvout" cssclass="table table-striped text-center" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="7">
                                        <Columns>
                                            
<%--                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                                            <asp:BoundField DataField="PName" ReadOnly="true" HeaderText="Name" SortExpression="PName" />
                                            <%--<asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                            <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />--%>
                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                            <%--<asp:BoundField DataField="MFGDate" HeaderText="MFGDate" SortExpression="MFGDate" />
                                            <asp:BoundField DataField="EXPDate" HeaderText="EXPDate" SortExpression="EXPDate" />
                                            <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
                                            <asp:BoundField DataField="DiscountedPrice" HeaderText="DiscountedPrice" SortExpression="DiscountedPrice" />
                                            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />--%>
                                             <asp:TemplateField>
                                            <headertemplate></headertemplate>
                                            <itemtemplate>
                                                <asp:LinkButton ID="LinkButton2" CssClass="fas fa-edit" ToolTip="Edit" CommandName="Edit" runat="server"></asp:LinkButton>

                                            </itemtemplate>
                                            <edititemtemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="fas fa-edit" ToolTip="Change" CommandName="Update" runat="server"></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton4" CssClass="fas fa-times-circle" ToolTip="Cancel" CommandName="Cancel" runat="server"></asp:LinkButton>
                                               
                                            </edititemtemplate>
                                        </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    

                               
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Productmst] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Productmst] ([PName], [Price], [Category], [Types], [Description], [Quantity], [MFGDate], [EXPDate], [Img], [DiscountedPrice], [Discount]) VALUES (@PName, @Price, @Category, @Types, @Description, @Quantity, @MFGDate, @EXPDate, @Img, @DiscountedPrice, @Discount)" SelectCommand="SELECT * FROM [Productmst] WHERE ([Quantity] = @Quantity)" UpdateCommand="UPDATE [Productmst] SET [Quantity] = @Quantity WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <%-- <asp:Parameter Name="PName" Type="String" />
                                            <asp:Parameter Name="Price" Type="String" />
                                            <asp:Parameter Name="Category" Type="String" />
                                            <asp:Parameter Name="Types" Type="String" />
                                            <asp:Parameter Name="Description" Type="String" />--%>
                                            <asp:Parameter Name="Quantity" Type="String" />
                                           <%-- <asp:Parameter Name="MFGDate" Type="String" />
                                            <asp:Parameter Name="EXPDate" Type="String" />
                                            <asp:Parameter Name="Img" Type="String" />
                                            <asp:Parameter Name="DiscountedPrice" Type="String" />
                                            <asp:Parameter Name="Discount" Type="String" />--%>
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="Quantity" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
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
                                            <asp:Parameter Name="Discount" Type="String" />
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    

                               
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <%--<div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="content">
                                    <div class="head">
                                        <h5 class="mb-0">Traffic Overview</h5>
                                        <p class="text-muted">Current year website visitor data</p>
                                    </div>
                                    <div class="canvas-wrapper">
                                        <canvas class="chart" id="trafficflow"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="content">
                                    <div class="head">
                                        <h5 class="mb-0">Sales Overview</h5>
                                        <p class="text-muted">Current year sales data</p>
                                    </div>
                                    <div class="canvas-wrapper">
                                        <canvas class="chart" id="sales"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>--%>
            <div class="row">
                <div class="col-sm-8 col-md-8 col-lg-4">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="dfd text-center">
                                    <i class="blue large-icon mb-2 fas fa-thumbs-up"></i>
                                    <h4 class="mb-0">+21,900</h4>
                                    <p class="text-muted">FACEBOOK PAGE LIKES</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-4">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="dfd text-center">
                                    <i class="orange large-icon mb-2 fas fa-reply-all"></i>
                                    <h4 class="mb-0">+22,566</h4>
                                    <p class="text-muted">INSTAGRAM FOLLOWERS</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-4">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="dfd text-center">
                                    <i class="grey large-icon mb-2 fas fa-envelope"></i>
                                    <h4 class="mb-0">+15,566</h4>
                                    <p class="text-muted">E-MAIL SUBSCRIBERS</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="col-sm-6 col-md-6 col-lg-3">
                    <div class="card">
                        <div class="content">
                            <div class="row">
                                <div class="dfd text-center">
                                    <i class="olive large-icon mb-2 fa"></i>
                                    <h4 class="mb-0">+98,601</h4>
                                    <p class="text-muted">TOTAL SALES</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>

