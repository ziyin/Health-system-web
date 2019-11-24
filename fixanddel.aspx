<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fixanddel.aspx.cs" Inherits="fixanddel" %>

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
        <h1><asp:Label ID="sentence1" runat="server" Text="修改、刪除各種健康資訊"></asp:Label></h1>
        </br>
                <asp:Table ID="peotable" runat="server" Height="90px" Width="325px">
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell ID="TableCell1" runat="server" ColumnSpan="2"><h3><asp:Label ID="sentence3" runat="server" Text="個人資訊："></asp:Label></h3></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell ID="TableCell2" runat="server"><asp:Label ID="na" runat="server" Text=""></asp:Label></asp:TableCell>                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell ID="TableCell5" runat="server"><asp:Label ID="year" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow5" runat="server">
                        <asp:TableCell ID="TableCell9" runat="server"><asp:Label ID="live" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell ID="TableCell3" runat="server"><asp:Label ID="sex" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
        <h3><asp:Label ID="sentence2" runat="server" Text="請問要修改或刪除的日期為："></asp:Label><asp:TextBox ID="choosedate" runat="server" Font-Overline="False" Font-Underline="False" AutoPostBack="True" OnTextChanged="sure_Click">(yyyy/mm/dd)</asp:TextBox></br><asp:CompareValidator ID="datefill" runat="server" ControlToValidate="choosedate" Operator="DataTypeCheck" Type="date" ErrorMessage="日期輸入錯誤" ForeColor="Red"></asp:CompareValidator></h3>
                <br /><hr /><br />
                <asp:Table ID="sittable" runat="server">
                    <asp:TableRow ID="TableRow6" runat="server">
                        <asp:TableCell ID="TableCell12" runat="server" ColumnSpan="3"><h3><asp:Label ID="sentence7" runat="server" Text="身體資訊："></asp:Label></h3></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow7" runat="server">
                        <asp:TableCell ID="TableCell13" runat="server"><asp:Label ID="sentence8" runat="server" Text="身高："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server"><asp:TextBox ID="tall" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell15" runat="server"><asp:Label ID="dan2" runat="server" Text="cm"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="highterror" runat="server">
                        <asp:TableCell ID="TableCell17" runat="server"><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="身高範圍錯誤" ControlToValidate="tall" ForeColor="Red" MaximumValue="250" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow8" runat="server">
                        <asp:TableCell ID="TableCell18" runat="server"><asp:Label ID="sentence9" runat="server" Text="體重："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell19" runat="server"><asp:TextBox ID="fat" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell20" runat="server"><asp:Label ID="dan3" runat="server" Text="kg"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="faterror" runat="server">
                        <asp:TableCell ID="TableCell22" runat="server"><asp:RangeValidator ID="weightrange" runat="server" ErrorMessage="體重範圍錯誤" ControlToValidate="fat" ForeColor="Red" MaximumValue="250" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow9" runat="server">
                        <asp:TableCell ID="TableCell23" runat="server"><asp:Label ID="sentence10" runat="server" Text="舒張壓："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell24" runat="server"><asp:TextBox ID="su" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell25" runat="server"><asp:Label ID="dan4" runat="server" Text="mmHg"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="supreasureerroe" runat="server">
                        <asp:TableCell ID="TableCell27" runat="server"><asp:RangeValidator ID="subloodpreasurerange" runat="server" ErrorMessage="舒張壓範圍錯誤" ControlToValidate="su" ForeColor="Red" MaximumValue="300" MinimumValue="5" Type="Integer"></asp:RangeValidator></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow10" runat="server">
                        <asp:TableCell ID="TableCell28" runat="server"><asp:Label ID="sentence11" runat="server" Text="收縮壓："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell29" runat="server"><asp:TextBox ID="so" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell30" runat="server"><asp:Label ID="dan5" runat="server" Text="mmHg"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="sopreasureerroe" runat="server">
                        <asp:TableCell ID="TableCell32" runat="server"><asp:RangeValidator ID="sopreasurerange" runat="server" ErrorMessage="收縮壓範圍錯誤" ControlToValidate="so" ForeColor="Red" MaximumValue="300" MinimumValue="10" Type="Integer"></asp:RangeValidator></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow11" runat="server">
                        <asp:TableCell ID="TableCell33" runat="server"><asp:Label ID="sentence12" runat="server" Text="血糖："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell34" runat="server"><asp:TextBox ID="sugar" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell35" runat="server"><asp:Label ID="dan6" runat="server" Text="mg/dl"></asp:Label></asp:TableCell> 
                    </asp:TableRow>
                    <asp:TableRow ID="sugarerror" runat="server">
                        <asp:TableCell ID="TableCell37" runat="server"><asp:RangeValidator ID="sugarrange" runat="server" ErrorMessage="血糖範圍錯誤" ControlToValidate="sugar" ForeColor="Red" MaximumValue="300" MinimumValue="10" Type="Integer"></asp:RangeValidator></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow12" runat="server">
                        <asp:TableCell ID="TableCell38" runat="server"><asp:Label ID="sentence13" runat="server" Text="脈搏："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell39" runat="server"><asp:TextBox ID="boom" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell40" runat="server"><asp:Label ID="dan7" runat="server" Text="次/min"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="boomerror" runat="server">
                        <asp:TableCell ID="TableCell42" runat="server"><asp:RangeValidator ID="boomrange" runat="server" ErrorMessage="脈搏範圍錯誤" ControlToValidate="boom" ForeColor="Red" MaximumValue="300" MinimumValue="10" Type="Integer"></asp:RangeValidator></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow13" runat="server">
                        <asp:TableCell ID="TableCell43" runat="server"><asp:Label ID="sentence14" runat="server" Text="睡眠狀態："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell44" runat="server"><asp:TextBox ID="zz" runat="server" TextMode="MultiLine" ColumnSpan="2"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="zzerror" runat="server">
                         <asp:TableCell ID="TableCell4" runat="server"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow14" runat="server">
                        <asp:TableCell ID="TableCell46" runat="server"><asp:Label ID="sentence15" runat="server" Text="運動時間："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell47" runat="server"><asp:TextBox ID="sport" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell48" runat="server"><asp:Label ID="dan8" runat="server" Text="hr"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="sporterror" runat="server">
                        <asp:TableCell ID="TableCell50" runat="server"><asp:RangeValidator ID="sportrange" runat="server" ErrorMessage="運動時間範圍錯誤" ControlToValidate="sport" ForeColor="Red" MaximumValue="24" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow15" runat="server">
                        <asp:TableCell ID="TableCell51" runat="server"><asp:Label ID="sentence16" runat="server" Text="尿酸："></asp:Label></asp:TableCell>
                        <asp:TableCell ID="TableCell52" runat="server"><asp:TextBox ID="urin" runat="server" Width="128px"></asp:TextBox></asp:TableCell>
                        <asp:TableCell ID="TableCell53" runat="server"><asp:Label ID="dan9" runat="server" Text="mg/dl"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="urinerror" runat="server">
                        <asp:TableCell ID="TableCell55" runat="server"><asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="尿酸範圍錯誤" ControlToValidate="urin" ForeColor="Red" MaximumValue="30" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>

                    </asp:TableRow>
                </asp:Table>
                <br /><hr />
<asp:Button ID="fix" runat="server" Text="修改" BackColor="Fuchsia" OnClick="fix_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">刪除</asp:LinkButton>
                <br />
                <br />
                <asp:Button ID="return" runat="server" Text="返回功能頁面" OnClick="return_Click"></asp:Button>
    </center>
        </div>
    </form>
</body>
</html>
