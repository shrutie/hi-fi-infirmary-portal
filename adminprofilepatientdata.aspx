<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminprofilepatientdata.aspx.cs" Inherits="adminprofilepatientdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TEAM VANQUISH</title>
</head>
<body>
     <form id="form1" runat="server">
<%--PATIENT TABLE STARTS HERE--%>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid"
 OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." Width="1827px" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
<Columns>
   
    <asp:TemplateField HeaderText="Problem" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblProblem" runat="server" Text='<%# Eval("Problem") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtProblem1" runat="server" Text='<%# Eval("Problem") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Drprefered" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblDrprefered" runat="server" Text='<%# Eval("Drprefered") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtDrprefered1" runat="server" Text='<%# Eval("Drprefered") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtName1" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Fname" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblFname" runat="server" Text='<%# Eval("Fname") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtFname1" runat="server" Text='<%# Eval("Fname") %>'></asp:TextBox>
        </EditItemTemplate>
<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Age" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblAge" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtAge1" runat="server" Text='<%# Eval("Age") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Gender" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtGender1" runat="server" Text='<%# Eval("Gender") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Add" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblAdd" runat="server" Text='<%# Eval("Add") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtAdd1" runat="server" Text='<%# Eval("Add") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="State" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtState1" runat="server" Text='<%# Eval("State") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="City" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtCity1" runat="server" Text='<%# Eval("City") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Pin" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblPin" runat="server" Text='<%# Eval("Pin") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtPin1" runat="server" Text='<%# Eval("Pin") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtEmail1" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Phone" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtPhone1" runat="server" Text='<%# Eval("Phone") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Emergency" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblEmergency" runat="server" Text='<%# Eval("Emergency") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtEmergency1" runat="server" Text='<%# Eval("Emergency") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
    </asp:ImageField>
    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
    </asp:CommandField>
</Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; width: 1923px;">
<tr>
    <td>
        Problem:<br />
        <asp:TextBox ID="txtProblem1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        Drprefered:<br />
        <asp:TextBox ID="txtDrprefered1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        Name:<br />
        <asp:TextBox ID="txtName1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        dob:<br />
        <asp:TextBox ID="txtFname1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        age:<br />
        <asp:TextBox ID="txtAge1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        gender:<br />
        <asp:TextBox ID="txtGender1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        department:<br />
        <asp:TextBox ID="txtAdd1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        state:<br />
        <asp:TextBox ID="txtState1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        city:<br />
        <asp:TextBox ID="txtCity1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        pin:<br />
        <asp:TextBox ID="txtPin1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        email:<br />
        <asp:TextBox ID="txtEmail1" runat="server" Width="140" />
    </td>

     <td style="width: 150px">
        phone:<br />
        <asp:TextBox ID="txtPhone1" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        emergency:<br />
        <asp:TextBox ID="txtEmergency1" runat="server" Width="140" />
    </td>
     <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
    </td>
    </tr>
    </table>
         </form>
</body>
</html>
