<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="DigitalMarketing.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body style="font-family: Arial">
    <div class="photobox" >
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <img src="photo3.png" alt="Alternate Text" class="gallery" /><h2>GALLERY</h2>
        <h2>&nbsp;</h2>
        <form id="form1" runat="server" > 
            <asp:Button ID="Button1" runat="server" Text="Return To Gallery" CssClass="btnSubmit" BorderStyle="Solid" Font-Names="Sans Serif" Height="50px" OnClick="Button1_Click" Width="200px" BorderColor="#2F95F3" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
            <br />
            <br />
        </form>
    </div>
</body>
</html>
