<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Addproduct.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-center">

                        <h1 class="mb-3 text-muted" >Add Medicines</h1>

                        <br />
                        <%--<div class="mb-3 text-center">
                                <img src="assets/img/insert.png" height="100" width="100" alt="bootraper logo" class="app-logo">

                                

                            </div>--%>
                        <div>
                            <div class="row">
                            <div class="col-md-6 form-group">
                                
                                <asp:TextBox ID="tbpname" CssClass="form-control" required="" placeholder="Enter Product Name" runat="server" ToolTip="Enter Product Name"></asp:TextBox>
                            </div>
                                 <div class="col-md-6 form-group">
                                
                                <asp:TextBox ID="tbqty" CssClass="form-control" ToolTip="Enter Product Quantity" placeholder="Enter Product Quantity" required="" runat="server" TextMode="Number"></asp:TextBox>
                                     <br />
                            </div>
                            
                            <div class="col-md-6 form-group">
                                
                                <asp:DropDownList ID="DL1" ToolTip="Select Category"  CssClass="form-select" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="Category">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Standard</asp:ListItem>
                                    <asp:ListItem>Generic</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Bharat_Medical.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [categorymst]"></asp:SqlDataSource>
                            </div>
                            <div class="col-md-6 form-group">
                                
                                <asp:DropDownList ID="dltype" ToolTip="Select Type Of Medicine" CssClass="form-select" runat="server">
                                    <asp:ListItem>Antibiotics</asp:ListItem>
                                    <asp:ListItem>Pain Killer</asp:ListItem>
                                    <asp:ListItem>Cold</asp:ListItem>
                                    <asp:ListItem>Blood pressure</asp:ListItem>
                                    <asp:ListItem>Diabetic</asp:ListItem>
                                    <asp:ListItem>Sugar</asp:ListItem>
                                    <asp:ListItem>Acidity</asp:ListItem>
                                    <asp:ListItem>Vitamins</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </div>
                                
                               
                                <div class="col-md-6 form-group">
                                
                                <asp:TextBox ID="tbprice" ToolTip="Enter Product Price" placeholder="Enter Product Price" CssClass="form-control" required="" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                                 <div class="col-md-6 form-group">
                                
                                <asp:TextBox ID="tbdiscount" ToolTip="Enter Product Discount %" placeholder="Enter Product Discount %" CssClass="form-control" required="" runat="server" TextMode="Number"></asp:TextBox>
                            <br />
                                 </div>

                               
                            <div class="col-md-6 form-group">
                                
                                <asp:TextBox ID="tbmfg" ToolTip="Enter Product MFGDate" CssClass="form-control" required="" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group">
                                
                                <asp:TextBox ID="tbexp" CssClass="form-control" ToolTip="Enter Product EXPIRYDate" placeholder="Enter Product Discription" runat="server" required="" TextMode="Date"></asp:TextBox>
                           <br />
                                </div>
                                 <div class="mb-3 text-start">
                                
                                <asp:TextBox ID="tbdesc" ToolTip="Enter Product Discription" placeholder="Enter Product Discription" CssClass="form-control" required="" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            
                            
                            <div class="mb-3 text-start">
                                <asp:Label for="fu1" Font-Bold="True" CssClass="form-label" runat="server" Text="Product image"></asp:Label>&nbsp
                        <asp:FileUpload ID="fu1" CssClass="form-control" required="" runat="server"></asp:FileUpload>
                            </div>
                                </div>


                            <asp:Button ID="btninsert" runat="server" class="btn btn-primary shadow-2 mb-4" Text="ADD PRODUCT" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

