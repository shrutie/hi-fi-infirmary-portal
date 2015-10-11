using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        ////if (Session["user_name"] == null || Session["user_name"] == "")
        ////{
        ////   // Label1.Text = "GUEST!";
        ////}
        ////else
        ////{
        ////    string s = Session["user_name"].ToString();
        ////    Label1.Text = s;
        ////}
        ////Response.Cache.SetNoStore();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.confirm('Please Confirm do you want to log out')</script>");
        Session.Abandon();
        Session.Clear();
        Response.Redirect("http://localhost:36646/home.aspx");
    }
}