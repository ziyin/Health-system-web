<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bradycardia.aspx.cs" Inherits="bradycardia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>個人健康資訊管理系統</title>
      <style type="text/css">
        .auto-style1 {
            width: 109px;
        }
    </style>
</head>
<body style="background-color: cornsilk">
  <form id="form1" runat="server">
    <div>
        <center>
        <asp:Image ID="Image1" runat="server" Height="297px" ImageUrl="~/Images/bradycardia.jpg" style="margin-bottom: 0px" Width="751px" />
    <h1>
        <asp:Label ID="sentence1" runat="server" Text="透過您所填寫的健康狀況，您的心跳過慢了"></asp:Label></h1>
            <p>
            <asp:Label ID="highsentence" runat="server" Text="心跳過慢(bradycardia)" ForeColor="Red"></asp:Label>
            <asp:Label ID="sentence2" runat="server" Text="最常見是意外發現，如體檢時發現或是因為其他原因做身體檢查時偶然發現。"></asp:Label>
            <br />
            <asp:Label ID="sentence3" runat="server" Text="心跳過慢的病患有些不明顯症狀，間斷性，非特異的不適，通常是非特異性且慢性。"></asp:Label>
            <br />
            <asp:Label ID="sentence4" runat="server" Text="除非是很嚴重之心跳過慢，否則二者之間未必有因果關係。矯正了心率，未必能完全改善症狀。"></asp:Label>
                </p>
            <h3><asp:Label ID="advice" runat="server" Text="心跳過慢的常見原因："></asp:Label></h3>
           
             <p>     
             <asp:Label ID="changelife" runat="server" Text="1.竇房結功能失常" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="344px"></asp:Label>

                <br/>
             <asp:Label ID="sentence5" runat="server" Text="盛行率在六十五歲以上的人約六百人中有一位，這些人約佔使用人工節律器的50%左右。"></asp:Label>
                <br/>
             <asp:Label ID="sentence6" runat="server" Text="其原因可能為："></asp:Label>
                 <br/>
<table style="width:56%; height: 88px;border:3px #cccccc solid;"cellpadding="10" border='1'>
    <tr><td class="auto-style1">內在病因</td><td>竇房結的組織由纖維組織取代</td></tr>
    <tr><td class="auto-style1">外在病因</td><td>藥物、電解質不平衡、低體溫症、甲狀腺低下症、腦壓上升、過度迷走神經刺激。</td></tr>
</table>
<br />
      <asp:Label ID="sentence10" runat="server" Text="這些病患的心電圖特徵為竇性心搏過緩，竇性停止，竇性輸出阻滯以及緩脈頻脈症候群。"></asp:Label>   
</p>
            <p>  
            <asp:Label ID="sentence7" runat="server" Text="2.房室傳導障礙" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="348px"></asp:Label>
                <br/>
             <asp:Label ID="sentence8" runat="server" Text="房室傳導延遲的部分在房室結或希氏束。希氏束分枝以下的延遲會造成分支阻滯或是分束阻滯。"></asp:Label>
                <br/>
             <asp:Label ID="sentence9" runat="server" Text="較常見的原因有由於梗塞或是感染或是因導管操作所引起的心肌局部受傷。"></asp:Label>
       </p>
            <h3><asp:Label ID="come" runat="server" Text="如果想更加了解心跳過慢的資訊可以參考下面網站："></asp:Label></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.tma.tw/magazine/ShowRepID.asp?rep_id=1264">心跳過慢 - 台灣醫界雜誌</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://kknews.cc/zh-tw/health/6nx93ep.html">心跳過慢是什麼原因？心跳過慢的危害！</asp:HyperLink>
 
            <br />
            <br />
 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://the-sun.on.cc/cnt/news/20090906/00410_005.html">醫知健：心跳過慢勿輕視- 太陽報</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.tahsda.org.tw/newsletters/?p=904">老人頭暈、昏厥，原來是心跳過慢所導致</asp:HyperLink>

            
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
