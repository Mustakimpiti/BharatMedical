<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="Signup.aspx.vb" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Signup</strong></div>
            </div>
        </div>
    </div>
    <div class="wrapper bg-lighter-grey">
        <div class="auth-content">
            <center>
                <div class="card text-center" style="width: 50%;">
                    <div class="card-body">
                        <div class="mb-4"><br />
                            <%--                            <img class="brand" height="100" width="180" src="/Admin/assets/img/main.png" alt="bootstraper logo">--%>
                            <%--                            <h6 class="mb-4 text-muted">Create new account</h6>--%>
                            <h3 class="mb-4 text-muted ">
                                <asp:Label ID="Label1" runat="server" Text="Create new account" Font-Bold="True"></asp:Label></h3>

                        </div>

                        <div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbfname" CssClass="form-control" placeholder="Enter First Name" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tblname" CssClass="form-control" placeholder="Enter Last Name" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group">
                                    <asp:TextBox ID="tbemail" CssClass="form-control" placeholder="Enter Your Email" required="" runat="server" TextMode="Email"></asp:TextBox>
                                </div>

                                <div class="col-md-12 form-group">
                                    <asp:TextBox ID="tbphone" CssClass="form-control" placeholder="Enter Your Mobile No" required="" runat="server" TextMode="Phone"></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group">
                                    <asp:FileUpload CssClass="btn btn-block" ToolTip="Upload Your Profile Image" ID="fuimg" runat="server" />
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbpass" CssClass="form-control" placeholder="Create Your Password" required="" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbrepass" CssClass="form-control" placeholder="Confirm Password" required="" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Your Password" ControlToValidate="tbrepass" ControlToCompare="tbpass" Font-Underline="True" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
                                </div>
                                <div class="col-md-12 form-group">
                                    <asp:Label ID="lbtitle" runat="server" Text="Fill Your Address" Font-Bold="True"></asp:Label>
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbhouse" CssClass="form-control" placeholder="Flate,House No" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbarea" CssClass="form-control" placeholder="Area,Street,Village" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbpincode" CssClass="form-control" placeholder="Pincode" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbcity" CssClass="form-control" placeholder="City/Town" required="" runat="server"></asp:TextBox>
                                </div>





                            </div>
                        </div>
                        <br />
                        <asp:Button ID="btnsignup" CssClass="btn btn-primary shadow-2 mb-4" runat="server" Text="Signup" />
                    </div>
                    <p class="mb-0 text-muted">Allready have an account? <a href="Signin.aspx">Log in</a></p>
                </div>
            </center>
        </div>
    </div>

</asp:Content>

