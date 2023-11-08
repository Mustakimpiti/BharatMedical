<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Changpwd.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" href="Dashboard.aspx" aria-selected="false">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="Profile.aspx" aria-selected="false">Contact</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="Changpwd.aspx" aria-selected="true">Change Password</a>
            </li>
        </ul>
    </div>
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-center">
                        <h2 class="mb-4 text-muted">Change Your Password</h2>
                        <form>
                            <div class="mb-3 text-center">
<%--                                <img src="assets/img/main.png" height="50" width="200" alt="bootraper logo" class="app-logo">--%>

                                

                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Old Password" ></asp:Label>
                                <asp:TextBox ID="tbpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="New Password"></asp:Label>
                                <asp:TextBox ID="tbnew" required="" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Confirm Password"></asp:Label>
                                <asp:TextBox ID="tbconfirm" required="" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Your Password" ControlToValidate="tbconfirm" ControlToCompare="tbnew" Font-Underline="True" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>

                            </div>
                            <asp:Button ID="btnsave" runat="server" class="btn btn-primary shadow-2 mb-4" Text="Save Changes" />
                                <asp:Label ID="Label1" Visible="false" runat="server" Text="Label"></asp:Label>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

