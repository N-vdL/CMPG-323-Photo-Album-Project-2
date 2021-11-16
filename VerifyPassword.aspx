<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerifyPassword.aspx.cs" Inherits="DigitalMarketing.VerifyPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body style="font-family: Arial" >
    <div class="registerbox" >
        <form id="form1" runat="server">
            <h2>&nbsp;</h2>
            <h2>VERIFIFICATION OF PASSWORD<img src="lock4.png" alt="Alternate Text" class="user" /></h2>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <br />
            <asp:Button ID="Button1" CssClass="btnSubmit" runat="server" Text="Confirm Password" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" CssClass="lblFirst" runat="server" Text="Label" BackColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="btnSubmit" runat="server" Text="Return To Home Page" OnClick="Button2_Click" />
        </form>
    </div>
</body>
</html>
