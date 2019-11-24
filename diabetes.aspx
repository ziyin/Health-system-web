<%@ Page Language="C#" AutoEventWireup="true" CodeFile="diabetes.aspx.cs" Inherits="diabetes" %>

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
        <asp:Image ID="Image1" runat="server" Height="297px" ImageUrl="~/Images/diabetes.jpg" style="margin-bottom: 0px" Width="751px" />
    <h1>
        <asp:Label ID="sentence1" runat="server" Text="透過您所填寫的健康狀況，您被判定患有「糖尿病」"></asp:Label></h1>
            <p>
            <asp:Label ID="highsentence" runat="server" Text="糖尿病" ForeColor="Red"></asp:Label>
            <asp:Label ID="sentence2" runat="server" Text="的病人在發病的早期，大部分病人都沒有什麼特別的症狀，要是沒有刻意去檢查的話，根本無從發現。"></asp:Label>
            <br />
            <asp:Label ID="sentence3" runat="server" Text="目前沒有訂定低血壓的標準，但如果一般成人肱動脈血壓小於（90/60mmHg）會被判斷有低血壓。"></asp:Label>
            <br />
            <asp:Label ID="sentence4" runat="server" Text="低血容積是最普遍導致低血壓的原因。這可以是由於出血或失血、飢餓時液體攝取量不足、或是過度失去水份，如痢疾或嘔吐等。"></asp:Label>
                </p>
            <h3><asp:Label ID="advice" runat="server" Text="常見的糖尿病分為這兩種："></asp:Label></h3>
           
             <p>     
             <asp:Label ID="changelife" runat="server" Text="1.胰島素依存型糖尿病 ( IDDM )" BorderStyle="Outset" BackColor="#FF9900" Height="21px" Width="344px"></asp:Label>

                <br/>
             <asp:Label ID="sentence5" runat="server" Text="IDDM的特徵是病症發生時很急，容易發生酮症。為了預防酮症的發生，不得不用胰島素( Insulin ) 注射。"></asp:Label>
                <br/>
             <asp:Label ID="sentence6" runat="server" Text="這種病型多發生在年少的人，家族性的發病率比NIDDM低。至今所謂的不安定糖尿病，以此型較多。"></asp:Label>
                </p>
            <p>     
            <asp:Label ID="sentence7" runat="server" Text="2.非胰島素依存型糖尿病 ( NIDDM )" BorderStyle="Outset" BackColor="#FF9900" Height="21px" Width="348px"></asp:Label>
                <br/>
             <asp:Label ID="sentence8" runat="server" Text="病狀發生的情形較緩和。雖然年輕人也會發生這種病型，但是以40歲以上的人居多。"></asp:Label>
                <br/>
             <asp:Label ID="sentence9" runat="server" Text="發病時，很少有酮症 ( Ketosis ) 的現象。在治療上，也並不一定需要胰島素。"></asp:Label>
            <br />
            <asp:LinkButton ID="else" runat="server" OnClick="else_Click">其他的糖尿病</asp:LinkButton>
                </p>
            <h3><asp:Label ID="outside" runat="server" Text="糖尿病的症狀："></asp:Label></h3>
           <asp:Table ID="symptom" runat="server" Width="876px">
               <asp:TableRow ID="first" runat="server">
                   <asp:TableCell ID="TableCell1" runat="server">頻尿且口渴感：</asp:TableCell>
                   <asp:TableCell ID="TableCell2" runat="server">腎臟忙著把無法利用的過多糖分排到尿液中，連帶地也把大量水份從體內排出。</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="second" runat="server">
                   <asp:TableCell ID="TableCell3" runat="server">飢餓感：</asp:TableCell>
                   <asp:TableCell ID="TableCell4" runat="server">由於無法充分利用血液中的糖分，身體內細胞無法獲得能源，造成患者喜歡吃大量甜點或零食</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="third" runat="server">
                   <asp:TableCell ID="TableCell5" runat="server">體重發生變化：</asp:TableCell>
                   <asp:TableCell ID="TableCell6" runat="server">因為血液中的葡萄糖不能夠充分利用，而過度攝取儲存於人體內的脂肪以補充熱能，所以身體會迅速消瘦。</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="fourth" runat="server">
                   <asp:TableCell ID="TableCell7" runat="server">容易疲勞：</asp:TableCell>
                   <asp:TableCell ID="TableCell8" runat="server">身體容易疲勞、長青春痘、做事無法像往日精神旺盛。這種倦怠感有時是全身，有時僅下半身。</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="fifth" runat="server">
                   <asp:TableCell ID="TableCell9" runat="server">視力減退：</asp:TableCell>
                   <asp:TableCell ID="TableCell10" runat="server">視力模糊、眼睛容易疲勞。</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="sixth" runat="server">
                   <asp:TableCell ID="TableCell11" runat="server">末稍神經症狀：</asp:TableCell>
                   <asp:TableCell ID="TableCell12" runat="server">易有頑固性的手脚痲痺與陣痛感。因糖尿病而引起的神經炎脚痛症者較多，有時候會激烈的疼痛。</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="seventh" runat="server">
                   <asp:TableCell ID="TableCell13" runat="server">皮膚搔癢：</asp:TableCell>
                   <asp:TableCell ID="TableCell14" runat="server">皮膚的抵抗力也同時減弱，受傷時易引起感染、長癤瘡、炎症容易擴張。</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="eieghth" runat="server">
                   <asp:TableCell ID="TableCell15" runat="server">女性月經異常：</asp:TableCell>
                   <asp:TableCell ID="TableCell16" runat="server">缺乏胰島素的荷爾蒙所致，是性荷爾蒙失去平衡而引起的。</asp:TableCell>
               </asp:TableRow>
               <asp:TableRow ID="ninth" runat="server">
                   <asp:TableCell ID="TableCell17" runat="server">男性陽萎症狀：</asp:TableCell>
                   <asp:TableCell ID="TableCell18" runat="server">勃起神經與排尿時都是由骶髓中的神經中樞所控制。</asp:TableCell>
               </asp:TableRow>
            </asp:Table> 
            <h3><asp:Label ID="food" runat="server" Text="糖尿病的飲食："></asp:Label></h3>
            <asp:Table ID="diabetefood" runat="server">
                <asp:TableRow ID="one" runat="server">
                    <asp:TableCell ID="TableCell19" runat="server">主食類：</asp:TableCell>
                    <asp:TableCell ID="TableCell20" runat="server">榖類、芋頭、蕃薯、馬鈴薯等。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="two" runat="server">
                    <asp:TableCell ID="TableCell21" runat="server">奶類：</asp:TableCell>
                    <asp:TableCell ID="TableCell22" runat="server">低脂、脫脂奶為主</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="three" runat="server">
                    <asp:TableCell ID="TableCell23" runat="server">蛋類：</asp:TableCell>
                    <asp:TableCell ID="TableCell24" runat="server">每週以不超過3~4個蛋黃為原則。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="four" runat="server">
                    <asp:TableCell ID="TableCell25" runat="server">魚、肉類：</asp:TableCell>
                    <asp:TableCell ID="TableCell26" runat="server">瘦肉部分遵飲食計劃食用</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="five" runat="server">
                    <asp:TableCell ID="TableCell27" runat="server">豆製品：</asp:TableCell>
                    <asp:TableCell ID="TableCell28" runat="server">是指黃豆製品。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="six" runat="server">
                    <asp:TableCell ID="TableCell29" runat="server">蔬菜類：</asp:TableCell>
                    <asp:TableCell ID="TableCell30" runat="server">充分攝取，以新鮮蔬菜為主。</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="seven" runat="server">
                    <asp:TableCell ID="TableCell31" runat="server">水果類：</asp:TableCell>
                    <asp:TableCell ID="TableCell32" runat="server">遵照飲食計劃食用，以甜味較低的水果種類作為優先選擇。</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <h3><asp:Label ID="come" runat="server" Text="如果想更加了解糖尿病的資訊可以參考下面網站："></asp:Label></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://zh.wikipedia.org/wiki/%E7%B3%96%E5%B0%BF%E7%97%85">糖尿病(Wikipedia)</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://www.careonline.com.tw/2017/03/DM.html">你有糖尿病嗎？（懶人包）</asp:HyperLink>
 
            <br />
            <br />
 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://www.bd.com/tw/diabetes/main.aspx?cat=6211&amp;id=6371">糖尿病的類型</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.diabetes.org.tw/wddt_heduc01.jsp?P_TNO=EDUC990010001&amp;P_HCTG=A">什麼是糖尿病</asp:HyperLink>
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
