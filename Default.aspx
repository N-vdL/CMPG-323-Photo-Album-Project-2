<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DigitalMarketing.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="loginbox" >
        &nbsp;<h2>LOGIN<img src="user5.png" alt="Alternate Text" class="user" /></h2>
        <br /><br />
        <form id="form1" runat="server" >
            <asp:Label Text="Email: " CssClass="lblEmail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email Here" ID="TextBox1" />
            <asp:Label Text="Password: " CssClass="lblPassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="**********" ID="TextBox2"/>
            <asp:Button Text="Sign In" CssClass="btnSubmit" runat="server" ID="btnSignIn" OnClick="btnSignIn_Click" />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="ForgotPassword.aspx" runat="server">Forgot Password?</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" CssClass="hypAccount" NavigateUrl="Register.aspx" runat="server">Don't Have An Account?</asp:HyperLink>
        </form>
    </div>
</body>
</html>
