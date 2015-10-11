<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminprofile.aspx.cs" Inherits="adminprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TEAM VANQUISH</title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('FINALMAY.jpg'); background-repeat: repeat-x;">
    <div>
        <b style="font-weight: bolder; font-size: medium; font-family: Gisha; text-decoration: underline blink">
        DOCTOR'S DATA:</b>
    </div>
        
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="docID"
 OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." Height="49px" Width="1839px" style="margin-top: 35px; margin-bottom: 0px" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
<Columns>
   
    <asp:TemplateField HeaderText="dates" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lbldates" runat="server" Text='<%# Eval("dates") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtdates" runat="server" Text='<%# Eval("dates") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="name" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="fname" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblfname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtfname" runat="server" Text='<%# Eval("fname") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="dob" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lbldob" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtdob" runat="server" Text='<%# Eval("dob") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="age" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblage" runat="server" Text='<%# Eval("age") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtage" runat="server" Text='<%# Eval("age") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="gender" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblgender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtgender" runat="server" Text='<%# Eval("gender") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="department" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lbldepartment" runat="server" Text='<%# Eval("department") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtdepartment" runat="server" Text='<%# Eval("department") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="state" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblstate" runat="server" Text='<%# Eval("state") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtstate" runat="server" Text='<%# Eval("state") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="city" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblcity" runat="server" Text='<%# Eval("city") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtcity" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="pin" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblpin" runat="server" Text='<%# Eval("pin") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtpin" runat="server" Text='<%# Eval("pin") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="email" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="mobileno" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblmobileno" runat="server" Text='<%# Eval("mobileno") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtmobileno" runat="server" Text='<%# Eval("mobileno") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="emergency" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblemergency" runat="server" Text='<%# Eval("emergency") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtemergency" runat="server" Text='<%# Eval("emergency") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
    </asp:CommandField>
    <asp:ImageField DataImageUrlField="image" HeaderText="image">
    </asp:ImageField>
</Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
<tr>
    
        dates:<br />
        <asp:TextBox ID="txtdates" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         NAME:<br />
        <asp:TextBox ID="txtname" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         FNAME:<br />
        <asp:TextBox ID="txtfname" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         DOB:<br />
        <asp:TextBox ID="txtdob" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         AGE:<br />
        <asp:TextBox ID="txtage" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         GENDER:<br />
        <asp:TextBox ID="txtgender" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         DEPARTMENT:<br />
        <asp:TextBox ID="txtdepartment" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         STATE:<br />
        <asp:TextBox ID="txtstate" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         CITY:<br />
        <asp:TextBox ID="txtcity" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         PIN:<br />
        <asp:TextBox ID="txtpin" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         EMAIL:<br />
        <asp:TextBox ID="txtemail" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         MOBILENO:<br />
        <asp:TextBox ID="txtmobileno" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
         EMERGENCY:<br />
        <asp:TextBox ID="txtemergency" runat="server" Width="140" />
    </td>
    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
    </td>
</tr>
</table>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="139px" ImageUrl="~/newpatients.png" OnClick="ImageButton1_Click" Width="284px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="Black" Height="122px" ImageUrl="~/feedback.jpg" OnClick="ImageButton2_Click" ToolTip="responses" Width="266px" />
        </p>
        <p style="margin-left: 440px">
            &nbsp;</p>

    </form>
</body>
</html>

