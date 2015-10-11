<%@ Page Language="C#" AutoEventWireup="true" CodeFile="docregistration.aspx.cs" Inherits="WOW_Slider_docregistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: left;
            font-family: "Bradley Hand ITC";
            font-weight: normal;
            text-decoration: underline;
            font-size: x-large;
        }
        .style2
        {
            width: 100%;
            border: 1px solid #800000;
        }
        .style3
        {
            text-align: center;
            font-family: "Bradley Hand ITC";
            font-weight: normal;
            text-decoration: underline;
            font-size: xx-large;
        }
        .style4
        {
            text-align: center;
        }
    </style>
</head>

       <script type="text/javascript">           //validation of form


           function validationform(thisform) {
               var username = thisform.name.value;
               var emailf = thisform.email.value;
               if (username == null || username == "") {
                   alert("enter user name");
                   thisform.name.focus();
                   return false;
               }

               if (emailf == null || emailf == "") {
                   alert("enter email id");
                   thisform.email.focus();
                   return false;
               }

               return true;

           }

           var digitsOnly = /[1234567890]/g;       //using regex
           var floatOnly = /[0-9\.]/g;
           var alphaOnly = /[A-Za-z]/g;
           var re = /[A-Za-z.()/.-\s]/g;            //for message


           function restrictCharacters(myfield, e, restrictionType) {
               if (!e) var e = window.event
               if (e.keyCode) code = e.keyCode;
               else if (e.which) code = e.which;
               var character = String.fromCharCode(code);
               // if esc is pressed. removes focus from field
               if (code == 27) { this.blur(); return false; }
               // ignored when other keys are pressed
               if (!e.ctrlKey && code != 9 && code != 8 && code != 36 && code != 37 && code != 38 && (code != 39 || (code == 39 && character == "'")) && code != 40) {
                   if (character.match(restrictionType)) {
                       return true;
                   } else {
                       return false;
                   }
               }
           }

            </script>
           




