using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            for (int i = 1950; i <= 2018; i++)
            {
                txtyyyy.Items.Add(i.ToString());
            }


            for (int i = 1; i <= 12; i++)
            {
                txtmm.Items.Add(i.ToString());
            }

            for (int i = 1; i <= 31; i++)
            {
                txtdd.Items.Add(i.ToString());
            }
        }
        if (IsPostBack)
        {
            string message = "Thank You For Registered With Us";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

    }


    protected void Linkbtnresult_Click(object sender, EventArgs e)
    {
        string ctext = (sender as LinkButton).Text;
        Response.Redirect("~/Pages/"+ctext+".aspx");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            string dob = txtdd.SelectedValue + "/" + txtmm.SelectedValue + "/" + txtyyyy.SelectedValue;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into [Master_Register] values('" + uname.Text + "','" + dob + "','" + Emailtxt.Text + "','" + mobtxt.Text + "','" + dplqualification.SelectedValue + "','" + dl.SelectedValue + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            uname.Text = "";
            dob = null;
            Emailtxt.Text = "";
            mobtxt.Text = "";


        }
    }
}