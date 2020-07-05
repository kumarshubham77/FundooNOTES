<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="FundooNotes.UserLogin" %>

<!DOCTYPE html>
<script type="text/javascript" src="../Scripts/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/Login.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login_Page</title>
    <link href ="../css/Styleone.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner">
                    <h2>Login Page</h2>
                    <br />
                    <span>Email:</span>
                    <asp:TextBox ID="email" placeholder="E-Mail" runat="server"></asp:TextBox><br />
                    <div>
                        <span>Password:</span>
                    <asp:TextBox ID="password" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
                        </div><br />
                    </div>
                <div class ="inner2">
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="forgot" Text="ForgotPassword" /><br />
                    <div onclick="Login()"> click_LOGIN</div>
                </div>
                </div>
        </section>
    </form>
</body>
</html>
