using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addprivatelink_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into GovtJobs values('" + joblink.Text + "','" + Postname.Text + "','" + advertismentnum.Text + "','" + agelimit.Text + "','" + start.Text + "','" + last.Text + "','" + pdffileupload + "')";
            cmd.Connection = con;

            if (joblink.Text != "" && Postname.Text != "" && advertismentnum.Text != "" && agelimit.Text != "" && start.Text != "" && last.Text != "")
            {
                cmd.ExecuteNonQuery();
                Lblreult.Text = "succesfully inserted";
                joblink.Text = "";
                Postname.Text = "";
                advertismentnum.Text = "";
                agelimit.Text = "";
                start.Text = "";
                last.Text = "";


            }
            else
            {
                Lblreult.Text = "All fields are mandetory to filled";
            }
        }
    }


    protected void Btndeljob_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from GovtJobs where id = '" + JobId.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Lblreult.Text = "succesfully Deleted";
            JobId.Text = "";
        }
    }

    protected void addgovt_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into PrivateJob  values('" + InameTxt.Text + "','" + Pnametxt.Text + "','" + numofposttxt.Text + "','" + agelimittxt.Text + "','" + salerytxt.Text + "','" + citytxt.Text + "')";
            cmd.Connection = con;

            if (InameTxt.Text != null && Pnametxt.Text != null && numofposttxt.Text != null && agelimittxt.Text != null && salerytxt.Text != null && citytxt.Text != null)
            {
                cmd.ExecuteNonQuery();
                Lblreult.Text = "succesfully inserted";
                InameTxt.Text = "";
                Pnametxt.Text = "";
                numofposttxt.Text = "";
                agelimittxt.Text = "";
                salerytxt.Text = "";
                citytxt.Text = "";
            }
            else
            {
                Lblreult.Text = "fill All fields";
            }
        }
    }

    protected void DelPJ_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from GovtJobs where Id = '" + PJId.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Lblreult.Text = "succesfully Deleted";
            PJId.Text = "";
        }
    }

    protected void UPDatePJ0_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * From PrivateJob Where id='" + PJId.Text + "'";
            cmd.Connection = con;
            SqlDataReader Reader = cmd.ExecuteReader();
            while (Reader.Read())
            {
                InameTxt.Text = Reader[1].ToString();
                Pnametxt.Text = Reader[2].ToString();
                numofposttxt.Text = Reader[3].ToString();
                agelimittxt.Text = Reader[4].ToString();
                salerytxt.Text = Reader[5].ToString();
                citytxt.Text = Reader[6].ToString();
            }
        }

    }

    protected void UPDatePJ_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "UPDATE PrivateJob SET Name='" + InameTxt.Text + "',Post='" + Pnametxt.Text + "',[No.ofpost]='" + numofposttxt.Text + "',age='" + agelimittxt.Text + "',Salery='" + salerytxt.Text + "',City='" + citytxt.Text + "' WHERE id=('" + PJId.Text + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            PJId.Text = "";
            InameTxt.Text = "";
            Pnametxt.Text = "";
            numofposttxt.Text ="";
            agelimittxt.Text = "";
            salerytxt.Text = "";
            citytxt.Text = "";
        }
    }

    protected void Selectgjob_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * From GovtJobs Where id='" + JobId.Text + "'";
            cmd.Connection = con;
            SqlDataReader Reader = cmd.ExecuteReader();

            while (Reader.Read())
            {
                joblink.Text = Reader[1].ToString();
                Postname.Text = Reader[2].ToString();
                advertismentnum.Text = Reader[3].ToString();
                agelimit.Text = Reader[4].ToString();
                start.Text = Reader[5].ToString();
                last.Text = Reader[6].ToString();
                
            }
        }

    }

    protected void updategjob_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "UPDATE GovtJobs SET Name='" + joblink.Text + "',[Post Name]='" + Postname.Text + "',[Adv. No./Date]='" + advertismentnum.Text + "',Age='" + agelimit.Text + "',StarDate='" + start.Text + "',LastDate='" + last.Text + "' WHERE id=('" + JobId.Text + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            
            JobId.Text = "";
            joblink.Text = "";
            Postname.Text = "";
            advertismentnum.Text = "";
            start.Text = "";
            last.Text = "";
            agelimit.Text = "";
        }
    }
}
