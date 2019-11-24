<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newmember.aspx.cs" Inherits="newmember" %>

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
        <h1>
            <asp:Image ID="Image1" runat="server" Height="217px" ImageUrl="~/Images/newmemberphoto.png" Width="901px" />
            </h1>
            <h1><asp:Label ID="sentence1" runat="server" Text="請輸入以下資料"></asp:Label></h1>
        <asp:Label ID="sentence2" runat="server" Text="姓名："></asp:Label><asp:TextBox ID="name" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="請輸入姓名" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="sentence3" runat="server" Text="年齡："></asp:Label><asp:TextBox ID="age" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="請輸入年齡" ControlToValidate="age" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" ErrorMessage="年齡輸入錯誤" ForeColor="Red" MaximumValue="160" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:Label ID="sentence4" runat="server" Text="現居城市："></asp:Label>
            <asp:DropDownList ID="city" runat="server">
            </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="請選擇現居城市" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        <asp:Label ID="sentence8" runat="server" Text="性別："></asp:Label>
            <asp:RadioButtonList ID="sexchoose" runat="server" Height="21px" RepeatColumns="2" Width="176px">
                <asp:ListItem Value="0">男</asp:ListItem>
                <asp:ListItem Value="1">女</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="sexchoose" ErrorMessage="請選擇性別" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <asp:Label ID="sentence5" runat="server" Text="帳號："></asp:Label><asp:TextBox ID="account" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="請輸入帳號" ControlToValidate="account" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="sentence6" runat="server" Text="密碼："></asp:Label><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="請輸入密碼" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="sentence7" runat="server" Text="確認密碼："></asp:Label><asp:TextBox ID="repassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="要確認密碼" ControlToValidate="repassword" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="兩者密碼不相同" ControlToCompare="password" ControlToValidate="repassword" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確定輸入" BackColor="#B5FE92" />
            <br />
            <br />
        </center>
    </div>
    </form>
</body>
</html>
