<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="DigitalMarketing.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="loginbox" >
        <h2>CHANGE PASSWORD?<img src="lock4.png" alt="Alternate Text" class="user" /></h2>
        <br />
        <form id="form1" runat="server" >            
            <asp:Label Text="Email: " CssClass="lblEmail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email" ID="TextBox1" />
            <asp:Label Text="Confirm Email: " CssClass="lblConfirmEmail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtConfirmEmail" placeholder="Confirm Email" ID="TextBox6" />
            <asp:Button Text="Send Link" CssClass="btnSubmit" runat="server" ID="btnSignIn" OnClick="btnSignIn_Click" />
            <asp:Label ID="Label1" Text="" CssClass="lblOutput" runat="server" Visible="True"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="Default.aspx" runat="server">Back To Login Page</asp:HyperLink>
            <br />
            <br />
           </form>
    </div>>
</body>
</html>
