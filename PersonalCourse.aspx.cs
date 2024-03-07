using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class PersonalCourse : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        long courseId;


        private void GridBind()
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "getquery";
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(Session["UserID"]);
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                courseId = Convert.ToInt64(Session["CourseID"]);
                SqlConn.Open();
                SqlCmd = new SqlCommand("SMS", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "getvideos";
                SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = courseId;

                SqlDataReader sqldr = SqlCmd.ExecuteReader();
                if (sqldr.HasRows)
                {
                    Repeater1.DataSource = sqldr;
                    Repeater1.DataBind();

                }
                else
                {
                    Repeater1.DataSource = "";
                    Repeater1.DataBind();
                }

                sqldr.Close();
                SqlConn.Close();
                GridBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            courseId = Convert.ToInt64(Session["CourseID"]);
            if (TextBox1.Text != null)
            {
                SqlConn.Open();
                SqlCmd = new SqlCommand("SMS", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "insertquery";
                SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = courseId;
                SqlCmd.Parameters.Add("@query", SqlDbType.VarChar).Value = TextBox1.Text;
                SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Session["UserID"].ToString();
                int x = SqlCmd.ExecuteNonQuery();
                if(x > 0)
                {
                    Label1.Text = "Query Raised";
                }
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConn.Open();
            Label QID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            TextBox query = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "updatequery";
            SqlCmd.Parameters.Add("@queryID", SqlDbType.Int).Value = QID.Text;
            SqlCmd.Parameters.Add("@query", SqlDbType.VarChar).Value = query.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView1.EditIndex = -1;
            GridBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConn.Open();
            Label QID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "deletequery";
            SqlCmd.Parameters.Add("@queryID", SqlDbType.Int).Value = QID.Text;
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
    }
}