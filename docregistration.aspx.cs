using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class WOW_Slider_docregistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SortedList s1 = new SortedList();
            s1.Add("Raj", "Rajasthan");
            s1.Add("Guj", "Gujarat");
            s1.Add("Mp", "Madhya Pradesh");
            s1.Add("Mah", "Maharashtra");
            s1.Add("Pun", "Punjab");
            s1.Add("Up", "Uttar Pradesh");
            s1.Add("Dl", "Delhi");
            DropDownList2.DataSource = s1.Values;
            DropDownList2.DataBind();
        }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:36646/home.aspx");
    }
}
