<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <h2 class="mb-4 text-muted">All Feedback</h2>
                        <div class="card-body text-end">
                        
                        <div class="text-end">
                        <asp:Button ID="btnExport" runat="server" Width="135" OnClick="ExportToPDF" CssClass="btn-dark" Text="Export To PDF" />
                        <br />
                        <br />
                        
                        
                        </div>
                    </div>
                </div>

                        <div class="col-md-12 table-responsive">
                            <asp:GridView ID="GridView1" CssClass="table table-striped tab-content table-bordered table-hover text-center" runat="server" AutoGenerateColumns="False" DataKeyNames="FId" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="FId" HeaderText="FId" InsertVisible="False" ReadOnly="True" SortExpression="FId" />
                                    <asp:BoundField DataField="Uname" HeaderText="Name" SortExpression="Uname" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                    <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                                    <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Feedbackmst] WHERE [FId] = @FId" InsertCommand="INSERT INTO [Feedbackmst] ([Uname], [Email], [Mobile], [Subject], [Msg]) VALUES (@Uname, @Email, @Mobile, @Subject, @Msg)" SelectCommand="SELECT * FROM [Feedbackmst]" UpdateCommand="UPDATE [Feedbackmst] SET [Uname] = @Uname, [Email] = @Email, [Mobile] = @Mobile, [Subject] = @Subject, [Msg] = @Msg WHERE [FId] = @FId">
                                <DeleteParameters>
                                    <asp:Parameter Name="FId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Uname" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Mobile" Type="String" />
                                    <asp:Parameter Name="Subject" Type="String" />
                                    <asp:Parameter Name="Msg" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Uname" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Mobile" Type="String" />
                                    <asp:Parameter Name="Subject" Type="String" />
                                    <asp:Parameter Name="Msg" Type="String" />
                                    <asp:Parameter Name="FId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                        </div>

                        <br />
                    </div>
                
            </div>
        </div>
    
</asp:Content>

