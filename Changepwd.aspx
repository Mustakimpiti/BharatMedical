<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="Changepwd.aspx.vb" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                 <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <a href="profile.aspx">Profile</a><span class="mx-2 mb-0">/</span> <a href="Address.aspx">Address</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Reset-Password</strong><span class="mx-2 mb-0">/</span> <a href="myorders.aspx">My Orders</a></div> </div>
            </div>
        </div>
    
    <div class="wrapper">
        <div class="auth-content">
            <center>
                <div class="card text-center" style="width: 50%;">
                    <div class="card-body">
                        <div class="card-body">
                        <div class="mb-4"><br />
                            <h3 class="mb-4 text-muted "> <asp:Label ID="lbtitle" runat="server" Text="Change Password" Font-Bold="True"></asp:Label></h3>
                            
                            
                        </div>

                        <div>
                            
                                <div class="mb-3 text-start">
                                    <asp:TextBox ID="tbpass" CssClass="form-control" placeholder="Old Password" required="" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="mb-3 text-start">

                                    <asp:TextBox ID="tbnew" CssClass="form-control" placeholder="New Password" required="" runat="server" TextMode="Password"></asp:TextBox>

                                </div>
                            <div class="mb-3 text-start">

                                    <asp:TextBox ID="tbconfirm" CssClass="form-control" placeholder="Confirm Password" required="" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Your Password" ControlToValidate="tbconfirm" ControlToCompare="tbnew" Font-Underline="True" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>

                                </div>
                            </div>
                            
                            <asp:Button ID="btnsave" cssclass="btn btn-primary shadow-2 mb-4" runat="server" Text="Save" />
                        
                        <%--<p class="mb-2 text-muted">Forgot password? <a href="forgot-password.html">Reset</a></p>
                        <p class="mb-0 text-muted">Don't have account yet? <a href="Signup.aspx">Signup</a></p>
                        <br />--%>
<%--                        <asp:Label ID="lberror" runat="server" Text="" ForeColor="Red"></asp:Label>--%>
                    </div>
                </div>
                    </div>
            </center>
        
    </div></div>
   
</asp:Content>

