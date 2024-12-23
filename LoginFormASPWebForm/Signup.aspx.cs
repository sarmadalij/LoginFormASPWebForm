using System;
using System.Configuration;
using System.Data.SqlClient;

namespace LoginFormASPWebForm
{
    public partial class Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["database"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into [User] values(@firstname,@lastname,@username,@gender,@email,@password,@address)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@firstname", FirstName.Text.ToString());
            cmd.Parameters.AddWithValue("@lastname", LastName.Text.ToString());
            cmd.Parameters.AddWithValue("@username", Username.Text.ToString());
            cmd.Parameters.AddWithValue("@gender", DropDownList1.Text.ToString());
            cmd.Parameters.AddWithValue("@email", EmailText.Text.ToString());
            cmd.Parameters.AddWithValue("@password", PasswordBox.Text.ToString());
            cmd.Parameters.AddWithValue("@address", AddressText.Text.ToString());

            con.Open();

            //int a = cmd.ExecuteNonQuery();

            //if (a > 0)
            //{
            //    Session["user"] = FirstName.Text.ToString();
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script> alert('Signup Success! \nUsername: " + Username.Text.ToString() + "\nPassword: " + PasswordBox.Text.ToString() + " ') </script>");

            //    Response.Redirect("Dashboard.aspx");

            //} else
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script> alert('Signup Failed!') </script>");

            //}

            //con.Close();

            try
            {
                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    Session["user"] = FirstName.Text.ToString();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Signup Success! \nUsername: " + Username.Text.ToString() + "\nPassword: " + PasswordBox.Text.ToString() + " ') </script>");

                    ClearAllBox();

                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Signup Failed!') </script>");
                }
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Error: " + ex.Message + "') </script>");
            }
            finally
            {
                con.Close();
            }

        }



        void ClearAllBox()
        {
            FirstName.Text = "";
            LastName.Text = "";
            Username.Text = "";
            DropDownList1.ClearSelection(); 
            EmailText.Text = "";
            PasswordBox.Text = "";
            ConfirmPasswordBox.Text = "";
            AddressText.Text = "";
        }
    }
}