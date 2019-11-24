<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>個人健康資訊管理系統</title>
</head>
<body style="background-image: url(line.jpg); background-size: cover">
    <form id="form1" runat="server">
        <div>
            <center>
        <asp:Label ID="acc" runat="server"></asp:Label>
        <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#3333FF" Text=""></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="return" runat="server" Text="返回功能選擇頁面" OnClick="return_Click"></asp:Button>
            </center>
        </div>
    </form>
</body>
</html>
