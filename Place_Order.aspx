<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Place_Order.aspx.cs" Inherits="Place_Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('introduction.jpg')">
        <asp:Panel ID="pnlCustomer" runat="server" 
            BorderStyle="Groove" Height="140px" Width="1086px">
<h4>VERIFY YOUR DETAILS BELOW AND EDIT IF NECESSARY</h4>
CUSTOMER NO:<asp:TextBox ID="TXTCUSTNO" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADDRESS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTADDRESS" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BTNUPDATE" runat="server" Text="UPDATE YOUR ACCOUNT" OnClick="BTNUPDATE_Click1" />
            <br />
            FIRSTNAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTFNAME" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PHONE NO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTPHONE" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            LASTNAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTLNAME" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMAILADDRESS<asp:TextBox ID="TXTEMAIL" runat="server"></asp:TextBox>
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;<br />
            <br />
            &nbsp;<br />


        </asp:Panel>

        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" Width="1087px">
        <h4>SELECT VEHICLE YOU WANT TO ORDER:</h4>
            <asp:GridView ID="gvVehicle" runat="server" EnableModelValidation="True" 
                BackColor="SkyBlue" onselectedindexchanged="gvVehicle_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" 
                        HeaderText="Place Order" ShowHeader="True" Text="Select Order" />
                </Columns>
            </asp:GridView>
            VEHICLE DESCRIPTION: <asp:TextBox ID="TXTVEHICLE" runat="server"></asp:TextBox>
            
            <br />
            ORDER DATE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div>
                <asp:TextBox ID="TXTORDERDATE" runat="server" 
                ontextchanged="TXTORDERDATE_TextChanged"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="17px" ImageUrl="~/images/calenda.png" OnClick="ImageButton2_Click"  />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="false"></asp:Calendar>
                
            </div>

            <br />
            <asp:Button ID="BTNORDER" runat="server" Text="SUBMIT ORDER" 
                onclick="BTNORDER_Click" />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="BTNCANCEL" runat="server" Text="CANCEL ORDER" onclick="BTNCANCEL_Click" />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BTNVIEW" runat="server" Text="VIEW YOUR ORDER DETAILS" 
                onclick="BTNVIEW_Click" />
            
        </asp:Panel>


    </div>
    </form>
</body>
</html>
