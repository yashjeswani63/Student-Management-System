using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SMS
{
    public partial class ProfileFaculty : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "profilefaculty";
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
                Label2.Text = sqldr["First_Name"] + " " + sqldr["Last_Name"];
                Label3.Text = Convert.ToString(sqldr["Gender"]);
                Label4.Text = Convert.ToString(sqldr["Mobile_No"]);
                Label5.Text = Convert.ToString(sqldr["Email_ID"]);
                Label11.Text = Convert.ToString(sqldr["YearsofExp"]);
                Label12.Text = Convert.ToString(sqldr["Expertise"]);
                Label6.Text = Convert.ToString(sqldr["State"]);
                Label7.Text = Convert.ToString(sqldr["City"]);
                Label8.Text = Convert.ToString(sqldr["Location"]);
                Label9.Text = Convert.ToString(sqldr["Landmark"]);
                Label10.Text = Convert.ToString(sqldr["PINCODE"]);
            }
        }
    }
}