<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

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
        <br />
        <h1><asp:Label ID="sentence" runat="server" Text="您好："></asp:Label></h1>
        <h1><asp:Label ID="sentence1" runat="server" Text="請選擇下列選項"></asp:Label></h1>
            <asp:Table ID="chooseitem" runat="server" Width="511px" Height="403px">
                <asp:TableRow ID="lineone" runat="server">
                    <asp:TableCell ID="TableCell1" runat="server"><asp:ImageButton ID="add" runat="server" Height="141px" ImageUrl="~/Images/add.png" OnClick="add_Click" Width="159px"></asp:ImageButton></asp:TableCell>
                    <asp:TableCell ID="TableCell2" runat="server"><asp:ImageButton ID="fixanddelet" runat="server" Height="151px" ImageUrl="~/Images/file.png" OnClick="fixanddelet_Click" Width="173px"></asp:ImageButton></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="linetwo" runat="server">
                    <asp:TableCell ID="TableCell3" runat="server"><asp:Label ID="sentence2" runat="server" Text="登錄資訊" ForeColor="Blue"></asp:Label></asp:TableCell>
                    <asp:TableCell ID="TableCell4" runat="server"><asp:Label ID="sentence3" runat="server" Text="修改、刪除" ForeColor="Blue"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="linethree" runat="server">
                    <asp:TableCell ID="TableCell5" runat="server"><asp:ImageButton ID="show" runat="server" Height="178px" ImageUrl="~/Images/show.png" OnClick="show_Click" Width="169px"></asp:ImageButton></asp:TableCell>
                    <asp:TableCell ID="TableCell6" runat="server"><asp:ImageButton ID="informations" runat="server" Height="170px" ImageUrl="~/Images/doctor.png" OnClick="informations_Click" Width="183px"></asp:ImageButton></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="linefour" runat="server">
                    <asp:TableCell ID="TableCell7" runat="server"><asp:Label ID="sentence4" runat="server" Text="顯示使用者歷年資訊" ForeColor="Blue"></asp:Label></asp:TableCell>
                    <asp:TableCell ID="TableCell8" runat="server"><asp:Label ID="sentence5" runat="server" Text="診斷" ForeColor="Blue"></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        <br />
        <br />
        <br />
        <asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="使用完畢，登出系統" />
    </center>
    </div>
    </form>
</body>
</html>

