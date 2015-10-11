<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mobile.aspx.cs" Inherits="EMERGENCY_mobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="mobile no"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="338px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="message"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="335px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="send" />
    
    </div>
    </form>
</body>
</html>
