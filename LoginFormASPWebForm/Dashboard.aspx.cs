using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginFormASPWebForm
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Write("Welcome " + Session["user"]);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("Keep Enjoying Our site " + Session["user"]);
            }
        }
    }
}