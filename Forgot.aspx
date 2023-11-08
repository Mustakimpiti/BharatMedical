<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Forgot.aspx.vb" Inherits="user_Forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Bharat Medical </title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet"./>
    <link rel="stylesheet" href="../user/fonts/icomoon/style.css"/>
    <link rel="stylesheet" href="../user/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../user/css/magnific-popup.css"/>
    <link rel="stylesheet" href="../user/css/jquery-ui.css"/>
    <link rel="stylesheet" href="../user/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="../user/css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="../user/css/aos.css"/>
    <link rel="stylesheet" href="../user/css/style.css"/>
    <script nonce="77f451dd-a87e-4fed-ae35-bd7908afd3b0">(function (w, d) { !function (cM, cN, cO, cP) { cM.zarazData = cM.zarazData || {}; cM.zarazData.executed = []; cM.zaraz = { deferred: [], listeners: [] }; cM.zaraz.q = []; cM.zaraz._f = function (cQ) { return function () { var cR = Array.prototype.slice.call(arguments); cM.zaraz.q.push({ m: cQ, a: cR }) } }; for (const cS of ["track", "set", "debug"]) cM.zaraz[cS] = cM.zaraz._f(cS); cM.zaraz.init = () => { var cT = cN.getElementsByTagName(cP)[0], cU = cN.createElement(cP), cV = cN.getElementsByTagName("title")[0]; cV && (cM.zarazData.t = cN.getElementsByTagName("title")[0].text); cM.zarazData.x = Math.random(); cM.zarazData.w = cM.screen.width; cM.zarazData.h = cM.screen.height; cM.zarazData.j = cM.innerHeight; cM.zarazData.e = cM.innerWidth; cM.zarazData.l = cM.location.href; cM.zarazData.r = cN.referrer; cM.zarazData.k = cM.screen.colorDepth; cM.zarazData.n = cN.characterSet; cM.zarazData.o = (new Date).getTimezoneOffset(); if (cM.dataLayer) for (const cZ of Object.entries(Object.entries(dataLayer).reduce(((c_, da) => ({ ...c_[1], ...da[1] }))))) zaraz.set(cZ[0], cZ[1], { scope: "page" }); cM.zarazData.q = []; for (; cM.zaraz.q.length;) { const db = cM.zaraz.q.shift(); cM.zarazData.q.push(db) } cU.defer = !0; for (const dc of [localStorage, sessionStorage]) Object.keys(dc || {}).filter((de => de.startsWith("_zaraz_"))).forEach((dd => { try { cM.zarazData["z_" + dd.slice(7)] = JSON.parse(dc.getItem(dd)) } catch { cM.zarazData["z_" + dd.slice(7)] = dc.getItem(dd) } })); cU.referrerPolicy = "origin"; cU.src = "../../cdn-cgi/zaraz/sd0d9.js?z=" + btoa(encodeURIComponent(JSON.stringify(cM.zarazData))); cT.parentNode.insertBefore(cU, cT) };["complete", "interactive"].includes(cN.readyState) ? zaraz.init() : cM.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, 0, "script"); })(window, document);

    </script></head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper bg-lighter-grey">
        <div class="auth-content">
            <center>
                <div class="card text-start" style="width: 50%;">
                    <div class="card-body"><br /><br /><br /><br /><br /><br /><br />
                        <div class="mb-4">
                            <h3 class="mb-4 text-muted "> <asp:Label ID="lbtitle" runat="server" Text="Know Your Password" Font-Bold="True"></asp:Label></h3>
                            
                            
                        </div>
                        
                        <div class="text-start">
                            
                                <div class="mb-3 text-start">
                                    <label for="tbemail" class="form-label">Email</label>
                                    <asp:TextBox ID="tbemail" CssClass="form-control" placeholder="Enter Your Email" required="" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                                
                            <br />
                            <asp:Button ID="btnsave" cssclass="btn btn-primary shadow-2 mb-4" runat="server" Text="Remind Me" /><br />
                        <p class="mb-2 text-muted">Click For <a href="Signin.aspx">Signin</a></p>
                        
                    </div>
                </div></div>
            </center>
        </div>
    </div>
    </form>
</body>
</html>
