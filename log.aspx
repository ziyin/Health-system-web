<%@ Page Language="C#" AutoEventWireup="true" CodeFile="log.aspx.cs" Inherits="log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>個人健康資訊管理系統</title>
</head>
<body style="background-color: #FFFFD2">
    <form id="form1" runat="server">
        <div>
            <center>
                <asp:Image ID="Image1" runat="server" Height="336px" ImageUrl="~/Images/lodphoto.jpg" Width="790px"></asp:Image>
        <h1><asp:Label ID="sentence1" runat="server" Text="歡迎使用個人健康資訊管理系統"></asp:Label></h1>
                <h3><asp:Label ID="sentence2" runat="server" Text="請先輸入您的登入資訊"></asp:Label></h3>
                <asp:Label ID="sentence3" runat="server" Text="帳號：" ForeColor="#CC3300"></asp:Label><asp:TextBox ID="account" runat="server"></asp:TextBox>
                 <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="account" ErrorMessage="請輸入帳號" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                 <asp:Label ID="sentence4" runat="server" Text="密碼：" ForeColor="#CC3300"></asp:Label><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="login" runat="server" Text="登入" OnClick="login_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="newone" runat="server" OnClick="newone_Click">註冊</asp:LinkButton>
    </center>
        </div>
    </form>
</body>
</html>
