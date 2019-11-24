<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Arrhythmia.aspx.cs" Inherits="Arrhythmia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>個人健康資訊管理系統</title>
    <style type="text/css">
        .auto-style1 {
            width: 99px;
        }
    </style>
</head>
<body style="background-color: cornsilk">
   <form id="form1" runat="server">
    <div>
        <center>
        <asp:Image ID="Image1" runat="server" Height="297px" ImageUrl="~/Images/Arrhythmia.jpg" style="margin-bottom: 0px" Width="751px" />
    <h1>
        <asp:Label ID="sentence1" runat="server" Text="透過您所填寫的健康狀況，您的心跳過快"></asp:Label></h1>
            <p>
            <asp:Label ID="highsentence" runat="server" Text="心跳太快" ForeColor="Red"></asp:Label>
            <asp:Label ID="sentence2" runat="server" Text="涵括陣發性心室上心率過速、心室心率過速、心房顫動、心房纖維顫動等形式。"></asp:Label>
            <br />
            <asp:Label ID="sentence3" runat="server" Text="而心跳太快有可能是因為罹患了心律不整，假如情況持續未改善，則建議您到心臟內科進行檢查。"></asp:Label>
            <br />
            <asp:Label ID="sentence4" runat="server" Text="當心跳過快時，可以依循下列方式改善："></asp:Label>
                <table style="width:67%; height: 232px; border:3px #cccccc solid;"cellpadding="10" border='1'>
                    <tr><td class="auto-style1">藥物治療和預防</td><td>不能根治，長期用藥可能有副作用。</td></tr>
                    <tr><td class="auto-style1">屏氣法</td><td>心情放鬆，閉上眼睛，深吸一口氣屏住不吐，過一會再吐出氣。</td></tr>
                    <tr><td class="auto-style1">導管手術治療</td><td>目前最佳的選擇是射頻消融術，且為一次性根治。</td></tr>
                    <tr><td class="auto-style1">壓迫頸動脈竇</td><td>在頸部大約與甲狀軟骨上緣同一水平的部位，以第2、3、4手指向頸椎壓迫，每次時間不超過5-10秒鐘。</td></tr>
                    <tr><td class="auto-style1">壓迫眼球</td><td>以手指壓迫一側或兩側眼球約10秒鐘，等到心跳有暫時停止現象時，慢慢減壓。</td></tr>
                </table>
                </p>
            <h3><asp:Label ID="advice" runat="server" Text="心跳過快的常見原因："></asp:Label></h3>
           
             <p>     
             <asp:Label ID="changelife" runat="server" Text="1.生理性" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="344px"></asp:Label>

                <br/>
             <asp:Label ID="sentence5" runat="server" Text="生理性竇性心動過速是很常見的,許多因素都影響心率。"></asp:Label>
                <br/>
             <asp:Label ID="sentence6" runat="server" Text="年齡也是一個因素,兒童心率往往較快。"></asp:Label>
         </p>

            <p>  
            <asp:Label ID="sentence7" runat="server" Text="2.藥物性" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="348px"></asp:Label>
                <br/>
             <asp:Label ID="sentence8" runat="server" Text="如擬交感神經藥物如麻黃素,腎上腺素。"></asp:Label>
                <br/>
             <asp:Label ID="sentence9" runat="server" Text="副交感神經阻斷藥物如阿托品,咖啡因。"></asp:Label>
       </p>
                        <p>  
            <asp:Label ID="sentence10" runat="server" Text="3.病理性" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="348px"></asp:Label>
                <br/>
             <asp:Label ID="sentence11" runat="server" Text="即某些疾病誘發的心跳過快。比如貧血、腦血栓、神經官能症等。"></asp:Label>
                <br/>
             <asp:Label ID="sentence12" runat="server" Text="造成心臟供血不足導致大腦缺氧，進而造成心跳過快。"></asp:Label>
       </p>
                        <p>  
            <asp:Label ID="sentence13" runat="server" Text="4.心臟血管疾病" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="348px"></asp:Label>
                <br/>
             <asp:Label ID="sentence14" runat="server" Text="如急性失血、低血壓、休克、動靜脈瘺、心肌炎。"></asp:Label>
                <br/>
             <asp:Label ID="sentence15" runat="server" Text="以及各種器質性心臟病都可導致竇性心動過速。"></asp:Label>
       </p>
            <h3><asp:Label ID="come" runat="server" Text="如果想更加了解心跳過快的資訊可以參考下面網站："></asp:Label></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://lovelyou.pixnet.net/blog/post/28872018-%E5%BF%83%E8%B7%B3%E9%81%8E%E5%BF%AB%E7%9A%84%E5%8F%AF%E8%83%BD%E5%8E%9F%E5%9B%A0">心跳過快的可能原因</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://read01.com/zh-tw/48aLAO.html#.WhBRZUqWbIU">心跳過快的緊急處理</asp:HyperLink>
 
            <br />
            <br />
 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://info.babyhome.com.tw/article/4541">心跳100，要小心！</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.999health.online/Article/jijiu/jjzs/jjcs/201607/28290.html">心跳過快怎麼辦_急救常識</asp:HyperLink>

            
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
