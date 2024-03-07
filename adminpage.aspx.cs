using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class adminpage : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;

        private void GridBind()
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "profilefacultyAll";
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.HasRows)
            {
                GridView1.DataSource = sqldr;
                GridView1.DataBind();

            }
            else
            {
                GridView1.DataSource = "";
                GridView1.DataBind();
            }
            SqlConn.Close();
        }

        private void GridBind1()
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "profilestudentAll";
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.HasRows)
            {
                GridView2.DataSource = sqldr;
                GridView2.DataBind();

            }
            else
            {
                GridView2.DataSource = "";
                GridView2.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                GridBind();
                GridBind1();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConn.Open();
            Label UID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            TextBox firstname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox lastname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox gender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
            TextBox yearsofexp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
            TextBox expertise = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
            TextBox state = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
            TextBox city = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
            TextBox location = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
            TextBox landmark = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12");
            TextBox pin = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13");
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "updatefacultyprofilebyadmin";
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = UID.Text;
            SqlCmd.Parameters.Add("@First_Name", SqlDbType.VarChar).Value = firstname.Text;
            SqlCmd.Parameters.Add("@Last_Name", SqlDbType.VarChar).Value = lastname.Text;
            SqlCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Text;
            SqlCmd.Parameters.Add("@YearsofExp", SqlDbType.BigInt).Value = yearsofexp.Text;
            SqlCmd.Parameters.Add("@Expertise", SqlDbType.VarChar).Value = expertise.Text;
            SqlCmd.Parameters.Add("@State", SqlDbType.VarChar).Value = state.Text;
            SqlCmd.Parameters.Add("@City", SqlDbType.VarChar).Value = city.Text;
            SqlCmd.Parameters.Add("@Location", SqlDbType.VarChar).Value = location.Text;
            SqlCmd.Parameters.Add("@Landmark", SqlDbType.VarChar).Value = landmark.Text;
            SqlCmd.Parameters.Add("@PINCODE", SqlDbType.BigInt).Value = pin.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView1.EditIndex = -1;
            GridBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConn.Open();
            Label UID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "deletefaculty";
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = UID.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView1.EditIndex = -1;
            GridBind();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            GridBind1();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConn.Open();
            Label UID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            TextBox firstname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox lastname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox gender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
            TextBox state = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
            TextBox city = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
            TextBox location = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
            TextBox landmark = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12");
            TextBox pin = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13");
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "updatestudentprofilebyadmin";
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = UID.Text;
            SqlCmd.Parameters.Add("@First_Name", SqlDbType.VarChar).Value = firstname.Text;
            SqlCmd.Parameters.Add("@Last_Name", SqlDbType.VarChar).Value = lastname.Text;
            SqlCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Text;
            SqlCmd.Parameters.Add("@State", SqlDbType.VarChar).Value = state.Text;
            SqlCmd.Parameters.Add("@City", SqlDbType.VarChar).Value = city.Text;
            SqlCmd.Parameters.Add("@Location", SqlDbType.VarChar).Value = location.Text;
            SqlCmd.Parameters.Add("@Landmark", SqlDbType.VarChar).Value = landmark.Text;
            SqlCmd.Parameters.Add("@PINCODE", SqlDbType.BigInt).Value = pin.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView2.EditIndex = -1;
            GridBind1();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConn.Open();
            Label UID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "deletestudent";
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = UID.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView2.EditIndex = -1;
            GridBind1();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            GridBind1();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "insert")
            {
                TextBox firstname = (TextBox)GridView1.FooterRow.FindControl("TextBox14");
                TextBox lastname = (TextBox)GridView1.FooterRow.FindControl("TextBox15");
                TextBox gender = (TextBox)GridView1.FooterRow.FindControl("TextBox16");
                TextBox mobile = (TextBox)GridView1.FooterRow.FindControl("TextBox17");
                TextBox email = (TextBox)GridView1.FooterRow.FindControl("TextBox18");
                TextBox state = (TextBox)GridView1.FooterRow.FindControl("TextBox19");
                TextBox city = (TextBox)GridView1.FooterRow.FindControl("TextBox20");
                TextBox location = (TextBox)GridView1.FooterRow.FindControl("TextBox21");
                TextBox lamdmark = (TextBox)GridView1.FooterRow.FindControl("TextBox22");
                TextBox pincode = (TextBox)GridView1.FooterRow.FindControl("TextBox23");

                SqlConn.Open();
                SqlCommand SqlCmd = new SqlCommand("SMS", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "insert_student";
                SqlCmd.Parameters.Add("@First_Name", SqlDbType.VarChar).Value = firstname.Text;
                SqlCmd.Parameters.Add("@Last_Name", SqlDbType.VarChar).Value = lastname.Text;
                SqlCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = gender.Text;
                SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.BigInt).Value = mobile.Text;
                SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = email.Text;
                SqlCmd.Parameters.Add("@State", SqlDbType.VarChar).Value = state.Text;
                SqlCmd.Parameters.Add("@City", SqlDbType.VarChar).Value = city.Text;
                SqlCmd.Parameters.Add("@Location", SqlDbType.VarChar).Value = location.Text;
                SqlCmd.Parameters.Add("@Landmark", SqlDbType.VarChar).Value = lamdmark.Text;
                SqlCmd.Parameters.Add("@PINCODE", SqlDbType.BigInt).Value = pincode.Text;
                SqlCmd.ExecuteNonQuery();
                SqlConn.Close();
                GridView2.EditIndex = -1;
                GridBind1();
            }
        }
    }
}