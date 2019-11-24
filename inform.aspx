<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inform.aspx.cs" Inherits="inform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>個人健康資訊管理系統</title>
</head>
<body style="background-image:url(line.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div>
    <center>
        <h1><asp:Label ID="sentence1" runat="server" Text="最新的身體狀況診斷"></asp:Label></h1>
        <h3><asp:Label ID="sentence2" runat="server" Text="登錄時間："></asp:Label><asp:Label ID="time" runat="server" Text=""></asp:Label></h3>
        <asp:Panel ID="bmipanel" runat="server"></asp:Panel>
        <hr>
        <asp:Panel ID="hiblood" runat="server"></asp:Panel>
        <hr>
        <asp:Panel ID="sugarpanel" runat="server"></asp:Panel>
        <hr>
        <asp:Panel ID="heart" runat="server"></asp:Panel>
         <hr>
        <asp:Panel ID="urinpanel" runat="server"></asp:Panel>
        </br>
        <asp:Button ID="return" runat="server" Text="返回功能列表" OnClick="return_Click"></asp:Button>
    </center>
    </div>
    </form>
</body>
</html>