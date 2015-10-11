using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;

public partial class Default2 : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   

        protected void Button1_Click(object sender, EventArgs e)
        {
         
            string mob = TextBox1.Text;
           string msg = TextBox2.Text;
           DreamBitSMS.send(mob, msg);
           
            
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:36646/messagesmobile/messagesmobile/bin/Debug/messagesmobile.exe");
        }
}


        


   

  
  

   
