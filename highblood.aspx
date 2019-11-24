<%@ Page Language="C#" AutoEventWireup="true" CodeFile="highblood.aspx.cs" Inherits="highblood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>個人健康資訊管理系統</title>
    <style type="text/css">
        .auto-style1 {
            width: 115px;
        }
        .auto-style2 {
            width: 390px;
        }
        .auto-style3 {
            width: 288px;
        }
        .auto-style4 {
            width: 115px;
            height: 25px;
        }
        .auto-style5 {
            width: 390px;
            height: 25px;
        }
        .auto-style6 {
            width: 288px;
            height: 25px;
        }
    </style>
</head>
<body style="background-color: cornsilk">
    <form id="form1" runat="server">
    <div>
        <center>
        <asp:Image ID="Image1" runat="server" Height="297px" ImageUrl="~/Images/highblood.jpg" style="margin-bottom: 0px" Width="751px" />
    <h1>
        <asp:Label ID="sentence1" runat="server" Text="透過您所填寫的健康狀況，您被判定患有「高血壓」"></asp:Label></h1>
            <p>
            <asp:Label ID="highsentence" runat="server" Text="高血壓" ForeColor="Red"></asp:Label>
            <asp:Label ID="sentence2" runat="server" Text="全稱「動脈高血壓」，是一種動脈血壓升高的慢性病。血壓的升高使心臟推動血液在血管內循環時的負擔增大。"></asp:Label>
            <br />
            <asp:Label ID="sentence3" runat="server" Text="其又分為「原發性高血壓」或「繼發性高血壓」。約90–95%的病例為「原發性高血壓」，即沒有明顯病因的高血壓。"></asp:Label>
            <br />
            <asp:Label ID="sentence4" runat="server" Text="其餘5–10%的病例由影響腎臟、血管、心臟或內分泌系統的其它病症引發。高血壓類性疾病名列中華民國十大死因之一。"></asp:Label>
                </p>
            <h3><asp:Label ID="advice" runat="server" Text="以下為建議："></asp:Label></h3>
           
             <p>     
             <asp:Label ID="changelife" runat="server" Text="1.生活方式的改變" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="140px"></asp:Label>

                <br/>
             <asp:Label ID="sentence5" runat="server" Text="生活方式的變化，即體育鍛鍊和減輕體重。這些改變都已經被證明具有顯著的降低高血壓患者血壓的功效。"></asp:Label>
                <br/>
             <asp:Label ID="sentence6" runat="server" Text="為減輕心理壓力而設制的計劃，如生物反饋、放鬆或打坐皆能降低高血壓，但還沒證明這些方法的療效，因為這些研究的質量比較低。"></asp:Label>
         </p>

            <p>  
            <asp:Label ID="sentence7" runat="server" Text="2.使用藥物" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="140px"></asp:Label>
                <br/>
             <asp:Label ID="sentence8" runat="server" Text="幾種藥物統稱為抗高血壓藥，主要用於治療高血壓等疾病。開藥方時，醫師會考慮到病人的心血管危險（包括心衰與中風危險）及血壓讀數。"></asp:Label>
                <br/>
             <asp:Label ID="sentence9" runat="server" Text="目的是要將大多數人的血壓降低至140/90 mmHg，並降低患有糖尿病和腎病病人的高血壓。如果沒有達到血壓目標，則需進一步治療。"></asp:Label>
       </p>

                        <p>  
            <asp:Label ID="sentence10" runat="server" Text="3.飲食模式的改變" BorderStyle="Outset" BackColor="#CC99FF" BorderColor="#FFFFCC" Height="21px" Width="140px"></asp:Label>
                <br/>
             <asp:Label ID="sentence11" runat="server" Text="低鈉鹽飲食的飲食變化是非常有益的。長期(4周以上)的低鈉鹽飲食在白種人中能有效地降低血壓，無論他們是患有高血壓還是血壓正常的人。"></asp:Label>
                <br/>
             <asp:Label ID="sentence12" runat="server" Text="降血壓飲食法，一種含豐富的堅果、全穀類、魚類、家禽、水果和蔬菜並備受國家心臟、肺和血液研究所推崇的飲食法，也能降低血壓。"></asp:Label>
       </p>

            <h4><asp:Label ID="sentence13" runat="server" Text="高血壓飲食攝取建議："></asp:Label></h4>
