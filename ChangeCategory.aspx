<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="ChangeCategory.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-center">
                        <h1 class="mb-3 text-muted">Edit Category</h1>

<%--                        <img src="assets/img/cat.jpg" height="100" width="100" alt="bootraper logo" class="app-logo">--%>
                        <br />
                        <br /><br /><br />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card-box">
                                    <div class="row">
                                        <div class="col-md-12 form-group ">
                                           <asp:Label for="txtCategoryName" CssClass="form-label" runat="server" Text="Category Name" Font-Bold="True"></asp:Label>
                                            <asp:TextBox ID="txtCategoryName" CssClass="form-control " runat="server"></asp:TextBox>
                                        </div>
                                        <br />
                                        
                                        <div class="col-md-12 form-group ">
                                            <br />
                                            <asp:Button ID="btnsave" CssClass="btn btn-primary  btn-bordered-primary width-xs" runat="server" Text="Save" />
                                        </div>
                                    </div>
                                </div>
                                <!-- end card-box -->
                            </div>
                            <div class="col-md-6">
                    <div class="card-box">

                        <div class="row">
                            <div class="col-md-12 form-group table-responsive"></div>
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="Category" DataSourceID="SqlDataSource1">
                                <Columns>
                                   
                                    <asp:TemplateField>
                                        <HeaderTemplate>Categories</HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblcat" runat="server" Text='<%#Bind("Category")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <HeaderTemplate>DElete</HeaderTemplate>
                                        <ItemTemplate>
                                            
                                            <asp:LinkButton ID="LinkButton3" CssClass="fas fa-trash-alt" CommandName="Delete" OnClientClick="return confirm('Are you sure?')" runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                        
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [categorymst] WHERE [Category] = @Category" InsertCommand="INSERT INTO [categorymst] ([Category]) VALUES (@Category)" SelectCommand="SELECT * FROM [categorymst]">
                                <DeleteParameters>
                                    <asp:Parameter Name="Category" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Category" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </div></div>


                        </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

