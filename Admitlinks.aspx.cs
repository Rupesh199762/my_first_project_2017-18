using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admitlinks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtAdmitCardID.Text = "";
            txtInstitueName.Text = "";
            txtAdmitCardLink.Text = "";
            txtAdmitCardStatus.Text = "";
            Showacl.Text = "";
        }
    }

    protected void addAdmitCardBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into Admitcard values('" + txtAdmitCardLink.Text + "','" + txtAdmitCardStatus.Text + "','" + txtInstitueName.Text + "')";
            cmd.Connection = con;

            if (txtAdmitCardID.Text != "" && txtAdmitCardLink.Text != "" && txtAdmitCardStatus.Text != "" && txtInstitueName.Text != "")
            {
                cmd.ExecuteNonQuery();
                Showacl.Text = " Link Added Successfully";
            }
        }
    }

    protected void deleteAdmitCardBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from Admitcard where Id = ('" + txtAdmitCardID.Text +"')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Showacl.Text = " Link Deleted Succesfully ";
        }
    }

    protected void modifyAdmitCardBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "UPDATE Admitcard SET Institute='"+txtInstitueName.Text+"',link='"+txtAdmitCardLink.Text+"',Status='"+txtAdmitCardStatus.Text+"'WHERE Id=('" + txtAdmitCardID.Text + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Showacl.Text = "Succesfully Modified";
            txtAdmitCardID.Text = "";
            txtInstitueName.Text = "";
            txtAdmitCardLink.Text = "";
            txtAdmitCardStatus.Text = "";
        }
    }

    protected void selectAdmitCardBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * From Admitcard Where Id='" + txtAdmitCardID.Text + "'";
            cmd.Connection = con;
            SqlDataReader admitCardDataReader = cmd.ExecuteReader();
            while (admitCardDataReader.Read())
            {
                txtInstitueName.Text = admitCardDataReader[1].ToString();
                txtAdmitCardLink.Text = admitCardDataReader[2].ToString();
                txtAdmitCardStatus.Text = admitCardDataReader[3].ToString();
            }
        }
    }
}


 