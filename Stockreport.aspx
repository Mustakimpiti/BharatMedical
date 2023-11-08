<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Stockreport.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <h2 class="mb-4 text-muted">Stock Report</h2>
                        <div class="card-body text-end">
                        
                        <div class="text-end">
                        <asp:Button ID="btnExport" Width="135" CssClass="btn-dark" runat="server" Text="Export To PDF" OnClick="ExportToPDF" />
                        <br />
                        <br />
                        &nbsp&nbsp<asp:DropDownList ID="ddlcat" cssclass="form-Control" Height="35" AutoPostBack="true" OnSelectedIndexChanged="Search" ToolTip="For Category" runat="server">
                            <asp:ListItem Text="All" Value=""></asp:ListItem>
                                    <asp:ListItem>Standard</asp:ListItem>
                                    <asp:ListItem>Generic</asp:ListItem>
                                    
                            
                        </asp:DropDownList>&nbsp<asp:DropDownList OnSelectedIndexChanged="Search" cssclass="form-Control" Height="35" ID="ddltype" ToolTip="For Type" AutoPostBack="true" runat="server">
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
                        
                        <asp:TextBox ID="txtSearch" cssclass="form-Control" Height="35" runat="server"></asp:TextBox>
                        
                        <asp:Button runat="server" CssClass="btn-success" Height="35" Text="Search" OnClick="Search" /></div>
                    </div>
                </div>
                <div class="col-md-12 table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table text-center table-bordered site-blocks-table"
                        runat="server" AutoGenerateColumns="false" >
                        <Columns>

                            <asp:BoundField DataField="Id" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="PName" HeaderText="Product Name" SortExpression="PName" />
                            <asp:BoundField DataField="Quantity" HeaderText="Available Stock" SortExpression="Quantity" />
                        </Columns>

                    </asp:GridView>
                    
                </div>
            </div>
        </div>

    </div>

</asp:Content>

