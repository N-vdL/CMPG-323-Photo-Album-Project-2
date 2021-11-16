<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DigitalMarketing.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <script src="jquery-1.11.2.js" ></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#CheckBox1").click(function () {
                var currentPasswordField = $('#TextBox2');
                var currentPassword = currentPasswordField.val();

                if ($(this).is(':checked')) {
                    $(this).before('<input type="text" ID="TextBox2" value="' + currentPassword + '"/>');
                    $(this).before('<input type="text" ID="TextBox5" value="' + currentPassword + '"/>');
                }

                else {
                    $(this).before('<input type="password" ID="TextBox2" value="' + currentPassword + '"/>');
                    $(this).before('<input type="password" ID="TextBox5" value="' + currentPassword + '"/>');
                }
            });
        });
    </script>
</head>
<body style="font-family: Arial" >
   <div class="photobox" >
        &nbsp;<h2>REGISTER ACCOUNT<img src="register.png" alt="Alternate Text" class="user" /></h2>
        <br />
        <form id="form1" runat="server" >
            <asp:Label Text="First Name: " CssClass="lblFirst" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" />
            <asp:TextBox runat="server" CssClass="txtFirst" placeholder="Enter First Name" ID="TextBox3" BackColor="White" />
            <asp:Label Text="Last Name: " CssClass="lblLast" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" />
            <asp:TextBox runat="server" CssClass="txtLast" placeholder="Enter Last Name" ID="TextBox4" BackColor="White" />
            <asp:Label Text="Email: " CssClass="lblEmail" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email" ID="TextBox1" BackColor="White" />
            <asp:Label Text="Password: " type="password" CssClass="lblPassword" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="**********" ID="TextBox2" BackColor="White"/>
            <asp:Label Text="Confirm Password: " CssClass="lblConfirm" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" />
            <br />
            <asp:TextBox runat="server" type="password" CssClass="txtConfirm" placeholder="Confirm Password" ID="TextBox5" BackColor="White" />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Visible="False" />
            <br />
            <br />
            <asp:Button Text="Create Account" CssClass="btnSubmit" runat="server" ID="btnCreate" OnClick="btnCreate_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="lblOutput" BackColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="Default.aspx" runat="server" BackColor="Black">Back To Login Page</asp:HyperLink>
        </form>
    </div>>
</body>
</html>
