<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" href="Dashboard.aspx" aria-selected="false">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="Profile.aspx" aria-selected="true">Contact</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Changpwd.aspx" aria-selected="false">Change Password</a>
            </li>
        </ul>
    </div>
    <div class="content">
        <div class="container">

            <div class="auth-content">
                <div class="card">
                    <div class="card-body text-center">
                        <h2 class="mb-4 text-muted">YOUR PROFILE</h2>
                        <form>
                            <div class="mb-3 text-center">
                                <asp:Image ID="imgalt" CssClass="rounded-circle" Height="180" Width="180" runat="server" />
                                <br />
                                <br />
                                <asp:FileUpload id="fu1" CssClass="form-control" runat="server"></asp:FileUpload>


                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Name"></asp:Label>
                                <asp:TextBox ID="tbfullname" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Address"></asp:Label>
                                <asp:TextBox ID="tbaddress" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Mobile_NO"></asp:Label>
                                <asp:TextBox ID="tbphone" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Email"></asp:Label>
                                <asp:TextBox ID="tbemail" CssClass="form-control" runat="server" ReadOnly="True" TextMode="Email"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnsave" runat="server" class="btn btn-primary shadow-2 mb-4" Text="Save Changes" />
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>











</asp:Content>

