using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdmitCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            uname.Text = "";
            txtdd.Text = "dd";
            txtmm.Text = "mm";
            txtyyyy.Text = "yyyy";
            Emailtxt.Text = "";
            mobtxt.Text = "";
        }
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
    }

    protected void Admitlinkbtns_click(object sender, EventArgs e)
    {
        string ctext = (sender as LinkButton).Text;
        Response.Redirect("~/Pages/" + ctext + ".aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            string dob = txtdd.SelectedValue + "/" + txtmm.SelectedValue + "/" + txtyyyy.SelectedValue;
            string numbers = mobtxt.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into [Master_Register] values('" + uname.Text + "','" + dob + "','" + Emailtxt.Text + "','" + numbers + "','" + dplqualification.SelectedValue + "','" + dl.SelectedValue + "')";

            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            uname.Text = "";
            dob = null;
            Emailtxt.Text = "";
            mobtxt.Text = "";
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
}