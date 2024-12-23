using System;
using System.Configuration;
using System.Data.SqlClient;

namespace LoginFormASPWebForm
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["database"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            string query = "select * from [User] where username = @user and password= @pass";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);

            con.Open();

            SqlDataReader sdr =  cmd.ExecuteReader();

            if (sdr.HasRows)
            {
                Session["user"] = TextBox1.Text;

                Response.Redirect("Dashboard.aspx");

               // Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Login Success') </script>");
            } 
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Login Failed') </script>");
            }

            con.Close();


        }
    }
}