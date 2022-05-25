using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
//YOUR STUDENT NO:
//YOUR NAME:
public partial class Place_Order : System.Web.UI.Page
{
    VehicleInfoClass obj = new VehicleInfoClass();
    string con = "Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True;Database=VihicleDb;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
    SqlConnection mycon; 
    protected void Page_Load(object sender, EventArgs e)
    {
        //CODE HERE
        if (!Page.IsPostBack)
        {
          // get all data from the GetAllCustomerData display on their textbox
          mycon = new SqlConnection(con);
          mycon.Open();
            string email = Convert.ToString(Session["email"]);
            string pass = Convert.ToString(Session["password"]);
            SqlDataReader read = obj.getAllCustomerData(email, pass);
          if (read.Read())
          {
              TXTFNAME.Text += read["FirsName"];
              TXTLNAME.Text = read["LastName"].ToString();
              TXTADDRESS.Text = read["Address"].ToString();
              TXTCUSTNO.Text = read["CustNo"].ToString();
              TXTEMAIL.Text = read["EmailAddress"].ToString();
              TXTPHONE.Text = read["PhoneNo"].ToString();
              
          }
          read.Close();
          DataSet data = obj.GetAllVehicle();
          gvVehicle.DataSource = data;
          gvVehicle.DataBind();
          mycon.Close();
        }

    }
    protected void gvVehicle_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow selRow = gvVehicle.SelectedRow;
        TXTVEHICLE.Text = selRow.Cells[1].Text;
        Session["vehicle"] = TXTVEHICLE.Text;

    }
    protected void BTNORDER_Click(object sender, EventArgs e)
    {
       
        obj.CreateNewOrder(Convert.ToInt16(TXTCUSTNO.Text), TXTVEHICLE.Text, Convert.ToDateTime(TXTORDERDATE.Text));
        
    }
    protected void BTNUPDATE_Click(object sender, EventArgs e)
    {
        //CODE HERE
        obj.updateCustData(Convert.ToInt16(TXTCUSTNO.Text), TXTADDRESS.Text);
    }
    protected void BTNVIEW_Click(object sender, EventArgs e)
    {
        //CODE HERE
        Response.Redirect("View_Ordered_Details.aspx");
    }
    
    protected void BTNCANCEL_Click(object sender, EventArgs e)
    {
        //CODE HERE
        obj.CancelOrder(Convert.ToInt16(TXTCUSTNO.Text), TXTVEHICLE.Text);
    }

    protected void TXTORDERDATE_TextChanged(object sender, EventArgs e)
    {

    }

   

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TXTORDERDATE.Text = Calendar1.SelectedDate.ToString();
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void BTNUPDATE_Click1(object sender, EventArgs e)
    {
        obj.updateCustData(Convert.ToInt16(TXTCUSTNO.Text), TXTADDRESS.Text);
    }
}