<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="FundooNotes.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link href="../css/styletwo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="top-nav" style="background:blue;">  
                        <svg height="20" width="20" onclick="openSideNav()">  
                            <g fill="none" stroke="black" stroke-width="4">  
                                <path stroke-linecap="round" d="M5 5 l215 0" />  
                                <path stroke-linecap="round" d="M5 10 l215 0" />  
                                <path stroke-linecap="round" d="M5 15 l215 0" />  
                            </g>  
                        </svg>  
                    </nav>  
                    <div id="side-bar" class="side-nav">  
                        <ul>  
                            <li>  
                                <a href="#">Home</a>  
                            </li>  
                            <li>  
                                <a href="#">About</a>  
                            </li>  
                            <li>  
                                <a href="#">Contacts</a>  
                            </li>  
                            <li>  
                                <a href="#">Help</a>  
                            </li>  
                        </ul>  
                    </div>  
                    <div id="body-content"> Body Content here </div>  
                    <script src="../work.js"></script>
    </form>
</body>
</html>
