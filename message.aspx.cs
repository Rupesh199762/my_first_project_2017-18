
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Net;
using System.Collections.Specialized;
using System.IO;


public partial class message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Sendmessage_Click(object sender, EventArgs e)
    {
        string message = bodymessage.Text;
        string phoneNo = numberstxt.Text;
        string url = "http://login.bulksmsgateway.in/sendmessage.php";
        string result = "";
        message = HttpUtility.UrlPathEncode(message);
        String strPost = "?user=" + HttpUtility.UrlPathEncode("studbell") + "&password=" + HttpUtility.UrlPathEncode("rpjj@05947") + "&sender=" + HttpUtility.UrlPathEncode("STDBEL") + "&mobile=" + HttpUtility.UrlPathEncode(phoneNo) + "&type=" + HttpUtility.UrlPathEncode("3") + "&message=" + message;
        StreamWriter myWriter = null;
        HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(url + strPost);
        objRequest.Method = "POST";
        objRequest.ContentLength = System.Text.Encoding.UTF8.GetByteCount(strPost);
        objRequest.ContentType = "application/x-www-form-urlencoded";
        try
        {
            myWriter = new StreamWriter(objRequest.GetRequestStream());
            myWriter.Write(strPost);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            myWriter.Close();
        }
        HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
        using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
        {
            result = sr.ReadToEnd();
            // Close and clean up the StreamReader sr.Close();
        }
        Response.Write(result);
        numberstxt.Text = "";
    }

    protected void GetSelectedRecord(object sender, EventArgs e)
    {
        CheckBox chkb = sender as CheckBox;
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (((CheckBox)row.FindControl("chk")).Checked == true)
            {  
                Label lbl = (Label)row.FindControl("Label1");
                numberstxt.Text = lbl.Text;
                }
                if(!chkb.Checked ) {
                numberstxt.Text = "";
            }
        }
    }
}












