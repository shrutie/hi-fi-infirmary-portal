<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>

    <head>
    <title>TEAM VANQUISH</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <script src="js/jquery.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/init.js"></script>
    <noscript>
        <link rel="stylesheet" href="css/skel-51em-30px.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-wide.css" />

    </noscript>

    
   <!-- <div style="position: fixed; z-index: -99; width: 100%; height: 100%">
        <iframe frameborder="0" height="100%" width="100%"
            src="20140416_000910.mp4"></iframe>
       -->
    
 

    
          <style type="text/css">
              .translation-links {
                  height: 33px;
              }
              .video-playing {
                  width: 502px;
                  height: 132px;
              }
          </style>

    
    
    
          <div id="header" style="border-style: groove; border-width: medium; background-image: url('EDITED.jpg'); background-size: cover; background-repeat: no-repeat; height: 203px; width: 1345px; text-align: center; margin-top: 0px;">
              <!-- 
              <h1 style="border: thick groove #00FF00; font-family: 'Showcard Gothic'; font-size: 50px; font-weight: 100; text-decoration: underline; background-image: url('Industry-News-eccouncil.png'); color: #000066; height: 75px; margin-top: 0px;">&nbsp;HI-FI INFIRMARY SYSTEM<br />
            <br />
        </h1>
              -->

        <span class="logo icon fa-medkit fa-4x"></span>
        <span class="logo icon fa-wheelchair"></span>
        <span class="logo icon fa-ambulance"></span>
        <span class="logo icon fa-h-square"></span>
        <span class="logo icon fa-stethoscope"></span>
        <span class="logo icon fa-plus"></span>

              <!-- Use CSS to replace link text with flag icons -->
              <a href="EMERGENCY/emer.aspx">
                  <b style="color: #FF0000; font-style: normal; font-weight: bold; font-family: 'Khmer UI'; border-style: double; font-size: x-large;">
                      <marquee>!!EMERGENCY!!EMERGENCY!!</marquee>
                  </b>
              </a>
<ul class="translation-links">
  <li><a href="#" class="hindi" data-lang="Hindi">Hindi</a>
 </li>
  <li><a href="#" class="urdu" data-lang="Urdu">Urdu</a></li>
</ul>

<!-- Code provided by Google -->
<div id="google_translate_element">


              </div>
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({ pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, autoDisplay: false }, 'google_translate_element');
    }
</script>
<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit" type="text/javascript"></script>

<!-- Flag click handler -->
<script type="text/javascript">
    $('.translation-links a').click(function () {
        var lang = $(this).data('lang');
        var $frame = $('.goog-te-menu-frame:first');
        if (!$frame.size()) {
            alert("Error: Could not find Google translate frame.");
            return false;
        }
        $frame.contents().find('.goog-te-menu2-item span.text:contains(' + lang + ')').get(0).click();
        return false;
    });
</script>
               
             




          

        <script type="text/javascript">


            function closewin()     //alert window for the login link
            {

                if (window.confirm("you are about to login or register yourself to the website.you  might be asked for some personal information!\n do you want to continue?")) {

                    window.alert("hello!")

                }

                else {
                    URL = "home.aspx";
                }


            }
        </script>


        </div>

</head>
 
<script>  //MOZILLA FEATURE
    TogetherJSConfig_autoStart = true;
