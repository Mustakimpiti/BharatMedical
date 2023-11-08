<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="Address.aspx.vb" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span> <a href="profile.aspx">Profile</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Address</strong> <span class="mx-2 mb-0">/</span> <a href="Changepwd.aspx">Reset-Password</a><span class="mx-2 mb-0">/</span> <a href="myorders.aspx">My Orders</a> </div>            </div>
            </div>
        </div>
    
    <div class="wrapper ">
        <div class="auth-content">
            <center>
                <div class="card text-center" style="width: 50%;">
                    <div class="card-body">
                        <div class="mb-4">
                            <h3 class="mb-4 text-muted "> <asp:Label ID="lbtitle" runat="server" Text="Change Address" Font-Bold="True"></asp:Label></h3>
                            
                            
                        </div>
                                <div>
                        <div class="row">
                        
                            <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tbfname" CssClass="form-control" placeholder="Enter First Name" ReadOnly="true" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 form-group">
                                    <asp:TextBox ID="tblname" CssClass="form-control" placeholder="Enter Last Name" ReadOnly="true" required="" runat="server"></asp:TextBox>
                                </div>
                            <div class="col-md-12 form-group">
                                    <asp:TextBox ID="tbphone" CssClass="form-control" placeholder="Enter Your Mobile No" ReadOnly="true" required="" runat="server" TextMode="Phone"></asp:TextBox>
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
                                
                        
                        
                        </div></div><br />
                      <asp:Button ID="btnsave" cssclass="btn btn-primary shadow-2 mb-4" runat="server" Text="Save" />
                    </div>

                  
                </div>
        </div>
    </div>
</asp:Content>

