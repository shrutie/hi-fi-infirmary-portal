<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpanel.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TEAM VANQUISH</title>

    <form id="form1" runat="server">
    <div>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <title>TEAM VANQUISH</title>
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.slidepanel.setup.js" type="text/javascript"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
        <link href="layout.css" rel="stylesheet" />
   
    <link href="js/layout.css" rel="stylesheet" type="text/css" />
        </div>
        


<body style="background-image: url('Wallpaper%20(195).jpg'); background-size: cover">
        <div style="margin-left: 8%; margin-right: 8%; background-image: url('abstract-pink.jpg'); background-repeat: no-repeat; background-size: cover;"
            class="masterpage">
            <div class="wrapper">
                <div id="topbar">
                    <div id="slidepanel">
                        <div class="topbox">
                            <h2>Doctor Login Here</h2>
                            <asp:Panel ID="hpanel" runat="server" DefaultButton="drsubmit">
                                <fieldset>
                                    <legend>Login Form</legend>
                                    <label>
                                        Username:
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                       
                                    </label>
                                    <label>
                                        Password:
                                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                                        
                                    </label>
                                    <p>
                                        <asp:Button ID="drsubmit" runat="server" ValidationGroup="hl" Text="Login" OnClick="drsubmit_Click" />
                                        &nbsp;
                                    <input type="reset" name="hreset" id="hreset" value="Reset" />
                                    </p>
                                    <a href="docregistration.aspx" style="text-decoration: none;">NEW USER REGISTER
                                    HERE</>
                                </fieldset>
                            </asp:Panel>
                        </div>
                        <div class="topbox">
                            <h2>Admin Login</h2>
                            <asp:Panel ID="dpanel" runat="server" DefaultButton="asubmit">
                                <fieldset>
                                    <legend>Login Form</legend>
                                    <label>
                                        Username:
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                       
                                    </label>
                                    <label>
                                        Password:
                                    <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
                                       
                                    </label>
                                    <p>
                                        <asp:Button ID="asubmit" runat="server" ValidationGroup="dl" Text="Login" OnClick="asubmit_Click" />
                                        &nbsp;
                                    <asp:Button ID="Button1" runat="server" ValidationGroup="dl" Text="Profile" OnClick="Button1_Click" />
                                    </p>
                                    <br />
                                </fieldset>
                            </asp:Panel>
                        </div>
                        <div class="topbox">
                            <h2>Patient Login Here</h2>
                            <asp:Panel ID="bpanel" runat="server" DefaultButton="psubmit">
                                <fieldset>
                                    <legend>Login Form</legend>
                                    <label>
                                        Username:
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                       
                                    </label>
                                    <label for="hospitalpass">
                                        Password:
                                    <asp:TextBox ID="TextBox6" TextMode="Password" runat="server"></asp:TextBox>
                                        
                                    <p>
                                        <asp:Button ID="psubmit" runat="server" ValidationGroup="bl" Text="Login" OnClick="psubmit_Click" />
                                        &nbsp;
                                    <input type="reset" name="breset" id="breset" value="Reset" />
                                    </p>
                                    <a href="patientregistration.aspx" style="text-decoration: none;">NEW USER REGISTER HERE</a>
                                </fieldset>
                            </asp:Panel>
                        </div>
                        <br class="clear" />
                    </div>
                    <div id="loginpanel">
                        <ul>
                            <li class="left">Log In Here &raquo;</li>
                            <li class="right" id="toggle"><a id="slideit" href="#slidepanel">REGISTRATION</a><a
                                id="closeit" style="display: none;" href="#slidepanel">Close Panel</a></li>
                        </ul>
                    </div>
                    <br class="clear" />
                </div>
                </br>
           <marquee style="font-weight: 700; color: #009900"> <h1> WELCOME TO THE LOGIN PAGE </h1></marquee>
            </div>
            </br>
        </div>
        <table>
         <tr>
         </tr>
        </table>
<iframe src="WOW%20Slider/iframe_SLIDERLOGINfinal2.html" style="border-style: none; border-color: inherit; border-width: medium; width:900px; height:300px; max-width:100%; overflow:hidden; padding:0; margin:0 auto; display:block;" marginheight="0" marginwidth="0"></iframe>
  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="#">
        <img src="blue-home-icon.png" alt="" style="height: 42px; background-color: #FFFFFF;"/>
    </a>&nbsp;&nbsp;&nbsp;</p>
    <p style="margin-left: 120px; color: #FF99FF; font-weight: bold;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &copy;TEAM VANQUISH.
    </p>
</body>
    </form>
    </head>
</html>

  