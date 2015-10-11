using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class adminprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
           
        }
    }
    protected void Insert(object sender, EventArgs e)
    {

        
        string dates = txtdates.Text;
        string name = txtname.Text;
        string fname = txtfname.Text;
        string dob = txtdob.Text;
        string age = txtage.Text;
        string gender = txtgender.Text;
        string department = txtdepartment.Text;
        string state = txtstate.Text;
        string city = txtcity.Text;
        string pin = txtpin.Text;
        string email = txtemail.Text;
        string mobileno = txtmobileno.Text;
        string emergency = txtemergency.Text;
       

        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("doctors_proc"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "INSERT");
                cmd.Parameters.AddWithValue("@dates", dates);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@fname", fname);
                cmd.Parameters.AddWithValue("@dob", dob);
                cmd.Parameters.AddWithValue("@age", age);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@department", department);
                cmd.Parameters.AddWithValue("@state", state);
                cmd.Parameters.AddWithValue("@city", city);
                cmd.Parameters.AddWithValue("@pin", pin);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@mobileno", mobileno);
                cmd.Parameters.AddWithValue("@emergency", emergency);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        this.BindGrid();
    }

    protected void OnRowCancelingEdit(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;
        this.BindGrid();
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
        {
            (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
        }
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int docID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("doctors_proc"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "DELETE");
                cmd.Parameters.AddWithValue("@docID", docID);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        this.BindGrid();
    }


    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        this.BindGrid();
    }

    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int docID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string dates = (row.FindControl("txtdates") as TextBox).Text;
        string name = (row.FindControl("txtname") as TextBox).Text;
        string fname = (row.FindControl("txtfname") as TextBox).Text;
        string dob = (row.FindControl("txtdob") as TextBox).Text;
        string age = (row.FindControl("txtage") as TextBox).Text;
        string gender = (row.FindControl("txtgender") as TextBox).Text;
        string department = (row.FindControl("txtdepartment") as TextBox).Text;
        string state = (row.FindControl("txtstate") as TextBox).Text;
        string city = (row.FindControl("txtcity") as TextBox).Text;
        string pin = (row.FindControl("txtpin") as TextBox).Text;
        string email = (row.FindControl("txtemail") as TextBox).Text;
        string mobileno = (row.FindControl("txtmobileno") as TextBox).Text;
        string emergency = (row.FindControl("txtemergency") as TextBox).Text;

        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("doctors_proc"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "UPDATE");
                cmd.Parameters.AddWithValue("@docID", docID);
                cmd.Parameters.AddWithValue("@dates", dates);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@fname", fname);
                cmd.Parameters.AddWithValue("@dob", dob);
                cmd.Parameters.AddWithValue("@age", age);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@department", department);
                cmd.Parameters.AddWithValue("@state", state);
                cmd.Parameters.AddWithValue("@city", city);
                cmd.Parameters.AddWithValue("@pin", pin);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@mobileno", mobileno);
                cmd.Parameters.AddWithValue("@emergency", emergency);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

    }

    private void BindGrid()
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("doctors_proc");
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter();
        using (con)
        {
            using (cmd)
            {
                cmd.Parameters.AddWithValue("@Action", "SELECT");
                using (sda)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;

                    using (dt)
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:36646/adminprofilepatientdata.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://localhost:36646/adminresponse.aspx");
    }
}