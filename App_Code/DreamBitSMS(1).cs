using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Text;


public class DreamBitSMS
{

	public static string send(string sNumber,string message)
    {
        string sUserID = "ishashank22"; 
        string sPwd = "ishashank22";
        string code = "TP";
        string sSID = "DBTECH"; 
        string sMessage = message; 
        string sURL ="http://sms.dreambit.in/SendSMS.aspx?username="+ sUserID + "&";
        sURL +=  "password=" + sPwd + "&mobile=" + sNumber + "&sid=" + sSID + "&code="+code+"&msg=" + HttpUtility.UrlEncode(sMessage) ;
        string sResponse = GetResponse(sURL);
        return sResponse;
    }


   

    


    public static string GetResponse(string sURL) 
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(sURL); 
            request.MaximumAutomaticRedirections = 4; 
            request.Credentials = CredentialCache.DefaultCredentials; 
            try 
            {
                HttpWebResponse response = (HttpWebResponse)request.GetResponse (); 
                Stream receiveStream = response.GetResponseStream (); 
                StreamReader readStream = new StreamReader (receiveStream, Encoding.UTF8); 
                string sResponse = readStream.ReadToEnd(); 
                response.Close (); 
                readStream.Close (); 
                return sResponse; 
            }
            catch(Exception)
            {
                return ""; 
            }
        } 
}
