<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DigitalMarketing.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
   <div class="registerbox" >
        &nbsp;<h2>REGISTER ACCOUNT<img src="register.png" alt="Alternate Text" class="user" /></h2>
        <br />
        <form id="form1" runat="server" >
            <asp:Label Text="First Name: " CssClass="lblFirst" runat="server" />
            <asp:TextBox runat="server" CssClass="txtFirst" placeholder="Enter First Name" ID="TextBox3" />
            <asp:Label Text="Last Name: " CssClass="lblLast" runat="server" />
            <asp:TextBox runat="server" CssClass="txtLast" placeholder="Enter Last Name" ID="TextBox4" />
            <asp:Label Text="Email: " CssClass="lblEmail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email" ID="TextBox1" />
            <asp:Label Text="Password: " CssClass="lblPassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="**********" ID="TextBox2"/>
            <asp:Label Text="Confirm Password: " CssClass="lblConfirm" runat="server" />
            <asp:TextBox runat="server" CssClass="txtConfirm" placeholder="Confirm Password" ID="TextBox5" />
            <asp:Button Text="Create Account" CssClass="btnSubmit" runat="server" ID="btnCreate" OnClick="btnCreate_Click" />
            <asp:Label ID="Label1" runat="server" Text="" CssClass="lblOutput" Visible="True"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="Default.aspx" runat="server">Back To Login Page</asp:HyperLink>
        </form>
    </div>>
</body>
</html>