<body>
    
    <form id="form1" runat="server" onsubmit="validationform(this)" method="get">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div style="background-image:url('final.jpg'); font-family: Ebrima; color: #FFFFFF; font-weight: bold; font-size: large;" 
        class="style4" >
       


      

    <h1 class="style3"><strong>DOCTOR&#39;S ENTRY</strong></h1>
   
        <table class="style2">
            
                <td style="text-align: center; font-weight: 700">
                    <fieldset>
                      <legend class="style1" ><strong> REGISTRATION-ID</strong>
                      </legend>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Dr-Id "></asp:Label>  :
                        <asp:TextBox ID="TextBox1" runat="server" Width="220px" BorderColor="#003366"
                            BorderStyle="Solid" Style="font-weight: 700; margin-left: 34px;"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    
                       <asp:Label ID="Label2" runat="server" Text="Date :"></asp:Label>  
                        <asp:TextBox ID="TextBox2" runat="server" Width="220px" BorderColor="#003366" 
                            BorderStyle="Solid" style="font-weight: 700; margin-left: 0px;" Height="16px"></asp:TextBox>

                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox2">
                             </asp:CalendarExtender>
                        &nbsp;<br />
                        <br />
                        <fieldset>
                      <legend class="style1" ><strong> DOCTOR&#39;S INFORMATION</strong></legend>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Name "></asp:Label>  :
                        <asp:TextBox ID="TextBox3" runat="server" Width="220px" BorderColor="#003366" 
                                BorderStyle="Solid" style="font-weight: 700" onkeypress="return restrictCharacters(this,event,alphaOnly)"></asp:TextBox>
                        <br />
                        <br />
                       <asp:Label ID="Label6" runat="server" Text="Father's Name "></asp:Label>  :
                        <asp:TextBox ID="TextBox4" runat="server" Width="220" BorderColor="#003366" 
                                BorderStyle="Solid" style="font-weight: 700; margin-left: 0px;" onkeypress="return restrictCharacters(this,event,alphaOnly)"></asp:TextBox>  
                       <br />
                       <br />
                       <asp:Label ID="Label9" runat="server" Text="Date of Birth "></asp:Label>  :
                        <asp:TextBox ID="TextBox5" runat="server" Width="220" BorderColor="#003366" 
                                BorderStyle="Solid" style="font-weight: 700"></asp:TextBox>
                          <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox5">
                               </asp:CalendarExtender>
                        <br />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Age"></asp:Label>  :  &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" Width="220" BorderColor="#003366" 
                                BorderStyle="Solid" style="font-weight: 700" onkeypress="return restrictCharacters(this,event,digitsOnly)" TextMode="Number"></asp:TextBox> 
                            <asp:RangeValidator ID="RangeValidator1" ControlToValidate="TextBox6" runat="server" ErrorMessage="3 digits max" ForeColor="Red" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
                            (yrs)
                        <br />
                        <br />

                          <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>  :
                            <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="button1" />&nbsp;&nbsp;
                            <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="button1" />
                            <br />
                            <br />
                             <asp:Label ID="Label12" runat="server" Text="Specialization"></asp:Label>  :
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="140" Height="40" 
                                style="font-weight: 700">
                                <asp:ListItem>opthamology</asp:ListItem>
                                <asp:ListItem>respiratory</asp:ListItem>
                                <asp:ListItem>cardiology</asp:ListItem>
                                <asp:ListItem>urlogy</asp:ListItem>
                                <asp:ListItem>dentistry</asp:ListItem>
                                <asp:ListItem>maternity</asp:ListItem>
                            </asp:DropDownList>

                        </fieldset>
                        <br />
                        <br />

                       

                       
                    </fieldset>
                </td>
              
                  <td style="text-align:center; font-weight: 700">
                    <fieldset>
                      <legend class="style1" ><strong> ADDRESS</strong></legend>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Address "></asp:Label>  :
                        <asp:TextBox ID="TextBox7" runat="server" Width="220px" BorderColor="#003366" 
                            BorderStyle="Solid" style="font-weight: 700" Height="22px" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <br />
                       <asp:Label ID="Label4" runat="server" Text="State "></asp:Label>  :
                        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="184px" Height="26px" 
                            style="font-weight: 700" AutoPostBack="True">
                        </asp:DropDownList>
                       
                        <br />
                       
                        <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label" runat="server" Text="City "></asp:Label>  :
                        <asp:TextBox ID="TextBox9" runat="server" Width="193px" onkeypress="return restrictCharacters(this,event,alphaOnly)"></asp:TextBox>
                       <br />
                       <br />
                        <asp:Label ID="Label8" runat="server" Text="PinCode "></asp:Label>  :
                        <asp:TextBox ID="TextBox8" runat="server" Width="220" BorderColor="#003366" 
                            BorderStyle="Solid" style="font-weight: 700" onkeypress="return restrictCharacters(this,event,digitsOnly)"></asp:TextBox>
                        </fieldset>
                        <br />
                        <br />

                        <fieldset>
                      <legend class="style1" >CONTACT</legend>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Email-Id "></asp:Label>
                         <input type="email" name="email" placeholder="Email" value="email" width="220" bordercolor="#003366"
                                borderstyle="Solid" style="font-weight: 700"></input>
                        <br />
                        <br />
                            <asp:Label ID="Label14" runat="server" Text="Mobile-No "></asp:Label>  :
                       
                         <asp:TextBox class="form-control" Maxlength="10" ID="inputMobile" runat="server" pattern="^[7-9][0-9]{9}$" title="Please enter a valid mobile number" Placeholder="Enter Mobile No." Required="true"/>
                        <br />
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Emergency-Mobile No "></asp:Label>  :
                        <asp:TextBox class="form-control" Maxlength="10" ID="inputEmergency" runat="server" pattern="^[7-9][0-9]{9}$" title="Please enter a valid mobile number" Placeholder="Enter Mobile No." Required="true"/>
                        </fieldset>
                    </td>
            </tr>
            
        </table>
         <div class="style4">
         <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button3" runat="server" BorderColor="#003366" 
                 BorderStyle="Solid" style="font-weight: 700; margin-left: 0px;" Text="REGISTER" Height="32px" Width="189px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
        <br />
    
             
               
       
        <br />
        <br />
        <br />

    
        </div>

    
    </div>
    </form>
</body>
</html>

