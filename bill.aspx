<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="bill.aspx.vb" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <h2 class="mb-4 text-muted"><br /><br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" ForeColor="Black" Text="Bill Details"></asp:Label></h2>
                        <div class="card-body text-end">
                        
                        <div class="text-end">
                        <br />
                             <div class="col-md-12 table-responsive">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table text-center table-dark site-blocks-table" DataKeyNames="Orderid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Orderid" HeaderText="Orderid" InsertVisible="False" ReadOnly="True" SortExpression="Orderid" />
             <asp:TemplateField ItemStyle-HorizontalAlign="Left">
                                            <HeaderTemplate>
                                                User Details
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <i class="fas fa-user-alt " title="User Name"></i><%# Eval("UName") %><br />
                                                <i class="fas fa-mobile-alt " title="Mobile No"></i><%# Eval("Umobile") %><br />
                                                
                                            </ItemTemplate>
                                        </asp:TemplateField>
            
            <asp:BoundField DataField="UAddress" HeaderText="Delivery Address" SortExpression="UAddress" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Productprice" HeaderText="Productprice" SortExpression="Productprice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Totalamount" HeaderText="Totalamount" SortExpression="Totalamount" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
<%--            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />--%>
<%--            <asp:BoundField DataField="Orderstatus" HeaderText="Orderstatus" SortExpression="Orderstatus" />--%>
<%--            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />--%>
<%--            <asp:BoundField DataField="Priscription" HeaderText="Priscription" SortExpression="Priscription" />--%>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Ordermaster] WHERE [Orderid] = @Orderid" InsertCommand="INSERT INTO [Ordermaster] ([UName], [Umobile], [UAddress], [Pname], [Productprice], [Quantity], [Totalamount], [OrderDate], [User], [Orderstatus], [Image], [Priscription]) VALUES (@UName, @Umobile, @UAddress, @Pname, @Productprice, @Quantity, @Totalamount, @OrderDate, @User, @Orderstatus, @Image, @Priscription)" SelectCommand="SELECT * FROM [Ordermaster] WHERE ([Orderid] = @Orderid)" UpdateCommand="UPDATE [Ordermaster] SET [UName] = @UName, [Umobile] = @Umobile, [UAddress] = @UAddress, [Pname] = @Pname, [Productprice] = @Productprice, [Quantity] = @Quantity, [Totalamount] = @Totalamount, [OrderDate] = @OrderDate, [User] = @User, [Orderstatus] = @Orderstatus, [Image] = @Image, [Priscription] = @Priscription WHERE [Orderid] = @Orderid">
        <DeleteParameters>
            <asp:Parameter Name="Orderid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Umobile" Type="String" />
            <asp:Parameter Name="UAddress" Type="String" />
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Productprice" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="Totalamount" Type="String" />
            <asp:Parameter Name="OrderDate" Type="String" />
            <asp:Parameter Name="User" Type="String" />
            <asp:Parameter Name="Orderstatus" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Priscription" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Orderid" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Umobile" Type="String" />
            <asp:Parameter Name="UAddress" Type="String" />
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Productprice" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="Totalamount" Type="String" />
            <asp:Parameter Name="OrderDate" Type="String" />
            <asp:Parameter Name="User" Type="String" />
            <asp:Parameter Name="Orderstatus" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Priscription" Type="String" />
            <asp:Parameter Name="Orderid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource><br />
                                                         <asp:Button ID="btnExport" Width="150"  CssClass="btn btn-primary shadow-2 mb-0" runat="server" Text="Download Bill" OnClick="ExportToPDF" />

                                 </div></div></div></div></div></div></div>
</asp:Content>

