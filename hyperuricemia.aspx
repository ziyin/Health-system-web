<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hyperuricemia.aspx.cs" Inherits="hyperuricemia" %>

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
<asp:Image ID="hyperuricemiaimagin" runat="server" Height="367px" ImageUrl="~/Images/hyperuricemia.jpeg" Width="821px"></asp:Image>
<h1>
        <asp:Label ID="sentence1" runat="server" Text="透過您所填寫的健康狀況，您被判定患有「高尿酸血症」"></asp:Label></h1>
            <p>
            <asp:Label ID="highsentence" runat="server" Text="高尿酸血症" ForeColor="Red"></asp:Label>
            <asp:Label ID="sentence2" runat="server" Text="是台灣地區常見的血中生化檢驗異常。其是指血中尿酸濃度過高，其定義分為二種"></asp:Label>
            <br />
            <asp:Label ID="sentence3" runat="server" Text="其一是流行病學上的定義，指血中尿酸濃度比正常人的平均值加上二個標準差還高，便稱為高尿酸血症。"></asp:Label>
            <br />fiu
            <asp:Label ID="sentence4" runat="server" Text="另一則是生理化學上的定義，是指血中每100 毫升血液中的尿酸濃度大於 6.8 或 7.0 毫克(mg/dL)以上。"></asp:Label>
                </p>
            <h3><asp:Label ID="advice" runat="server" Text="血中尿酸過高的原因："></asp:Label></h3>
        <p><asp:Table ID="highreason" runat="server">
            <asp:TableRow ID="one" runat="server">
                <asp:TableCell ID="TableCell1" runat="server">第一點：</asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server">過量攝取富含普林的食物。</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="two" runat="server">
                <asp:TableCell ID="TableCell3" runat="server">第二點：</asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server">尿酸在人體內的合成增加。</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="three" runat="server">
                <asp:TableCell ID="TableCell5" runat="server">第三點：</asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server">腎臟或膀胱排除尿酸的功能受阻。</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
             </p>  
              <h3><asp:Label ID="sentence5" runat="server" Text="痛風與高尿酸血症的關係"></asp:Label></h3>
        <p>
            <asp:Label ID="sentence6" runat="server" Text="痛風是因為關節中之關節液，其尿酸濃度過高，進而形成結晶堆積在關節內，造成關節發炎。"></asp:Label>
            <br />
            <asp:Label ID="sentence7" runat="server" Text="血中尿酸值越高，越容易造成關節尿酸增多，罹患痛風的機率越高。"></asp:Label>
            <br />
            <asp:Label ID="sentence8" runat="server" Text="，兩者之間雖然有顯著的相關性，但並非所有有高尿酸血症都會發生痛風。"></asp:Label>
             </p>  
              <h3><asp:Label ID="Label1" runat="server" Text="控制方法："></asp:Label></h3>
        <p><asp:Table ID="way" runat="server">
            <asp:TableRow ID="first" runat="server">
                <asp:TableCell ID="TableCell7" runat="server">第一點：</asp:TableCell>
                <asp:TableCell ID="TableCell8" runat="server">普林含量高，應儘量減少食用。</asp:TableCell>
                <asp:TableCell ID="TableCell9" runat="server"><asp:LinkButton ID="food" runat="server" OnClick="food_Click">普林高的食物</asp:LinkButton></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="second" runat="server">
                <asp:TableCell ID="TableCell10" runat="server">第二點：</asp:TableCell>
                <asp:TableCell ID="TableCell11" runat="server">維持理想體重，但減重以緩慢為宜，以避免急性痛風發作。</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="third" runat="server">
                <asp:TableCell ID="TableCell12" runat="server">第三點：</asp:TableCell>
                <asp:TableCell ID="TableCell13" runat="server">多喝水，避免喝酒和暴飲暴食。</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <h3><asp:Label ID="come" runat="server" Text="如果想更加了解低血壓的資訊可以參考下面網站："></asp:Label></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.arthritisfound.org.tw/medical-article/%E7%97%9B%E9%A2%A8%E8%88%87%E9%AB%98%E5%B0%BF%E9%85%B8%E8%A1%80%E7%97%87/">痛風與高尿酸血症 (GOUT AND HYPERURICEMIA)</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://emedicine.medscape.com/article/241767-overview">Hyperuricemia: Background, Pathophysiology, Epidemiology</asp:HyperLink>
 
            <br />
            <br />
 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.yeezen.com.tw/Document/KLFile/yzkl02003.htm">高尿酸血症需要治療嗎 ? </asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://kknews.cc/zh-tw/health/n6avx3.html">尿酸偏高不能吃什麼食物</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:Button ID="return" runat="server" Text="返回最新診斷" OnClick="return_Click"></asp:Button>
                 </center>
    </form>
</body>
</html>
