<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="Signin.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Signin</strong></div>
            </div>
        </div>
    </div>
    <div class="wrapper bg-lighter-grey">
        <div class="auth-content">
            <center>
                <div class="card text-start" style="width: 50%;">
                    <div class="card-body">
                        <div class="mb-4"><br />
<%--                            <img class="brand" height="100" width="180" src="/Admin/assets/img/main.png" alt="bootstraper logo">--%>
                            <h3 class="mb-4 text-muted "> <asp:Label ID="lbtitle" runat="server" Text="Login To Your Account" Font-Bold="True"></asp:Label></h3>
                        </div>

                        <div class="text-start">
                            
                                <div class="mb-3 text-start">
                                    <label for="tbemail" class="form-label">Email</label>
                                    <asp:TextBox ID="tbemail" CssClass="form-control" placeholder="Enter Your Email" required="" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="mb-3 text-start">
                                    <label for="tbpass" class="form-label">Password</label>

                                    <asp:TextBox ID="tbpass" CssClass="form-control" placeholder="Password" required="" runat="server" TextMode="Password"></asp:TextBox>

                                </div>
                            </div>
                            <br />
                            <asp:Button ID="btnsignin" cssclass="btn btn-primary shadow-2 mb-4" runat="server" Text="Signin" />
                        
                        <p class="mb-2 text-muted">Forgot password? <a href="Forgot.aspx">Reset</a></p>
                        <p class="mb-0 text-muted">Don't have account yet? <a href="Signup.aspx">Signup</a></p>
                        <br />
                        <asp:Label ID="lberror" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                </div>
            </center>
        </div>
    </div>
</asp:Content>

