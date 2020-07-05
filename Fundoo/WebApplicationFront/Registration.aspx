<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FundooNotes.Registration" %>

<!DOCTYPE html>
<script type="text/javascript" src="../Scripts/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/Registration.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href ="../css/Style.css" rel="stylesheet" />
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class ="container">
                <div class ="inner1">
                    <span>Sign in using Social Networks</span><br /><br />
                    <a href="#" class="fb">Login with Facebook</a>
                    <br />
                    <a href ="#" class="google">Login with Google</a>
                    <br />
                </div>
                <div class="inner2">
                    <h3>Sign Up</h3>


                    <asp:TextBox ID="firstname" placeholder="FirstName" runat="server"></asp:TextBox>
                    <asp:TextBox ID="lastname" placeholder="LirstName" runat="server"></asp:TextBox>
                    <asp:TextBox ID="email" placeholder="E-Mail" runat="server"></asp:TextBox>
                    <asp:TextBox ID="password" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:TextBox ID="repassword" placeholder="Retype Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:TextBox ID="age" placeholder="age" runat="server"></asp:TextBox>
                    <asp:TextBox ID="gender" placeholder="Gender" runat="server"></asp:TextBox>
                    <div onclick="Registration()"> signup
                        <div><a href="UserLogin.aspx">SIGNIN INTEAD</a></div>
                    <%--<asp:Button ID="Button1"  CssClass="btn" Text="Sign Up" OnClientClick="Registration" />
                        <asp:Button ID="Button2" runat="server" CssClass="btn" Text="SignIn instead" OnClick="Sign" />--%>
                        </div>

                </div>

            </div>
        </section>
    </form>
</body>
</html>
