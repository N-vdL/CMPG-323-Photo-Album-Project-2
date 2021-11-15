<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbum.aspx.cs" Inherits="DigitalMarketing.PhotoAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="photobox" >
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <h2>PHOTO ALBUM
            <img src="photo3.png" alt="Alternate Text" class="user" /></h2>
        <h2>&nbsp;</h2>
        <form id="form1" runat="server" > 
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" CssClass="btnSubmit" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btnSubmit" runat="server" OnClick="Button1_Click" Text="Upload" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" BorderColor="#3366FF" BorderStyle="Solid" Width="1000px">
            </asp:Panel>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="Default.aspx" runat="server" meta:resourcekey="HyperLink1Resource1">Sign Out Of The Digital Marketing System</asp:HyperLink>
        </form>
     </div>
</body>
</html>
