using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Loginbtn_Click(object sender, EventArgs e)
    {
           if (admintxt.Text != "" && passtxt.Text != "")
            {
            if (admintxt.Text == "StdBell" && passtxt.Text == "stud123bell")
                
                {
                Session["AdminId"] = admintxt.Text;
                Session["password"] = passtxt.Text;
                Response.Redirect("Admin/Pageadmin.aspx");
                }
            else
            {
                Loginexception.Text = "Somthing Went Wrong";
            }
             }  
        }
    }

 