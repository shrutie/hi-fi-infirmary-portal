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
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Net.Mail;
using System.Net.Security;
using System.IO;
using System.Text;


public partial class patientregistration : System.Web.UI.Page
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
        
        SortedList s2 = new SortedList();
        if (DropDownList2.SelectedItem.ToString() == "Rajasthan")
        {
            city.Items.Clear();
            s2.Add("Jp", "Jaipur");
            s2.Add("Kt", "Kota");
            s2.Add("Aj", "Ajmer");
            s2.Add("Jd", "Jodhpur");
            city.DataSource = s2.Values;
            city.DataBind();
        
        }
        else if (DropDownList2.SelectedItem.ToString() == "Gujarat")
        {
            city.Items.Clear();
            s2.Add("Ah", "Ahmedabad");
            s2.Add("Sr", "Surat");
            s2.Add("Vd", "Vodadara");
            s2.Add("Rj", "Rajkot");
            city.DataSource = s2.Values;
            city.DataBind();
        }
        else if (DropDownList2.SelectedItem.ToString() == "Madhya Pradesh")
        {
            city.Items.Clear();
            s2.Add("In", "Indore");
            s2.Add("Uj", "Ujjain");
            s2.Add("Bh", "Bhopal");
            s2.Add("Jb", "Jabalpur");
            city.DataSource = s2.Values;
            city.DataBind();
        }
        else if (DropDownList2.SelectedItem.ToString() == "Maharashtra")
        {
            city.Items.Clear();
            s2.Add("Mum", "Mumbai");
            s2.Add("Pn", "Pune");
            s2.Add("Ng", "Nagpur");
            s2.Add("Th", "Thane");
            city.DataSource = s2.Values;
            city.DataBind();
        }
        else if (DropDownList2.SelectedItem.ToString() == "Punjab")
        {
            city.Items.Clear();
            s2.Add("Ld", "Ludhiana");
            s2.Add("Am", "Amritsar");
            s2.Add("Jal", "Jalandhar");
            s2.Add("Pat", "Patiala");
            city.DataSource = s2.Values;
            city.DataBind();
        }
        else if (DropDownList2.SelectedItem.ToString() == "Uttar Pradesh")
        {
            city.Items.Clear();
            s2.Add("Lk", "Lucknow");
            s2.Add("Kan", "Kanpur");
            s2.Add("All", "Allahabad");
            s2.Add("Var", "Varanasi");
            city.DataSource = s2.Values;
            city.DataBind();
        }
        else if (DropDownList2.SelectedItem.ToString() == "Delhi")
        {
            city.Items.Clear();
            s2.Add("Noi", "Noida");
            s2.Add("Gr", "Gurgaon");
            s2.Add("Nd", "New Dehli");
            s2.Add("Jd", "Meerut");
            city.DataSource = s2.Values;
            city.DataBind();
        }
    }
    protected void city_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:36646/home.aspx");
    }
    protected void Upload(object sender, EventArgs e)
    {

        string watermarkText = "©Team VANQUISH";

        //Get the file name.
        string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName) + ".png";

        //Read the File into a Bitmap.
        using (Bitmap bmp = new Bitmap(FileUpload1.PostedFile.InputStream, false))
        {
            using (Graphics grp = Graphics.FromImage(bmp))
            {
                //Set the Color of the Watermark text.
                Brush brush = new SolidBrush(Color.Red);

                //Set the Font and its size.
                Font font = new System.Drawing.Font("Arial", 200, FontStyle.Bold, GraphicsUnit.Pixel);

                //Determine the size of the Watermark text.
                SizeF textSize = new SizeF();
                textSize = grp.MeasureString(watermarkText, font);

                //Position the text and draw it on the image.
                Point position = new Point((bmp.Width - ((int)textSize.Width + 10)), (bmp.Height - ((int)textSize.Height + 10)));
                grp.DrawString(watermarkText, font, brush, position);

                using (MemoryStream memoryStream = new MemoryStream())
                {
                    //Save the Watermarked image to the MemoryStream.
                    bmp.Save(memoryStream, ImageFormat.Png);
                    memoryStream.Position = 0;

                    //Start file download.
                    Response.Clear();
                    Response.ContentType = "image/png";
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + fileName);

                    //Write the MemoryStream to the Response.
                    memoryStream.WriteTo(Response.OutputStream);
                    Response.Flush();
                    Response.Close();
                    Response.End();
                }
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         String gender = null;
            if (rb.Checked)
            {
                gender = rb.Text;
            }
            else
            {
                gender = rb1.Text;
            }

            string Problem = TextBox7.Text;
            string Drprefered = DropDownList1.SelectedValue;
            string Name = TextBox3.Text;
            string Fname = TextBox4.Text;
            string Age = TextBox6.Text;
            string Gender = gender;
            string Add = TextBox8.Text;
            string State = DropDownList2.SelectedValue;
            string City = city.SelectedValue;
            string Pin = TextBox9.Text;
            string Email = TextBox2.Text;
            string Phone = inputMobile.Text;
            string Emergency = TextBox1.Text;


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

                    //mail
                    SmtpClient client = new SmtpClient();
                    client.Port = 587;
                    client.Host = "smtp.gmail.com";
                    client.EnableSsl = true;
                    MailMessage mail = new MailMessage(new MailAddress("bshruti509@gmail.com"), new MailAddress(TextBox2.Text));
                    mail.Subject = "You are Registered SuccessFully";
                    mail.IsBodyHtml = true;
                    mail.Body = "<b><i>Welcome to our Website</i></b><br>Your Email id: " + TextBox2.Text +"<br /><a href = '" + Request.Url.AbsoluteUri.Replace("CS.aspx", "CS_Activation.aspx?ActivationCode=" +"12345") + "Click here to activate your account.</a>";

                    mail.Priority = MailPriority.High;
                    mail.From = new MailAddress(TextBox2.Text, "HERE IT IS");
                    mail.CC.Add(TextBox2.Text);
                    mail.Bcc.Add(TextBox2.Text);
                    System.Net.NetworkCredential cred = new System.Net.NetworkCredential();
                    cred.UserName = "bshruti509@gmail.com";
                    cred.Password = "parleagro16";
                    client.Credentials = cred;
                    client.Send(mail);


                    Response.Write("<script type='text/javascript'>alert('Congratulations You Have Registered Successfully Please Check Your Inbox');</script>");
                   
                    




                }
            }
    }
}