</script>
    <script src="https://togetherjs.com/togetherjs-min.js"></script>      

          <body style="height: 3318px; width: 1347px">

                    <div id="main" style="background-image: url('Best-top-desktop-abstract-pattern-wallpapers-hd-wallpaper-pattern-pictures-and-images-1.jpeg'); background-attachment: inherit; background-position: center center">

                        <header class="major container small">

                            <script type="text/javascript">     //date and time function
                                var mydate = new Date();
                                document.write("DATE TODAY:" + mydate.getDate() + "/" + (mydate.getMonth() + 1) + "/" + mydate.getFullYear() + "<BR/>");
                                document.write("TIME NOW:" + mydate.getHours() + ":" + mydate.getMinutes() + ":" + mydate.getSeconds() + "<BR/>");

                            </script>
                            WELCOME! 
                            <asp:Label ID="Label1"  Text="GUEST" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Black"></asp:Label>
                              
                            <h4 style="height: 115px; width: 704px;">WELCOME TO THE 
					    <br />
                                <u>HI-FI INFIRMARY SYSTEM&nbsp; </u>
                                <br /><span class="logo icon fa-eye"></span>
                                Saving lives is the utmost priority for a human. 
                                <br />
                                We are processing our bit for the humanity.<br />
                                 <span class="logo icon fa-life-saver"> 
                                 </span>
                                <br />
                            </h4>


                        </header>

                        <div class="box alt container">
                            <section class="feature left">
                                <a href="loginpanel.aspx" class="image icon fa-unlock-alt">
                                    <img src="LOGIN.jpg" alt="" /></a>
                                <div class="content">
                                    <h1>

                                        <i class="fa fa-quote-left fa-3x pull-left fa-border"></i>
                                        LOGIN the registration page
                                        <br />
                                        or
                                        <br />
                                        the administration panel<br />
                                        (in  case you have a valid password).</h1>

                                </div>
                            </section>
                            <section class="feature right">
                                <a href="departments/departments.aspx" class="image icon fa-code">
                                    <img src="WE%20WORK.jpeg" alt="" /></a>
                                <div class="content">
                                    <i class="fa fa-quote-left fa-3x pull-left fa-border"></i>
                                    <h1>WANT A SPECIALIST</h1>
                                    <p>
                                        Have an accurate search result, 
                                        <br />
                                        search for the specialities.
                                       
                                    </p>
                                </div>
                            </section>
                            <section class="feature left">
                                <a href="contact2/html5up-verti/contact.aspx" class="image icon fa-mobile">
                                    <img src="doctor-nurse-surgery-hospital_gg60293316.jpg" alt="" /></a>
                                <div class="content">
                                    <i class="fa fa-quote-left fa-3x pull-left fa-border"></i>
                                    <h1>DOCTOR'S DESK</h1>
                                    <p>
                                        The doctors DETAILS,<br />
                                        all of the professional details you need is all here.  
                                    </p>
                                </div>
                            </section>
                        </div>


                       



                        <footer class="major container small">
                            <h3>want to know about us</h3>
                            <p>details of the website developers.</p>
                            <ul class="actions">
                                <li><a href="contact%20us/contctUs.aspx" class="button">all about us</a></li>
                            </ul>



                        </footer>

                    </div>

                    <!-- Footer -->
                    <div id="footer">
                        <div class="container small">

                            <header class="major last">
                                <h2>Questions or comments?</h2>
                            </header>

                            <p>
                                Coming from you would be a great pleasure for us.<br />
                                Allow us to have the feedback.
                            </p>

                            <form id="form1" runat="server" onsubmit="validationform(this)" method="post">
                                <div class="row collapse-at-2">
                                    <div class="6u">
                                        <input type="text" name="name" placeholder="Name" onkeypress="return restrictCharacters(this,event,alphaOnly)" onblur="if(this.value == ''){ this.value = 'Name';}" />
                                    </div>
                                    <div class="6u">
                                        <input type="email" name="email" placeholder="Email"   value="email" />&nbsp;
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="12u">
                                        <textarea name="message" placeholder="Message" rows="6" onkeypress="return restrictCharacters(this,event,re)"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                  <!-- <div class="12u"> -->
                                        <ul class="actions">
                                            <li>
                                                &nbsp;<input type="submit" value="Send Message" /></li>
                                        </ul>
                                    <p>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Medium"><b>LogOut</b></asp:LinkButton>
                         &nbsp;</p>
                                    </div>
                                </div>
                                </form>
                             <form method="get" action="http://www.google.com/search" style="height: 7px; width: 593px; margin-left: 0px">
                                    <input type="text" name="q" size="30" x-webkit-speech style="width: 256px; margin-left: 205px;"/><input style="width: 145px; margin-left: 80px;" type="submit" value="Google Search" /></form>

                            <ul class="icons">
                                <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                                <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                                <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                                <li><a href="#" class="icon fa-home"><span class="label">Home</span></a></li>
                                <li><a href="#" class="icon fa-phone"><span class="label">Contact Us</span></a></li>
                            </ul>

                            <ul class="copyright">
                                <li>&copy;
                            All rights reserved by the team.</li>
                            </ul>

   

                        </div>
                    </div>




                </body>
</html>
