<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('../FINALMAY.jpg')">
    
        <asp:Label ID="Label1" runat="server" Text="mobile no"></asp:Label>
&nbsp;&nbsp;
    
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="344px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="message"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="341px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="send message" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="FOR FOREIGN USERS" />
        <br />
        <br />
        <br />
        <br />

        <%--<asp:Button ID="Button2" runat="server" Text="FOREIGN USERS" Width="354px" />--%>
        
        <br />
    
    </div>
    </form>
</body>
</html>
