using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class adminprofilepatientdata : System.Web.UI.Page
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
        string Problem = txtProblem1.Text;
        string Drprefered = txtDrprefered1.Text;
        string Name = txtName1.Text;
        string Fname = txtFname1.Text;
        string Age = txtAge1.Text;
        string Gender = txtGender1.Text;
        string Add = txtAdd1.Text;
        string State = txtState1.Text;
        string City = txtCity1.Text;
        string Pin = txtPin1.Text;
        string Email = txtEmail1.Text;
        string Phone = txtPhone1.Text;
        string Emergency = txtEmergency1.Text;


        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("patient_proc"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "INSERT");
                cmd.Parameters.AddWithValue("@Problem", Problem);
                cmd.Parameters.AddWithValue("@Drprefered", Drprefered);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Fname", Fname);
                cmd.Parameters.AddWithValue("@Age", Age);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Add", Add);
                cmd.Parameters.AddWithValue("@State", State);
                cmd.Parameters.AddWithValue("@City", City);
                cmd.Parameters.AddWithValue("@Pin", Pin);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@Emergency", Emergency);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        this.BindGrid();
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("patient_proc"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "DELETE");
                cmd.Parameters.AddWithValue("@Pid", Pid);
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

    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int Pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string Problem = (row.FindControl("txtProblem1") as TextBox).Text;
        string Drprefered = (row.FindControl("txtDrprefered1") as TextBox).Text;
        string Name = (row.FindControl("txtName1") as TextBox).Text;
        string Fname = (row.FindControl("txtFname1") as TextBox).Text;
        string Age = (row.FindControl("txtAge1") as TextBox).Text;
        string Gender = (row.FindControl("txtGender1") as TextBox).Text;
        string Add = (row.FindControl("txtAdd1") as TextBox).Text;
        string State = (row.FindControl("txtState1") as TextBox).Text;
        string City = (row.FindControl("txtCity1") as TextBox).Text;
        string Pin = (row.FindControl("txtPin1") as TextBox).Text;
        string Email = (row.FindControl("txtEmail1") as TextBox).Text;
        string Phone = (row.FindControl("txtPhone1") as TextBox).Text;
        string Emergency = (row.FindControl("txtEmergency1") as TextBox).Text;

        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("patient_proc"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "UPDATE");
                cmd.Parameters.AddWithValue("@Pid", Pid);
                cmd.Parameters.AddWithValue("@Problem", Problem);
                cmd.Parameters.AddWithValue("@Drprefered", Drprefered);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Fname", Fname);
                cmd.Parameters.AddWithValue("@Age", Age);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Add", Add);
                cmd.Parameters.AddWithValue("@State", State);
                cmd.Parameters.AddWithValue("@City", City);
                cmd.Parameters.AddWithValue("@Pin", Pin);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@Emergency", Emergency);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        GridView1.EditIndex = -1;
        this.BindGrid();
    }



    private void BindGrid()
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\shruti\Documents\Visual Studio 2013\WebSites\home\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("patient_proc");
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
   
}