<table style="width:66%; height: 298px;border:3px #cccccc solid;" cellpadding="10" border='1'><tr><td class="auto-style1"><b style="color: rgb(0, 0, 0); font-family: &quot;Times ;New Roman&quot; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">類別</span></b></td><td class="auto-style2">
    <b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">可食用的食品</span></b></td><td class="auto-style3"><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">
        避免食用的食品</span></b></td></tr><tr><td class="auto-style1"><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">奶類</span></b></td><td class="auto-style2">各種奶類或奶製品，最好是低脂奶類。<br />
        每日限飲二杯</td><td class="auto-style3">乳酪</td></tr><tr><td class="auto-style1">
    <p align="center" class="MsoNormal" style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; text-align: center; margin-top: 0px; margin-bottom: 0px;">
        <b><span lang="EN-US" style="font-size: 13pt; color: black;">
        <o:p>蛋豆魚肉類</o:p></span></b></p>
    </td><td class="auto-style2">新鮮肉、魚、蛋類新鮮豆類及其製品，如：豆腐、豆漿、豆干等</td><td class="auto-style3">醃製、滷製、燻製的食品，如火腿、香腸、滷味、肉鬆等罐製食品，如：肉醬、沙丁魚等速食品，如：炸雞、漢堡等</td></tr><tr><td class="auto-style1">
    <p align="center" class="MsoNormal" style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; text-align: center; margin-top: 0px; margin-bottom: 0px;">
        <b><span lang="EN-US" style="font-size: 13pt; color: black;">
        <o:p>五穀根莖類</o:p></span></b></p>
    </td><td class="auto-style2">自製米、麵食</td><td class="auto-style3">麵包、蛋糕及甜鹹餅乾、奶酥等油麵、麵線、速食麵、速食米粉</td></tr><tr><td class="auto-style1"><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">油脂類</span></b></td><td class="auto-style2">植物油，如：大豆油、玉米油等</td><td class="auto-style3">奶油、瑪琪琳、沙拉醬、蛋黃醬等</td></tr><tr><td class="auto-style4">
    <b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">蔬菜類</span></b></td><td class="auto-style5">新鮮蔬菜（含鈉量較高的蔬菜宜少食用）<br />
        自製蔬菜汁，毋須再加鹽調味</td><td class="auto-style6">醃製蔬菜，如：榨菜、酸菜、醬菜等加鹽的冷凍蔬菜，如豌豆莢、青豆仁等各種加鹽的加工蔬菜汁及蔬菜罐頭</td></tr><tr><td class="auto-style1"><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">水果類</span></b></td><td class="auto-style2">新鮮水果、自製果汁</td><td class="auto-style3">乾果類，如蜜餞、脫水水果等各類加鹽的罐頭水果及加工果汁</td></tr><tr><td class="auto-style1">
    <b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span style="font-size: 13pt; font-family: 標楷體; color: black;">其他</span></b></td><td class="auto-style2">白糖、白醋、五香料、杏仁露等茶</td><td class="auto-style3">味精、豆瓣醬、辣椒醬、沙茶醬、甜麵醬、蠔油、烏醋、蕃茄醬等雞精、牛肉精炸洋芋片、爆米花、米果運動飲料</td></tr></table>

            <h3><asp:Label ID="come" runat="server" Text="如果想更加了解高血壓的資訊可以參考下面網站："></asp:Label></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://hypertension.org.tw/know.php">中華民國防高血壓協會-認識高血壓</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="http://hypertension.org.tw/publish_cont.php?id=31"> 中華民國防高血壓協會-談高血壓與運動</asp:HyperLink>
 
            <br />
            <br />
 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.stm.org.tw/healthcare/hyperbp.htm">高血壓的保健之道</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://nutri.jtf.org.tw/index.php?idd=1&amp;aid=40&amp;bid=348&amp;cid=1274">高血壓是吃出來的</asp:HyperLink>

            
                 <br />
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="http://www.commonhealth.com.tw/article/article.action?nid=64982">破除高血壓的六大迷思</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:Button ID="return" runat="server" Text="返回最新診斷結果" OnClick="return_Click"></asp:Button>
                 </center>
    </div>
    </form>
</body>
</html>