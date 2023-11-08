<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="UserReport.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <h2 class="mb-4 text-muted">User Report</h2>
                        <div class="card-body text-end">
                            
                        <div class="text-end">
                        <asp:Button ID="btnExport" runat="server" Width="135" CssClass="btn-dark" Text="Export To PDF" OnClick="ExportToPDF" />
                        <br />
                        <br />
                        
                        
                        <asp:TextBox ID="txtSearch" placeholder="User Name" cssclass="form-Control" Height="35" runat="server"></asp:TextBox>
                        
                       <asp:Button runat="server" cssclass="btn-success" Height="35" Text="Search" OnClick="Search" /></div>
                    </div>
                </div>

                        <div class="col-md-12 table-responsive">
                            <asp:GridView ID="GridView1" CssClass="table table-striped tab-content table-hover text-center"
                        runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <%--<asp:TemplateField>
                                    <itemtemplate>

                                        <asp:LinkButton ID="lbdelete" CssClass="fas fa-trash-alt" CommandName="Delete" OnClientClick="return confirm('Are you sure You Want To Delete This User?')" runat="server"></asp:LinkButton>
                                    </itemtemplate></asp:TemplateField>--%>
                                    
                                    <asp:BoundField DataField="UId" HeaderText="User Id" InsertVisible="False" ReadOnly="True" SortExpression="UId" />
                                    <asp:BoundField DataField="UFirstName" HeaderText="FirstName" SortExpression="UFirstName" />
                                    <asp:BoundField DataField="ULastName" HeaderText="LastName" SortExpression="ULastName" />
                                    <asp:BoundField DataField="UEmail" HeaderText="UserEmail" SortExpression="UEmail" />
                                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
<%--                                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />--%>
                                   <%-- <asp:ImageField DataImageUrlField="Image" ControlStyle-CssClass="rounded-circle" ControlStyle-Height="50"
                                        ControlStyle-Width="50" HeaderText="Image"
                                        SortExpression="Image">
                                        <ControlStyle Height="60px" CssClass="rounded-circle" Width="60px"></ControlStyle>
                                    </asp:ImageField>--%>
                                </Columns>
                                
                            </asp:GridView>

                            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Usermst] WHERE [UId] = @UId" InsertCommand="INSERT INTO [Usermst] ([UFirstName], [ULastName], [UEmail], [PhoneNo], [Password], [Image]) VALUES (@UFirstName, @ULastName, @UEmail, @PhoneNo, @Password, @Image)" SelectCommand="SELECT * FROM [Usermst]" UpdateCommand="UPDATE [Usermst] SET [UFirstName] = @UFirstName, [ULastName] = @ULastName, [UEmail] = @UEmail, [PhoneNo] = @PhoneNo, [Password] = @Password, [Image] = @Image WHERE [UId] = @UId">
                                <DeleteParameters>
                                    <asp:Parameter Name="UId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="UFirstName" Type="String" />
                                    <asp:Parameter Name="ULastName" Type="String" />
                                    <asp:Parameter Name="UEmail" Type="String" />
                                    <asp:Parameter Name="PhoneNo" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Image" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="UFirstName" Type="String" />
                                    <asp:Parameter Name="ULastName" Type="String" />
                                    <asp:Parameter Name="UEmail" Type="String" />
                                    <asp:Parameter Name="PhoneNo" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Image" Type="String" />
                                    <asp:Parameter Name="UId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>--%>

                        </div>

                        <br />
                    </div>
                
            </div>
        </div>
    
</asp:Content>

