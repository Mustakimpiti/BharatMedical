<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="CartId" HeaderText="CartId" InsertVisible="False" ReadOnly="True" SortExpression="CartId" />
            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
            <asp:BoundField DataField="DiscountedPrice" HeaderText="DiscountedPrice" SortExpression="DiscountedPrice" />
            <asp:TemplateField>
                <HeaderTemplate>EXP Date</HeaderTemplate>
                <ItemTemplate>
                    <div class="input-group mb-3" style="max-width: 120px;">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                        </div>
                        <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                        <div class="input-group-append">
                            <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                        </div>
                    </div>
                </ItemTemplate>

            </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM Cartmst INNER JOIN Productmst ON Cartmst.Id=Productmst.Id WHERE ([User] = @User)">
        <SelectParameters>
            <asp:SessionParameter Name="User" SessionField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CartId,Id1" >
        <Columns>
            <asp:BoundField DataField="CartId" HeaderText="CartId" InsertVisible="False" ReadOnly="True" SortExpression="CartId" />
            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="Id1" HeaderText="Id1" InsertVisible="False" ReadOnly="True" SortExpression="Id1" />
            <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Quantity1" HeaderText="Quantity1" SortExpression="Quantity1" />
            <asp:BoundField DataField="MFGDate" HeaderText="MFGDate" SortExpression="MFGDate" />
            <asp:BoundField DataField="EXPDate" HeaderText="EXPDate" SortExpression="EXPDate" />
            <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
            <asp:BoundField DataField="DiscountedPrice" HeaderText="DiscountedPrice" SortExpression="DiscountedPrice" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
            <asp:TemplateField>
                                <HeaderTemplate></HeaderTemplate>
                                <ItemTemplate>
                                    
                                    <asp:LinkButton ID="lbdelete" Text="X" CssClass="btn btn-primary height-auto btn-sm"  CommandName="Delete" OnClientClick="return confirm('Are you sure?')" CausesValidation="false" runat="server"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
        </Columns>
    </asp:GridView>
<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM Cartmst INNER JOIN Productmst ON Cartmst.Id=Productmst.Id "></asp:SqlDataSource>--%>

    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="Orderid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Orderid" HeaderText="Orderid" InsertVisible="False" ReadOnly="True" SortExpression="Orderid" />
            <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
            <asp:BoundField DataField="Umobile" HeaderText="Umobile" SortExpression="Umobile" />
            <asp:BoundField DataField="UAddress" HeaderText="UAddress" SortExpression="UAddress" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Productprice" HeaderText="Productprice" SortExpression="Productprice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Totalamount" HeaderText="Totalamount" SortExpression="Totalamount" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
            <asp:BoundField DataField="Orderstatus" HeaderText="Orderstatus" SortExpression="Orderstatus" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Ordermaster] WHERE [Orderid] = @Orderid" InsertCommand="INSERT INTO [Ordermaster] ([UName], [Umobile], [UAddress], [Pname], [Productprice], [Quantity], [Totalamount], [OrderDate], [User], [Orderstatus], [Image]) VALUES (@UName, @Umobile, @UAddress, @Pname, @Productprice, @Quantity, @Totalamount, @OrderDate, @User, @Orderstatus, @Image)" SelectCommand="SELECT * FROM [Ordermaster]" UpdateCommand="UPDATE [Ordermaster] SET [UName] = @UName, [Umobile] = @Umobile, [UAddress] = @UAddress, [Pname] = @Pname, [Productprice] = @Productprice, [Quantity] = @Quantity, [Totalamount] = @Totalamount, [OrderDate] = @OrderDate, [User] = @User, [Orderstatus] = @Orderstatus, [Image] = @Image WHERE [Orderid] = @Orderid">
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
        </InsertParameters>
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
            <asp:Parameter Name="Orderid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

