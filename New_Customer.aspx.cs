using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
//YOUR STUDENT NO:
//YOUR NAME:
public partial class New_Customer : System.Web.UI.Page
{

    VehicleInfoClass obj = new VehicleInfoClass();
     string con = "Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True;Database=VihicleDb;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
     SqlConnection mycon;
    protected void BTNSUBMIT_Click(object sender, EventArgs e)
    {
        mycon = new SqlConnection(con);

        mycon.Open();
     
        obj.CreateNewData(TXTFNAME.Text, TXTLNAME.Text, TXTADDRESS.Text,TXTPHONE.Text, TXTEMAIL.Text, TXTPASS.Text);
        Response.Redirect("Login.aspx");
    }
}