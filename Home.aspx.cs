using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
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

        quotes();
        if (IsPostBack)
        {   string message = "Thank You For Registered With Us";
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
  
    
    public void quotes()
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["studbellConnectionString"].ConnectionString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT TOP 1 * FROM [Quotes] ORDER BY [Id] DESC";
            cmd.Connection = conn;
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                Q1.Text = "<q>" + rd.GetValue(1).ToString() + "</q>";
                WQ1.Text = "- " + rd.GetValue(2).ToString();
                Q2.Text = "<q>" + rd.GetValue(3).ToString() + "</q>";
                WQ2.Text = "- " + rd.GetValue(4).ToString();
                Q3.Text = "<q>" + rd.GetValue(5).ToString() + "</q>";
                WQ3.Text = "- " + rd.GetValue(6).ToString();
                Q4.Text = "<q>" + rd.GetValue(7).ToString() + "</q>";
                WQ4.Text = "- " + rd.GetValue(8).ToString();
                Q5.Text = "<q>" + rd.GetValue(9).ToString() + "</q>";
                WQ5.Text = "- " + rd.GetValue(10).ToString();
                Q6.Text = "<q>" + rd.GetValue(11).ToString()+ "</q>";
                WQ6.Text = "- " + rd.GetValue(12).ToString();
             }
        }
    }

    protected void B5_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("studbell.com@gmail.com");
            mail.To.Add("studbell.com@gmail.com");
            mail.Subject = Subtext.Text;
            mail.Body = "<b>Name &nbsp;</b>" + txtname.Text + "<br/>" + "<b>Email&nbsp;</b>" + Txtmail.Text + "<br/>" + "<b>Message&nbsp;</b>" + messText.Text;
            mail.IsBodyHtml = true;

            SmtpClient smtpclient = new SmtpClient("smtp.gmail.com", 587);
            smtpclient.EnableSsl = true;
            smtpclient.Credentials = new System.Net.NetworkCredential("studbell.com@gmail.com","RPJJ%244713");
            smtpclient.Send(mail);

            Subtext.Enabled = false;
            txtname.Enabled = false;
            Txtmail.Enabled = false;
            messText.Enabled = false;

            lbldpl.ForeColor = System.Drawing.Color.White;
            lbldpl.Text = "Thank You for your Suggestion";
        }
        catch (Exception)
        {
            lbldpl.Text = "somthing went wrong";      
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        LinkButton linkButton = e.CommandSource as LinkButton;
        string commandText = linkButton.Text;
        Response.Redirect("~/Pages/" + commandText + ".aspx");
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        LinkButton linkButton = e.CommandSource as LinkButton;
        string commandText = linkButton.Text;
        Response.Redirect("~/Pages/" + commandText + ".aspx");
    }

    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        LinkButton linkButton = e.CommandSource as LinkButton;
        string commandText = linkButton.Text;
        Response.Redirect("~/Pages/"+ commandText + ".aspx");
    }

    protected void registerbtn_Click(object sender, EventArgs e)
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
            Emailtxt.Text = "";
            mobtxt.Text = "";
            dob = null;

        }
    }
}
