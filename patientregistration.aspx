<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patientregistration.aspx.cs" Inherits="patientregistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>TEAM VANQUISH</title>
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
<body>
                                         <script type="text/javascript">

                                             var digitsOnly = /[1234567890]/g;
                                             var floatOnly = /[0-9\.]/g;
                                             var alphaOnly = /[A-Za-z]/g;
                                             var re = /[A-Za-z.()/.-\s]/g;

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




    
    <form id="form1" runat="server" method="post">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="background-image:url('final.jpg'); font-family: Ebrima; color: #FFFFFF; font-weight: bold; font-size: large;" 
        class="style4" >
    <h1 class="style3" style="font-weight: 300">PATIENT&#39;S ENTRY</h1>
        <br />
        <table class="style2">
            <tr>
                <td style="text-align: center; font-weight: 700">
                    <fieldset style="height: 286px; margin-top: 0px">
                        <br />
                        <br />

                        <fieldset style="height: 178px; margin-top: 0px">
                         <legend class="style1" >MEDICAL INFORMATION</legend>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Problem"></asp:Label>  :
                       
                            <asp:TextBox ID="TextBox7" runat="server" Height="29px" Width="194px" 
                                BorderColor="#003366" BorderStyle="Solid" onkeypress="return restrictCharacters(this,event,alphaOnly)" ></asp:TextBox>
                       
                        <br />
                        <br />
                        <asp:Label ID="Label16" runat="server" Text="Dr preferd "></asp:Label>  :
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="195px" Height="36px" 
                            style="font-weight: 700" AutoPostBack="True">
                            <asp:ListItem>GENERAL PHYSICIAN</asp:ListItem>
                            <asp:ListItem>OPTHALMOLOGY</asp:ListItem>
                            <asp:ListItem>RESPIRATORY</asp:ListItem>
                            <asp:ListItem>CARDIOLOGY</asp:ListItem>
                            <asp:ListItem>MATERNITY</asp:ListItem>
                            <asp:ListItem>UROLOGY</asp:ListItem>
                            <asp:ListItem>NEUROLOGY</asp:ListItem>
                        </asp:DropDownList>
                        
                        
                            <br />
                            <br />
                            <asp:Label ID="Label17" runat="server" Text="Image:"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="242px" /><br />
                             <asp:Button ID="Button2" Text="Upload" runat="server" OnClick="Upload" />
                        
                        
                        </fieldset></fieldset> 
                      
                        <fieldset style="height: 186px; margin-top: 0px">
                      <legend class="style1" ><strong> PATIENT INFORMATION</strong></legend>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Name "></asp:Label>  :
                        <asp:TextBox ID="TextBox3" runat="server" Width="205px" BorderColor="#003366"
                            BorderStyle="Solid" Style="font-weight: 700" onkeypress="return restrictCharacters(this,event,alphaOnly)"></asp:TextBox>
                            <br />
                            <br />
                       <asp:Label ID="Label6" runat="server" Text="Father's Name "></asp:Label>  :
                        <asp:TextBox ID="TextBox4" runat="server" Width="194" BorderColor="#003366" 
                                BorderStyle="Solid" style="font-weight: 700; margin-left: 0px;" onkeypress="return restrictCharacters(this,event,alphaOnly)"></asp:TextBox>  
                            <br />
                       <br />
                      
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Age"></asp:Label>  :  &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" Width="194" BorderColor="#003366" 
                                BorderStyle="Solid" style="font-weight: 700" onkeypress="return restrictCharacters(this,event,digitsOnly)"></asp:TextBox> (yrs)

                        <br />
                        <br />

                          <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>  :
                            <asp:RadioButton ID="rb" runat="server" Text="Male" GroupName="group1" />&nbsp;&nbsp;
                            <asp:RadioButton ID="rb1" runat="server" Text="Female" GroupName="group1" />
                            <br />
                            <br />
                             </fieldset></td>
              
                  <td style="text-align:center; font-weight: 700">
                    <fieldset>
                      <legend class="style1" ><strong> ADDRESS</strong></legend>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Address "></asp:Label>  :
                        <asp:TextBox ID="TextBox8" runat="server" Width="194" Height="30" BorderColor="#003366" 
                            BorderStyle="Solid" style="font-weight: 700"></asp:TextBox>
                        <br />
                        <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label4" runat="server" Text="State "></asp:Label>  :
                        <asp:DropDownList ID="DropDownList2" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="190" Height="30" 
                            style="font-weight: 700">
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="City "></asp:Label>  :
                        <asp:DropDownList ID="city" runat="server" AutoPostBack="true" Width="190" height="30" 
                            style="font-weight: 700" OnSelectedIndexChanged="city_SelectedIndexChanged">
                        </asp:DropDownList>
                       <br />
                       <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="PinCode "></asp:Label>  :
                        <asp:TextBox ID="TextBox9" runat="server" Width="194" BorderColor="#003366" 
                            BorderStyle="Solid" style="font-weight: 700" onkeypress="return restrictCharacters(this,event,digitsOnly)"></asp:TextBox>
                        </fieldset>
                        <br />
                        <br />

                        <fieldset>
                      <legend class="style1" ><strong>CONTACT</strong></legend>
                        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Email-Id "></asp:Label>  :
                       <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" onblur="if(this.value == ''){ this.value = 'Email ID';}" onfocus="if(this.value == 'Email ID'){this.value = '';}" ToolTip="Email ID" Width="170px"></asp:TextBox>
                        <br />
                        <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label14" runat="server" Text="Phone-No "></asp:Label>  :
                       <asp:TextBox class="form-control" Maxlength="10" ID="inputMobile" runat="server" pattern="^[7-9][0-9]{9}$" title="Please enter a valid mobile number" Placeholder="Enter Mobile No." Required="true"/>
                        <br />
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Emergency-No "></asp:Label>  :
                       <asp:TextBox class="form-control" Maxlength="10" ID="TextBox1" runat="server" pattern="^[7-9][0-9]{9}$" title="Please enter a valid mobile number" Placeholder="Enter Mobile No." Required="true"/>
                                <br /><br />
                      
                       <asp:Button ID="Button1" runat="server" BorderColor="Maroon" 
                 BorderStyle="Solid" style="font-weight: 700" Text="Add" Width="95px" OnClick="Button1_Click" />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button4" runat="server" BorderColor="Maroon" 
                 BorderStyle="Solid" style="font-weight: 700" Text="Exit" Width="87px" OnClick="Button4_Click" /><br />
                        </fieldset>
                    </td>
            </tr>
            
        </table>
        

    
        </div>

    
    </div>
    </form>
</body>
</html>
