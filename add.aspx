<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

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
        <h1><asp:Label ID="sentence1" runat="server" Text="登錄健康狀況"></asp:Label></h1>
        <asp:Table ID="Table" runat="server">
            <asp:TableRow ID="time" runat="server">
                <asp:TableCell ID="TableCell1" runat="server"><asp:Label ID="sentence2" runat="server" Text="登錄日期："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server"><asp:TextBox ID="date" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server"><asp:Label ID="dan1" runat="server" Text="(yyyy/mm/dd)"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="timeerror" runat="server">
                <asp:TableCell ID="TableCell4" runat="server"><asp:RequiredFieldValidator ID="nodate" runat="server" ErrorMessage="日期未填寫" ControlToValidate="date" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell5" runat="server"><asp:CompareValidator ID="datefill" runat="server" ControlToValidate="date" Operator="DataTypeCheck" Type="date" ErrorMessage="日期輸入錯誤" ForeColor="Red"></asp:CompareValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="high" runat="server">
                <asp:TableCell ID="TableCell6" runat="server"><asp:Label ID="sentence3" runat="server" Text="身高："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server"><asp:TextBox ID="height" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell8" runat="server"><asp:Label ID="dan2" runat="server" Text="cm"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="highterror" runat="server">
                <asp:TableCell ID="TableCell9" runat="server"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="身高未輸入" ControlToValidate="height" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell10" runat="server"><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="身高範圍錯誤" ControlToValidate="height" ForeColor="Red" MaximumValue="250" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="fat" runat="server">
                <asp:TableCell ID="TableCell11" runat="server"><asp:Label ID="sentence4" runat="server" Text="體重："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell12" runat="server"><asp:TextBox ID="weight" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell13" runat="server"><asp:Label ID="dan3" runat="server" Text="kg"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="faterror" runat="server">
                <asp:TableCell ID="TableCell14" runat="server"><asp:RequiredFieldValidator ID="noweight" runat="server" ErrorMessage="體重未輸入" ControlToValidate="weight" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell15" runat="server"><asp:RangeValidator ID="weightrange" runat="server" ErrorMessage="體重範圍錯誤" ControlToValidate="weight" ForeColor="Red" MaximumValue="250" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="supreasure" runat="server">
                <asp:TableCell ID="TableCell16" runat="server"><asp:Label ID="sentence5" runat="server" Text="舒張壓："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell17" runat="server"><asp:TextBox ID="subloodpreasure" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell18" runat="server"><asp:Label ID="dan4" runat="server" Text="mmHg"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="supreasureerroe" runat="server">
                <asp:TableCell ID="TableCell19" runat="server"><asp:RequiredFieldValidator ID="nosubloodpreasure" runat="server" ErrorMessage="舒張壓未輸入" ControlToValidate="subloodpreasure" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell20" runat="server"><asp:RangeValidator ID="subloodpreasurerange" runat="server" ErrorMessage="舒張壓範圍錯誤" ControlToValidate="subloodpreasure" ForeColor="Red" MaximumValue="300" MinimumValue="5" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="sopreasure" runat="server">
                <asp:TableCell ID="TableCell21" runat="server"><asp:Label ID="sentence11" runat="server" Text="收縮壓："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell22" runat="server"><asp:TextBox ID="sobloodpreasure" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell23" runat="server"><asp:Label ID="dan5" runat="server" Text="mmHg"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="sopreasureerroe" runat="server">
                <asp:TableCell ID="TableCell24" runat="server"><asp:RequiredFieldValidator ID="nosopreasure" runat="server" ErrorMessage="收縮壓未輸入" ControlToValidate="sobloodpreasure" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell25" runat="server"><asp:RangeValidator ID="sopreasurerange" runat="server" ErrorMessage="收縮壓範圍錯誤" ControlToValidate="sobloodpreasure" ForeColor="Red" MaximumValue="300" MinimumValue="10" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="sugar" runat="server">
                <asp:TableCell ID="TableCell26" runat="server"><asp:Label ID="sentence6" runat="server" Text="血糖："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell27" runat="server"><asp:TextBox ID="bloodsugar" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell28" runat="server"><asp:Label ID="dan6" runat="server" Text="mg/dl"></asp:Label></asp:TableCell>     
                 </asp:TableRow>
             <asp:TableRow ID="sugarerror" runat="server">
                <asp:TableCell ID="TableCell29" runat="server"><asp:RequiredFieldValidator ID="nosugar" runat="server" ErrorMessage="血糖未輸入" ControlToValidate="bloodsugar" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell30" runat="server"><asp:RangeValidator ID="sugarrange" runat="server" ErrorMessage="血糖範圍錯誤" ControlToValidate="bloodsugar" ForeColor="Red" MaximumValue="300" MinimumValue="10" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="boom" runat="server">
                <asp:TableCell ID="TableCell31" runat="server"><asp:Label ID="sentence7" runat="server" Text="脈搏："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell32" runat="server"><asp:TextBox ID="plure" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell33" runat="server"><asp:Label ID="dan7" runat="server" Text="次/min"></asp:Label></asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow ID="boomerror" runat="server">
                <asp:TableCell ID="TableCell34" runat="server"><asp:RequiredFieldValidator ID="noboom" runat="server" ErrorMessage="脈搏未輸入" ControlToValidate="plure" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell35" runat="server"><asp:RangeValidator ID="boomrange" runat="server" ErrorMessage="脈搏範圍錯誤" ControlToValidate="plure" ForeColor="Red" MaximumValue="300" MinimumValue="10" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="zz" runat="server">
                <asp:TableCell ID="TableCell36" runat="server"><asp:Label ID="sentence8" runat="server" Text="睡眠狀況："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell37" runat="server"><asp:TextBox ID="sleepsituation" runat="server" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="zzerror" runat="server">
                <asp:TableCell ID="TableCell38" runat="server" ColumnSpan="3"><asp:RequiredFieldValidator ID="nozz" runat="server" ErrorMessage="未輸入睡眠狀況" ControlToValidate="sleepsituation" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="sport" runat="server">
                <asp:TableCell ID="TableCell39" runat="server"><asp:Label ID="sentence9" runat="server" Text="今天運動時間："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell40" runat="server"><asp:TextBox ID="sporttime" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell41" runat="server"><asp:Label ID="dan8" runat="server" Text="hr"></asp:Label></asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow ID="sporterror" runat="server">
                <asp:TableCell ID="TableCell42" runat="server"><asp:RequiredFieldValidator ID="nosport" runat="server" ErrorMessage="運動時間未輸入" ControlToValidate="sporttime" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell43" runat="server"><asp:RangeValidator ID="sportrange" runat="server" ErrorMessage="運動時間範圍錯誤" ControlToValidate="sporttime" ForeColor="Red" MaximumValue="24" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="urin" runat="server">
                <asp:TableCell ID="TableCell44" runat="server"><asp:Label ID="sentence10" runat="server" Text="尿酸："></asp:Label></asp:TableCell>
                <asp:TableCell ID="TableCell45" runat="server"><asp:TextBox ID="uricacid" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell ID="TableCell46" runat="server"><asp:Label ID="dan9" runat="server" Text="mg/dl"></asp:Label></asp:TableCell> 
            </asp:TableRow>
             <asp:TableRow ID="urinerror" runat="server">
                <asp:TableCell ID="TableCell47" runat="server"><asp:RequiredFieldValidator ID="nouricacid" runat="server" ErrorMessage="尿酸未輸入" ControlToValidate="uricacid" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                <asp:TableCell ID="TableCell48" runat="server"><asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="尿酸範圍錯誤" ControlToValidate="uricacid" ForeColor="Red" MaximumValue="30" MinimumValue="0" Type="Integer"></asp:RangeValidator></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
                <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定輸入" OnClick="Button1_Click" />
    </center>
        </div>
    </form>
</body>
</html>
