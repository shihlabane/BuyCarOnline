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
public partial class Login : System.Web.UI.Page
{
    VehicleInfoClass obj = new VehicleInfoClass();
    string  con = "Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True;Database=VihicleDb;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
    SqlConnection   mycon ; 
    
    protected void btnLogin_Click(object sender, EventArgs e)
    {
     
      //CODE HERE 
      mycon =  new SqlConnection(con);
      mycon.Open();
      Boolean found = obj.IsCustomerExit(TXTEMAIL.Text, TXTPASS.Text);
      if (found == true)
      {
         
          Session["email"] = TXTEMAIL.Text;
          Session["password"] = TXTPASS.Text;
          Response.Redirect("Place_Order.aspx");
      }
      else if (found == false)
      {
          LBLERROR.Visible = true;
          LBLERROR.Text = "Please enter correct credential";
          HyperLink1.Visible = true;
         
      }

    }
}