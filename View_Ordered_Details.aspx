<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Ordered_Details.aspx.cs" Inherits="View_Ordered_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('introduction.jpg'); height: 774px;">
    <h3>VIEW CUSTOMER ORDER DETAILS</h3>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" Height="124px" 
            Width="374px">
            CUSTOMER NO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TXTCUSTNO" runat="server" Width="109px"></asp:TextBox>
            
            <br />
            CUSTOMER NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTNAME" runat="server" Width="159px"></asp:TextBox>
            <br />
            EMAILADDRESS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TXTEMAIL" runat="server" Width="158px"></asp:TextBox>
            <br />
            VEHICLE DESCRIPTION
            <asp:TextBox ID="TXTVehicelDescription" runat="server" Width="142px"></asp:TextBox>
            <br />
            
        </asp:Panel>

        <% 
           //CODE HERE

            VehicleInfoClass obj = new VehicleInfoClass();
            string con = "Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True;Database=VihicleDb;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            System.Data.SqlClient.SqlConnection mycon = new System.Data.SqlClient.SqlConnection(con);
            mycon.Open();        
            System.Data.SqlClient.SqlDataReader read = obj.GetOrderedDate(Convert.ToInt16(TXTCUSTNO.Text) );
            Response.Write("<table cellpaddinng='2' border ='2' >");
            Response.Write("<tr><h>Vehicle Description</h>" + "<h>Seling Price </h>" + "<h>Oder Date</h></tr>");
            double sellingprice = 0;
            if (read.Read())
            {
             sellingprice =Convert.ToDouble(read["SellingPrice"]);
            }
            
            double tot =0;
            do
	        {
	         Response.Write("<tr><td>" + read["VehicleDescription"] + "</td>" +"<td>"+ read["SellingPrice"] +"</td>" +"<td>" + read["Orderdate"] +"</td> </tr>");

             tot = tot + sellingprice;
                
	       } while (read.Read());
            Response.Write("<tr><td style = 'strong'>Total Oder Price </td> <td>" + tot + " </td></tr>"); 
            Response.Write("</table>");
            %>
     </div>
    </form>
</body>
</html>
