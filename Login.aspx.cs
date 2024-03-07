using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace SMS
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        Func obj = new Func();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "login";
            String x = TextBox1.Text;

            if (x.Contains("@"))
            {
                SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = TextBox1.Text;
            }
            else
            {
                SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.BigInt).Value = TextBox1.Text;
            }
            
            SqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = obj.EncryptString(TextBox2.Text);
           
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            
            if (sqldr.Read())
            {
                String login = Convert.ToString(sqldr["logged_in"]);
                if (login == "0" || login == "1")
                {
                    if (x.Contains("@"))
                    {
                        Session["Email"] = TextBox1.Text;
                    }
                    else
                    {
                        Session["Mobile"] = TextBox1.Text;
                    }
                    
                    Session["UserType"] = Convert.ToString(sqldr["User_Type"]);
                    Session["UserID"] = Convert.ToString(sqldr["UID"]);
                    if (sqldr["User_Type"].ToString() == "Student")
                    {
                        Session["CourseID"] = Convert.ToString(sqldr["Course_ID"]);
                    }
                    Session.Timeout = 900;
                    if (sqldr["User_Type"].ToString() == "Admin")
                    {
                        Response.Redirect("adminpage.aspx");
                    }
                    else if (sqldr["User_Type"].ToString() == "Student")
                    {
                        Response.Redirect("loginstudent.aspx");
                    }
                    else if (sqldr["User_Type"].ToString() == "Faculty")
                    {
                        Response.Redirect("Faculty.aspx");
                    }
                }
                else
                {
                    Label5.Text = "User Can Login 2 times Only";
                }     
            }
            
            else
            {
                Label5.Text = "Incorrect Credentials";
            }
        }
    }
}