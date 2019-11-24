<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lowblood.aspx.cs" Inherits="lowblood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>個人健康資訊管理系統</title>
</head>
<body style="background-color: cornsilk">
    <form id="form1" runat="server">
    <div>
        <center>
        <asp:Image ID="Image1" runat="server" Height="297px" ImageUrl="~/Images/lowerblood.jpg" style="margin-bottom: 0px" Width="751px" />
    <h1>
        <asp:Label ID="sentence1" runat="server" Text="透過您所填寫的健康狀況，您被判定患有「低血壓」"></asp:Label></h1>
            <p>
            <asp:Label ID="highsentence" runat="server" Text="低血壓" ForeColor="Red"></asp:Label>
            <asp:Label ID="sentence2" runat="server" Text="在生理學及醫學上是指血壓不正常地低。比起病症，低血壓較適合稱作一種生理狀況。"></asp:Label>
            <br />
            <asp:Label ID="sentence3" runat="server" Text="目前沒有訂定低血壓的標準，但如果一般成人肱動脈血壓小於（90/60mmHg）會被判斷有低血壓。"></asp:Label>
            <br />
            <asp:Label ID="sentence4" runat="server" Text="低血容積是最普遍導致低血壓的原因。這可以是由於出血或失血、飢餓時液體攝取量不足、或是過度失去水份，如痢疾或嘔吐等。"></asp:Label>
                </p>
            <h3><asp:Label ID="advice" runat="server" Text="低血壓分為這兩種："></asp:Label></h3>
           
             <p>     
             <asp:Label ID="changelife" runat="server" Text="1.體位性低血壓(postural hypotension)" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="344px"></asp:Label>

                <br/>
             <asp:Label ID="sentence5" runat="server" Text="從坐下或躺下的姿勢站起時血壓會突然急降，引起頭暈目眩等症狀。"></asp:Label>
                <br/>
             <asp:Label ID="sentence6" runat="server" Text="所以，站立時要慢慢來，尤其是早上起床時，也可先做幾次深呼吸及輕鬆的動作增加身體的血液循環。"></asp:Label>
         </p>

            <p>  
            <asp:Label ID="sentence7" runat="server" Text="2.神經介導性低血壓(neurally mediated hypotension)" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="348px"></asp:Label>
                <br/>
             <asp:Label ID="sentence8" runat="server" Text="站立時間過長會導致血壓下降，引起頭暈、眼花及暈倒。"></asp:Label>
                <br/>
             <asp:Label ID="sentence9" runat="server" Text="應盡量避免站立過久，若需要長時間站立，可隔一段時間便行走幾步，或在原位活動腳部的肌肉。"></asp:Label>
       </p>
            <h3><asp:Label ID="come" runat="server" Text="如果想更加了解低血壓的資訊可以參考下面網站："></asp:Label></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.postal.com.tw/%E7%B6%B2%E7%AB%99%E8%A1%9B%E6%95%99%E5%96%AE%E5%BC%B5/%E5%BF%83%E8%87%9F%E5%85%A7%E7%A7%91/%E8%AA%8D%E8%AD%98%E4%BD%8E%E8%A1%80%E5%A3%93.htm">認識低血壓</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="http://blog.udn.com/Elisa37/7539829">認識低血壓及養生方法</asp:HyperLink>
 
            <br />
            <br />
 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.epochtimes.com/b5/15/7/24/n4487732.htm">低血壓的九大成因與防治</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.mingpaocanada.com/healthnet/content.php?artid=5602">低血壓的治療方法</asp:HyperLink>

            
                 <br />
            <br />
            <br />
            <br />
            <asp:Button ID="return" runat="server" Text="返回最新診斷結果" OnClick="return_Click"></asp:Button>
                 </center>
    </div>
    </form>
</body>
</html>

