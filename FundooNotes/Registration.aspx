<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FundooNotes.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href ="Style.css" rel ="stylesheet" />
    <style>
        /*
            @import url('https://fonts.google.com/specimen/Crete+Round/Pacifico');
        */
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
                    <div class ="button">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Sign Up" />
                        <asp:Button ID="Button2" runat="server" CssClass="btn" Text="SignIn instead" OnClick="Sign" />
                        </div>

                </div>

            </div>
        </section>
    </form>
</body>
</html>
