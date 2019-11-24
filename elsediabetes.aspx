<%@ Page Language="C#" AutoEventWireup="true" CodeFile="elsediabetes.aspx.cs" Inherits="elsediabetes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <title>個人健康資訊管理系統</title>
</head>
<body style="background-image:url(sky.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div>
    <center>
            <h1><asp:Label ID="sentence" runat="server" Text="其他的糖尿病："></asp:Label></h1>
        <table style="width: 67%; height: 519px;">
            <tr>
                <td class="auto-style1">內分泌疾患</td>
                <td>褐色細胞腫、Aldosteron症、末端巨大症、甲狀腺機能亢進症、<br />
                    Cushing症候群、Prolactin分泌腫瘍、Glucagonoma等。</td>
            </tr>
            <tr>
                <td class="auto-style1">藥劑引起</td>
                <td>Thiazide系利尿劑、Steroid荷爾蒙、甲狀腺荷爾蒙、 <br />
                    Phenothiazin系藥劑、Catecolamin等。</td>
            </tr>
            <tr>
                <td class="auto-style1">胰島素受容體異常</td>
                <td>失天性脂肪萎縮症、胰島素受容體抗體等。</td>
            </tr>
             <tr>
                <td class="auto-style1">遺傳性疾患</td>
                <td>糖原病、脂肪萎縮性糖尿病、成長荷爾蒙單獨欠損症、<br />
                    Friedreich失調症、Haemochromatosis等。</td>
            </tr>
            <tr>
                <td class="auto-style1">胰臟疾患</td>
                <td>先天性胰島欠損、囊胞性纖維症。</td>
            </tr>
            <tr>
                <td class="auto-style1">其他</td>
                <td>營養失調等。</td>
            </tr>
        </table>
            <br />
            <asp:Button ID="back" runat="server" Text="返回糖尿病的建議畫面" OnClick="back_Click"></asp:Button>
            </center>
    </div>
    </form>
</body>
</html>
