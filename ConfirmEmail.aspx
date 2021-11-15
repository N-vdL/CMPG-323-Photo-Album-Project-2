<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmEmail.aspx.cs" Inherits="DigitalMarketing.ConfirmEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div>
        <form class="registerbox">
            <h2>VERIFICATION OF EMAIL<img src="register.png" alt="Alternate Text" class="user" /></h2>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btnSubmit" runat="server" Text="Confirm Email" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" CssClass="lblFirst" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="btnSubmit" runat="server" Text="Return To Home Page" OnClick="Button2_Click" />
        </form>
    </div>
</body>
</html>
