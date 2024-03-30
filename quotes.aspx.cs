using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Qerror.Text = null;
            quote1.Text = "";
            quote2.Text = "";
            quote3.Text = "";
            quote4.Text = "";
            quote5.Text = "";
            quote6.Text = "";
            writer1.Text = "";
            writer2.Text = "";
            writer3.Text = "";
            writer4.Text = "";
            writer5.Text = "";
            writer6.Text = "";     
        }
     }


    protected void QuoteUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Quotes(Q1,WQ1,Q2,WQ2,Q3,WQ3,Q4,WQ4,Q5,WQ5,Q6,WQ6)values('" + quote1.Text + "','" + writer1.Text + "','" + quote2.Text + "','" + writer2.Text + "','" + quote3.Text + "','" + writer3.Text + "','" + quote4.Text + "','" + writer4.Text + "','" + quote5.Text + "','" + writer5.Text + "','" + quote6.Text + "','" + writer6.Text + "')");
            cmd.Connection = con;
            if (quote1.Text != "" && quote2.Text != "" && quote3.Text != "" && quote4.Text != null && quote5.Text != "" && quote6.Text != "" && writer1.Text != "" && writer2.Text != "" && writer3.Text != "" && writer4.Text != "" && writer5.Text != "" && writer6.Text != "")
            {
                cmd.ExecuteNonQuery();
                Qerror.Text = "Succesully Saved";
                quote1.Text = "";
                quote2.Text = "";
                quote3.Text = "";
                quote4.Text = "";
                quote5.Text = "";
                quote6.Text = "";
                writer1.Text = "";
                writer2.Text = "";
                writer3.Text = "";
                writer4.Text = "";
                writer5.Text = "";
                writer6.Text = "";
            }
            else
            {
                Qerror.Text = "Fill  All Details First";
            }
        }
    }
}