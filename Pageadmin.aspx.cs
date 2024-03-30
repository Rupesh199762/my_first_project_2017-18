using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Pageadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    if (Session["AdminId"] == null)
        {
            if (Session["password"] == null)
            {
                Response.Redirect("~/AdminPanel.aspx");
            }
        }
    }
        
    protected void logoutbtn_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/AdminPanel.aspx");
    }
}
