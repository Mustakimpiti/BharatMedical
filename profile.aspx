<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="profile.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a>  <span class="mx-2 mb-0">/</span> <strong class="text-black">Profile</strong><span class="mx-2 mb-0">/</span> <a href="Address.aspx">Address</a> <span class="mx-2 mb-0">/</span> <a href="Changepwd.aspx">Reset-Password</a><span class="mx-2 mb-0">/</span> <a href="myorders.aspx">My Orders</a></div>            </div>
            </div>
        </div>
    
    <div class="wrapper ">
        <div class="auth-content">
            <center>
                <div class="card text-center" style="width: 50%;">
                    <div class="card-body">
                        <div class="mb-4">
                            <h3 class="mb-4 text-muted "> <asp:Label ID="lbtitle" runat="server" Text="Your Profile" Font-Bold="True"></asp:Label></h3>
                            <asp:Image ID="imgalt" CssClass="rounded-circle" Height="180" Width="180" runat="server" />
                            
                        </div>
                                <div>
                        <div class="row">
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="tbfname" CssClass="form-control" ToolTip="Enter First Name" required="" runat="server"></asp:TextBox>
                        </div>
                             <div class="col-md-6 form-group">
                            <asp:TextBox ID="tblname" CssClass="form-control" ToolTip="Enter First Name" required="" runat="server"></asp:TextBox>
                        </div>
                        
                             
                            <div class="col-md-6 form-group">
                            <asp:TextBox ID="tbphone" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                        </div>
                            <div class="col-md-6 form-group">
                            <asp:TextBox ID="tbemail" CssClass="form-control" runat="server" ReadOnly="True" TextMode="Email"></asp:TextBox>
                        </div>
                           <%-- <div class="col-md-6 form-group">
                            <asp:TextBox ID="tbrepass" CssClass="form-control" placeholder="Confirm Password" required="" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Check Your Password" ControlToCompare="tbrepass" ControlToValidate="tbpass"></asp:CompareValidator>
                        </div>--%>
                            <div class="col-md-12 form-group">
                            <asp:FileUpload ID="fu1" CssClass="form-control-color accordion-button" ToolTip="Change Your Picture" runat="server"></asp:FileUpload>
                        </div>

                        
                        
                        
                        </div></div><br />
                      <asp:Button ID="btnsave" cssclass="btn btn-primary shadow-2 mb-4" runat="server" Text="Save" />
                    </div>

                   <%--     <div>
                            <div class="mb-3 text-center">

                                <br />
                                <br />
                                


                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Name"></asp:Label>
                                
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Address"></asp:Label>
                                
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Mobile_NO"></asp:Label>
                                
                            </div>
                            <div class="mb-3 text-start">
                                <asp:Label for="name" CssClass="form-label" runat="server" Text="Email"></asp:Label>
                                
                            </div>
                            <asp:Button ID="btnsave" runat="server" class="btn btn-primary shadow-2 mb-4" Text="Save Changes" />
                        </div>
                    </div>--%>
                </div>
        </div>
    </div>
    
</asp:Content>

