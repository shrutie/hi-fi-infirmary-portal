using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Net.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void drsubmit_Click(object sender, EventArgs e)
    {



        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from doctors where name=@1 and docID=@2", con);
        cmd.Parameters.AddWithValue("@1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@2", TextBox2.Text);
        SqlDataReader sdr = cmd.ExecuteReader();

        if(sdr.Read())
        {
            Session["name"] = TextBox1.Text;
            Response.Redirect("home.aspx");
        }
        
        else
        {
            Response.Write("<script type='text/javascript'>alert('error');</script>");
        }




    }

    protected void asubmit_Click(object sender, EventArgs e)
    {
        string st = "vanquish";
        string st2 = "12345";


        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from doctors where name=admin and docID=9", con);
        cmd.Parameters.AddWithValue("@1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@2", TextBox2.Text);
        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.Read())
        {
            Session["name"] = TextBox1.Text;
            Response.Redirect("http://localhost:36646/adminprofile.aspx");
        }

        else
        {
            Response.Write("<script type='text/javascript'>alert('error');</script>");
        }


    }
    protected void psubmit_Click(object sender, EventArgs e)
    {



        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from patient where Name=@1 and Pid=@2", con);
        cmd.Parameters.AddWithValue("@1", TextBox5.Text);
        cmd.Parameters.AddWithValue("@2", TextBox6.Text);
        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.Read())
        {
            Session["name"] = TextBox5.Text;
            Response.Redirect("home.aspx");
        }

        else
        {
            Response.Write("<script type='text/javascript'>alert('error');</script>");
        }
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:36646/adminprofile.aspx");
    }
}