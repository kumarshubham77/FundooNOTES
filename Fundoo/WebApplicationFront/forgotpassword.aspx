<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="FundooNotes.forgotpassword" %>

<!DOCTYPE html>
<script type="text/javascript" src="../Scripts/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/Login.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot_Passowrd</title>
    <link href ="../css/forgot.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner">
                    <h2>Forgot_Password</h2>
                    <br />
                    <div class ="email" >
                        Email here<input type ="text" placeholder="email" id ="email" /><br />
                        Password here <input type="password" id="password" /><br />
                        Re-enter Password <input type="password" />
                    </div>
                    <div>
                        <div onclick="Forgot()"> click_LOGIN</div>
                    </div>
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
