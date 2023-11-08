<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Bharat Medical</title>
    <link href="/Admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/Admin/assets/css/auth.css" rel="stylesheet"/>
    <style type="text/css">
        div.image {
            background: url("/Admin/assets/img/newbac.jpg");
            width: 100%;
            height: auto;
            background-repeat:round;
        }
    </style>
    <%--<style>
        .errLabel {
            color: red;
        }

        .errorBorder {
            border-color: red;
        }
    </style>

    <script>
        $(document).ready(function () {
            $("#<%= btnlogin.ClientID %>").click(function () {
                var Cnt = 0;
                Cnt = isEmpty("<%= txtFullName.ClientID  %>", "lblFullName", Cnt);
                Cnt = isEmpty("<%= txtCNo.ClientID  %>", "lblCNo", Cnt);
                Cnt = isEmpty("<%= txtAadharNo.ClientID  %>", "lblAadharNo", Cnt);
                Cnt = isEmpty("<%= tbemail.ClientID  %>", "lblEmail", Cnt);
                Cnt = isEmpty("<%= txtLicenseNo.ClientID  %>", "lblLicenseNo", Cnt);
                Cnt = isEmpty("<%= txtLicenseExpiry.ClientID  %>", "lblLicenseExpiry", Cnt);
                Cnt = isEmpty("<%= txtSalary.ClientID  %>", "lblSalary", Cnt);
                Cnt = isEmpty("<%= txtDOJ.ClientID  %>", "lblDOJ", Cnt);
                Cnt = CheckContactNo("<%= txtCNo.ClientID  %>", "lblCno2", Cnt);
                Cnt = CheckFutureDate("<%= txtLicenseExpiry.ClientID  %>", "lblLicense2", Cnt);
                Cnt = EmailValidation("<%= txtEmail.ClientID  %>", "lblEmail2", Cnt);

                if (Cnt == 0) {
                    return true;
                }
                else {
                    return false;
                }
            });
    <script>
        function CheckContactNo(txtName, lblName, Cnt) {
            var Value = $("#" + txtName).val();
            if (Value != "") {
                if (Value.length == 10) {
                    $("#" + lblName).text("*");
                    $("#" + txtName).removeClass("errorBorder");

                }
                else {
                    Cnt++;
                    $("#" + lblName).text("*Not More then 10 Digit");
                    $("#" + txtName).addClass("errorBorder");
                }
            }

            return Cnt;
        }
    </script>--%>


</head>
<body>
    <form id="form1" runat="server">
        <div class="image">
            <div class="wrapper">
                <div class="auth-content">

                    <div class="card-body text-center">
                        <div class="mb-4">
                            <img class="brand" src="/Admin/assets/img/main.png" height="100" width="180" alt="bootstraper logo">
                        </div>
                        <h3 class="mb-4 text-muted">Login to your account</h3>
                        <form>
                            <div class="mb-3 text-start">
                                <span >Email adress</span>
                                <%--<input type="email" class="form-control" placeholder="Enter Email" required>--%>
                                <asp:TextBox ID="tbemail" CssClass="form-control" runat="server" required="" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="mb-3 text-start">
                                <span>Password</span>
                                <asp:TextBox ID="tbpass" CssClass="form-control" runat="server" required="" TextMode="Password"></asp:TextBox>
                            </div>
                            <%--<div class="mb-3 text-start">
                                <div class="form-check">
                                    <input class="form-check-input" name="remember" type="checkbox" value="" id="check1">
                                    <label class="form-check-label" for="check1">
                                        Remember me on this device
                             
                                    </label>
                                </div>
                            </div>--%>
                            <%--                            <button class="btn btn-primary shadow-2 mb-4">Login</button>--%>
                            <asp:Button ID="btnlogin" CssClass="btn btn-primary shadow-2 mb-4" runat="server" Text="Login" />
                        </form>
                        <p class="mb-2 text-muted">Forgot password? <a href="Forgotpwd.aspx">Know</a></p>
                        <%--<p class="mb-0 text-muted">Don't have account yet? <a href="signup.html">Signup</a></p>--%>
                    </div>
                </div>
            </div>
        </div>
        <script src="/Admin/assets/vendor/jquery/jquery.min.js"></script>
        <script src="/Admin/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
