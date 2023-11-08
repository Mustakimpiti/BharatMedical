<%@ Page Title="" Language="VB" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0">
                    <a href="Home.aspx">Home</a> <span class="mx-2 mb-0">/</span>
                    <strong class="text-black">Contact</strong>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="h3 mb-5 text-black">Get In Touch</h2>
                </div>
                <div class="col-md-12">
                    <form action="#" method="post">
                        <div class="p-3 p-lg-5 border">
                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label for="c_fname" class="text-black">First Name <span class="text-danger">*</span></label>
                                    <asp:TextBox class="form-control" id="c_fname" runat="server"></asp:TextBox>                                </div>
                                <div class="col-md-6">
                                    <label for="c_lname" class="text-black">Last Name <span class="text-danger">*</span></label>
                                    <asp:TextBox class="form-control" id="c_lname" runat="server"></asp:TextBox>                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label for="c_email" class="text-black">Email <span class="text-danger">*</span></label>
                                    <asp:TextBox class="form-control" id="c_email" runat="server" TextMode="Email"></asp:TextBox>                                </div>
                            <div class="col-md-6">
                                    <label for="c_mobile" class="text-black">Mobile_No <span class="text-danger">*</span></label>
                                    <asp:TextBox class="form-control" id="c_mobile" runat="server" TextMode="Phone"></asp:TextBox>                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="c_subject" class="text-black">Subject </label>
                                    <asp:TextBox class="form-control" id="c_subject" runat="server"></asp:TextBox>                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="c_message" class="text-black">Message </label>
                                    <asp:TextBox id="c_message" cols="30" rows="7" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-lg-12">
                                    <asp:Button id="btnsend" class="btn btn-primary btn-lg btn-block" runat="server" Text="Send" />                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="site-section bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-white mb-4">Offices</h2>
                </div>
                <div class="col-lg-4">
                    <div class="p-4 bg-white mb-3 rounded">
                        <span class="d-block text-black h6 text-uppercase">New York</span>
                        <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="p-4 bg-white mb-3 rounded">
                        <span class="d-block text-black h6 text-uppercase">London</span>
                        <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="p-4 bg-white mb-3 rounded">
                        <span class="d-block text-black h6 text-uppercase">Canada</span>
                        <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>

