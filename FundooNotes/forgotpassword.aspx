<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="FundooNotes.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot_Passowrd</title>
    <link href="forgot.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner">
                    <h2>Forgot_Password</h2>
                    <br />
                    <span>Enter Your Email</span>
                    <asp:TextBox ID="email" placeholder="E-Mail" runat="server"></asp:TextBox><br />
                   <br />
                <div class ="inner2">
                <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Click here" />
            </div>
                </div>
                </div>
        </section>
    </form>
</body>
</html>
