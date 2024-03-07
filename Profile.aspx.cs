using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SMS
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                this.MasterPageFile = "Admin.Master";

            else if (Session["UserType"].ToString() == "Student")
                this.MasterPageFile = "loginStudent.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "profile";
            if (Session["Email"] != null)
            {
                SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = Session["Email"];
            }
            else
            {
                SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.VarChar).Value = Session["Mobile"];

            }

            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.Read())
            {
                Label1.Text = Convert.ToString(sqldr["Course_ID"]);
                Label2.Text = sqldr["First_Name"] +" "+ sqldr["Last_Name"];
                Label3.Text = Convert.ToString(sqldr["Gender"]);
                Label4.Text = Convert.ToString(sqldr["Mobile_No"]);
                Label5.Text = Convert.ToString(sqldr["Email_ID"]);
                Label6.Text = Convert.ToString(sqldr["State"]);
                Label7.Text = Convert.ToString(sqldr["City"]);
                Label8.Text = Convert.ToString(sqldr["Location"]);
                Label9.Text = Convert.ToString(sqldr["Landmark"]);
                Label10.Text = Convert.ToString(sqldr["PINCODE"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}