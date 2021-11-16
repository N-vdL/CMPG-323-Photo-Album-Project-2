<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbum.aspx.cs" Inherits="DigitalMarketing.PhotoAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body style="font-family: Arial">
    <div class="photobox" >
        &nbsp;<br />
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </h2>
        <h2>PHOTO ALBUM
            </h2>
        <form id="form1" runat="server" > 
            <br />
            <br />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" CssClass="btnSubmit" runat="server" BorderColor="#2F95F3" BorderStyle="Solid" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btnSubmit" runat="server" OnClick="Button1_Click" Text="Upload" />
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="btnSubmit" runat="server" OnClick="Button2_Click" Text="Delete" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" BorderColor="#3366FF" BorderStyle="Solid" Width="650px" BackColor="White"></asp:Panel>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="Default.aspx" runat="server" meta:resourcekey="HyperLink1Resource1" BackColor="Black" BorderColor="Black" BorderStyle="Solid">Log Out Of The Digital Marketing System</asp:HyperLink>
        </form>
            <img src="photo3.png" alt="Alternate Text" class="gallery" /></div>
    <p>
        &nbsp;</p>
</body>
</html>
