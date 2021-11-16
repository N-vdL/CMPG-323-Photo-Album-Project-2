<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DigitalMarketing.Default" %>

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
                }

                else {
                    $(this).before('<input type="password" ID="TextBox2" value="' + currentPassword + '"/>');
                }
            });
        });
    </script>
</head>
<body style="font-family: Arial" >
    <div class="loginbox" >
        &nbsp;<h2>LOGIN<img src="user5.png" alt="Alternate Text" class="user" /></h2>
        <br /><br />
        <form id="form1" runat="server" >
            <asp:Label Text="Email: " CssClass="lblEmail" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email Here" ID="TextBox1" BackColor="White" BorderColor="White" BorderStyle="Solid" />
            <br />
            <asp:Label Text="Password: " CssClass="lblPassword" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" />
            <asp:TextBox type="password" runat="server" CssClass="txtPassword" placeholder="**********" ID="TextBox2" BackColor="White" BorderColor="White" BorderStyle="Solid"/>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="25px" OnCheckedChanged="CheckBox1_CheckedChanged" Width="210px" Visible="False" />
            <br />
            <br />
            <br />
            <asp:Button Text="Sign In" CssClass="btnSubmit" runat="server" ID="btnSignIn" OnClick="btnSignIn_Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="ForgotPassword.aspx" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid">Forgot Password?</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" CssClass="hypAccount" NavigateUrl="Register.aspx" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid">Don't Have An Account? Register Here!</asp:HyperLink>
        </form>
    </div>
</body>
</html>
