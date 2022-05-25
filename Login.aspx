<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 27px">
    <form id="form1" runat="server">
    <div style="background-image: url('introduction.jpg'); height: 307px;">
    <h2>ENTER YOUR CREDENTIALS:</h2>
    EMAIL ADDRESS: 
        <asp:TextBox ID="TXTEMAIL" runat="server"></asp:TextBox><br />
        PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TXTPASS" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="btnLogin" runat="server" Text="LOGIN" 
            onclick="btnLogin_Click" />
        <br />
        <br />
        <asp:Label ID="LBLERROR" runat="server" Font-Bold="True" ForeColor="Red" 
            Visible="False"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/New_Customer.aspx" 
            Visible="False">ADD YOUR DETAILS IN NEW CUSTOMER PAGE</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
