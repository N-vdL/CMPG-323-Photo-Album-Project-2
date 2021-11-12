<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photos.aspx.cs" Inherits="DigitalMarketing.Photos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
   <div class="photobox" >
        &nbsp;<h2>PHOTO ALBUM<img src="photo3.png" alt="Alternate Text" class="user" /></h2>
        <h2>&nbsp;</h2>
        <form id="form1" runat="server" >            
            <asp:Button Text="Create Photos" CssClass="btnSubmit" runat="server" ID="btnCreate" OnClick="btnSignIn_Click" />
            <asp:Button Text="View Photos" CssClass="btnSubmit" runat="server" ID="btnView" OnClick="btnSignIn_Click" />
            <asp:Button Text="Share Photos" CssClass="btnSubmit" runat="server" ID="btnShare" OnClick="btnSignIn_Click" />
            <asp:Button Text="Delete Photos" CssClass="btnSubmit" runat="server" ID="btnDelete" OnClick="btnSignIn_Click" />
            <asp:Button Text="Download Photos" CssClass="btnSubmit" runat="server" ID="btnDownload" OnClick="btnSignIn_Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" CssClass="hypForgot" NavigateUrl="Default.aspx" runat="server">Sign Out Of The Digital Marketing System</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" CssClass="lblOutput" runat="server"></asp:GridView>
            <br />
            <br />
           </form>
    </div>>
</body>
</html>
