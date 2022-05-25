<%@ Page Language="C#" AutoEventWireup="true" CodeFile="New_Customer.aspx.cs" Inherits="New_Customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('introduction.jpg')">
    <h2>NEW CUSTOMER REGISTRATION FORM</h2>
        FIRSTNAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTFNAME" runat="server"></asp:TextBox>
        <br />
        LASTNAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TXTLNAME" runat="server"></asp:TextBox>
        <br />
        ADDRESS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TXTADDRESS" runat="server"></asp:TextBox>
        <br />
        PHONE NO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TXTPHONE" runat="server"></asp:TextBox>
        <br />
        EMAILADDRESS:<asp:TextBox ID="TXTEMAIL" runat="server"></asp:TextBox>
        <br />
       PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TXTPASS" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BTNSUBMIT" runat="server" Text="SUBMIT" 
            onclick="BTNSUBMIT_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
