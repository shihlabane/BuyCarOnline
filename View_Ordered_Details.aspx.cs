using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//YOUR STUDENT NO:
//YOUR NAME:
public partial class View_Ordered_Details : System.Web.UI.Page
{

    VehicleInfoClass obj = new VehicleInfoClass();
    string con = "Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True;Database=VihicleDb;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
    SqlConnection mycon;

    protected void Page_Load(object sender, EventArgs e)
    {
        //CODE HERE
        mycon = new SqlConnection(con);
        if (!Page.IsPostBack)
        {
            string email = Convert.ToString(Session["email"]);
            string pass = Convert.ToString(Session["password"]);
            mycon.Open();
            SqlDataReader read = obj.getAllCustomerData(email, pass);
            if (read.Read())
            {

                TXTCUSTNO.Text += read["CustNo"];
                TXTEMAIL.Text += read["EmailAddress"];
                TXTNAME.Text = read["LastName"].ToString() + read["FirsName"];

            }


        }
    }
}