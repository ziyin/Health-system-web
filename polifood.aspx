<%@ Page Language="C#" AutoEventWireup="true" CodeFile="polifood.aspx.cs" Inherits="polifood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>個人健康資訊管理系統</title>
    <style type="text/css">
        .auto-style1 {
            width: 108px;
        }
    </style>
</head>
<body style="background-image:url(foodbackgound.jpg);background-size:cover">
    <form id="form1" runat="server">
    <div>
        <center>
            <h1><asp:Label ID="sentence" runat="server" Text="普林含量高的食物"></asp:Label></h1>
        <table style="width: 67%; height: 519px;">
            <tr>
                <td class="auto-style1">1.</td>
                <td><span style="color: rgb(68, 68, 68); font-family: 標楷體; font-size: 18.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: -23.8667px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.85); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">發芽豆類、豆苗、黃豆、黃豆芽、蘆筍、紫菜、香菇及其製品。</span></td>
            </tr>
            <tr>
                <td class="auto-style1">2.</td>
                <td><span style="color: rgb(68, 68, 68); font-family: 標楷體; font-size: 18.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: -23.8667px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.85); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">雞肝、雞腸、鴨肝、豬肝、豬腸、牛肝。</span></td>
            </tr>
            <tr>
                <td class="auto-style1">3.</td>
                <td><span style="color: rgb(68, 68, 68); font-family: 標楷體; font-size: 18.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: -23.8667px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.85); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">肉汁、濃肉湯、雞精。</span></td>
            </tr>
             <tr>
                <td class="auto-style1">4.</td>
                <td><span style="color: rgb(68, 68, 68); font-family: 標楷體; font-size: 18.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: -23.8667px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.85); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">白鯧魚、鰱魚、虱目魚、吳郭魚、四破魚、白帶魚、烏魚、鯊魚、海鰻、<br />
                    沙丁魚、魚乾。</td>
            </tr>
            <tr>
                <td class="auto-style1">5.</td>
                <td><span style="color: rgb(68, 68, 68); font-family: 標楷體; font-size: 18.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: -23.8667px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.85); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">小管、草蝦、牡蠣、蛤蠣、蚌蛤、干貝。</span></td>
            </tr>
            <tr>
                <td class="auto-style1">6.</td>
                <td><span style="color: rgb(68, 68, 68); font-family: 標楷體; font-size: 18.6667px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: -23.8667px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.85); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">酵母粉。</span></td>
            </tr>
        </table>
            <br />
            <asp:Button ID="back" runat="server" Text="返回高尿酸血症的建議畫面" OnClick="back_Click"></asp:Button>
            </center>
    </div>
    </form>
</body>
</html>

