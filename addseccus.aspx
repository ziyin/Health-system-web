<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addseccus.aspx.cs" Inherits="addseccus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image:url(space.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div>
    <center>
        <br />
        <br />
        <br />
        <h1><asp:Label ID="secenten1" runat="server" Text="登錄成功" Font-Names="Ebrima" ForeColor="#FF33CC"></asp:Label></h1>
        <br />
        <br />
        <h3><asp:Label ID="secenten2" runat="server" Text="請問是否要繼續登錄身體狀況呢"></asp:Label>
            <br />
            <br />
        <asp:RadioButtonList ID="choose" runat="server" AutoPostBack="True" OnSelectedIndexChanged="choose_SelectedIndexChanged" RepeatColumns="2">
            <asp:ListItem Value="0">是</asp:ListItem>
            <asp:ListItem Value="1">否</asp:ListItem>
        </asp:RadioButtonList></h3>
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="238px" ImageUrl="~/Images/child.png" Width="1072px" />
        <br />
        </cener>
    </div>
    </form>
</body>
</html>