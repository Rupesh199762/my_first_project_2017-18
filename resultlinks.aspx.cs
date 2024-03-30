using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class admintlink : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtResultId.Text = "";
            txtInstituteName.Text = "";
            txtResultLink.Text = "";
            txtResultStatus.Text = "";
            Showrl.Text = null;
        }

    }

    protected void addResultBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into Results values('" + txtInstituteName.Text + "','" + txtResultLink.Text + "','" + txtResultStatus.Text + "')";
            cmd.Connection = con;

            if (txtInstituteName.Text != "" && txtResultLink.Text != "" && txtResultStatus.Text != "")
            {
                cmd.ExecuteNonQuery();
                Showrl.Text = "Link added succesfully";
                txtInstituteName.Text = "";
                txtResultLink.Text = "";
                txtResultStatus.Text = "";
            }
            Showrl.Text = "Something went Wrong";
        }
    }

    protected void deleteResultBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from Results where Id = ('" + txtResultId + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Showrl.Text="Link Deleted Succesfully";
        }
    }

    protected void modifyResultBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            Showrl.Text = "";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "UPDATE Results SET Institutename='" + txtInstituteName.Text+ "',Linkname='" + txtResultLink.Text + "',Status='" + txtResultStatus.Text + "'WHERE id=('" + txtResultId.Text + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Showrl.Text = "Succesfully Modified";
            txtResultId.Text = "";
            txtInstituteName.Text = "";
            txtResultLink.Text = "";
            txtResultStatus.Text = "";
        }
    }

    protected void SelectResultBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * From Results Where id='" + txtResultId.Text +"'";
            cmd.Connection = con;
            SqlDataReader admitCardDataReader = cmd.ExecuteReader();
            while (admitCardDataReader.Read())
            {
                txtInstituteName.Text = admitCardDataReader[1].ToString();
                txtResultLink.Text = admitCardDataReader[2].ToString();
                txtResultStatus.Text = admitCardDataReader[3].ToString();
            }
        }

    }
}