using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class inform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == null)
        {
            Response.Redirect("log.aspx");
        }
        else
        {
            try
            {
                string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("Select * From situation Where id=@pramaccount ORDER BY date", conn);
                cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    time.Text = dr["date"].ToString();
                    Session["tall"] = dr["height"].ToString();
                    Session["fat"] = dr["weight"].ToString();
                    Session["su"] = dr["subloodpreasure"].ToString();
                    Session["so"] = dr["sobloodpreasure"].ToString();
                    Session["sugar"] = dr["sugarblood"].ToString();
                    Session["boom"] = dr["pulse"].ToString();
                    Session["sport"] = dr["sporttime"].ToString();
                    Session["urin"] = dr["urin"].ToString();
                }
                dr.Close();
                cmd.Cancel();
                conn.Close();

                float h, w, bmi;
                Label a = new Label();
                Label hi = new Label();
                Label wei = new Label();
                Label bmit = new Label();

                a.Text = (string)Session["tall"];
                h = float.Parse(a.Text);
                hi.Text ="身高：" + (string)Session["tall"]+"cm" + "&nbsp;&nbsp;";

                a.Text = (string)Session["fat"];
                wei.Text = "體重：" + (string)Session["fat"] +"kg"+ "<br>";
                w = float.Parse(a.Text);

                h = h / 100;
                bmi = w / (h * h);
                if (bmi < 18.5)
                {
                    Session["bmi"] = "low";
                }
                else if (bmi >= 18.5 && bmi < 24)
                {
                    Session["bmi"] = "normal";
                }
                else if (bmi > 24)
                {
                    Session["bmi"] = "high";
                }
                Label bmisentence = new Label();

                if ((string)Session["bmi"] == "low")
                {

                    bmisentence.Text = "<br>"+"您的 BMI 過輕了。";
                }
                else if ((string)Session["bmi"] == "normal")
                {
                    bmisentence.Text = "<br>" + "您的 BMI 在正常範圍了。";
                }
                else if ((string)Session["bmi"] == "high")
                {
                    bmisentence.Text = "<br>" + "您的 BMI 過重了。";
                }
                bmit.Text = "<br>" + "BMI為：" + bmi + "<br>";
                bmipanel.Controls.Add(hi);
                bmipanel.Controls.Add(wei);
                bmipanel.Controls.Add(bmit);
                bmipanel.Controls.Add(bmisentence);
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////血壓
                Label so = new Label();
                Label su = new Label();
                int sop, sup;
                a.Text = (String)Session["so"];
                sop = int.Parse(a.Text);
                so.Text = "<br>"+"收縮壓：" + a.Text + "mmHg" + "&nbsp;&nbsp;";
                a.Text = (String)Session["su"];
                sup = int.Parse(a.Text);
                su.Text = "舒張壓：" + a.Text + "mmHg"+"<br>";

                if (sop < 90 || sup < 60)
                {
                    Session["bloodpresure"] = "low";
                }
                if (sop >= 90 && sop <= 119 && sup >= 60 && sup <= 79)
                {
                    Session["bloodpresure"] = "normal";
                }
                if (sop >= 120 && sop <= 130)
                {
                    Session["bloodpresure"] = "normalhigh";
                }
                if (sup >= 80 && sup <= 89)
                {
                    Session["bloodpresure"] = "normalhigh";
                }
                if (sop >= 140 && sop <= 159)
                {
                    Session["bloodpresure"] = "oneblood";
                }
                if (sup >= 90 && sup <= 99)
                {
                    Session["bloodpresure"] = "oneblood";
                }
                if (sop >= 160 && sop <= 179)
                {
                    Session["bloodpresure"] = "twoblood";
                }
                if (sup >= 100 && sup <= 109)
                {
                    Session["bloodpresure"] = "twoblood";
                }
                if (sop > 180 || sup > 110)
                {
                    Session["bloodpresure"] = "thirdblood";
                }

                Label bloodpresuresentence1 = new Label();
                Label bloodpresuresentence2 = new Label();
                LinkButton lowbloodpresurebotton = new LinkButton();
                lowbloodpresurebotton.Text = "低血壓要怎麼辦" + "</br>";
                lowbloodpresurebotton.Click += lowbloodpresure_Click;
                LinkButton highbloodpresurebotton = new LinkButton();
                highbloodpresurebotton.Text = "高血壓要怎麼辦" + "</br>";
                highbloodpresurebotton.Click += highbloodpresure_Click;
                if ((String)Session["bloodpresure"] == "low")
                {
                    bloodpresuresentence1.Text = "<br>" + "您的血壓過低，" + "</br>";
                    bloodpresuresentence2.Text = "<br>" + "需要治療。" + "</br>";
                    hiblood.Controls.Add(lowbloodpresurebotton);
                }
                else if ((String)Session["bloodpresure"] == "normal")
                {
                    bloodpresuresentence1.Text = "<br>" + "您的血壓水平理想並且健康，" + "</br>";
                    bloodpresuresentence2.Text = "<br>" + "但每兩年需要重測一次。" + "</br>";
                }
                else if ((String)Session["bloodpresure"] == "normalhigh")
                {
                    bloodpresuresentence1.Text = "<br>" + "您的血壓雖然在正常值內，但有點偏高，" + "</br>";
                    bloodpresuresentence2.Text = "<br>" + "需要降壓，並且每年需要重測一次。" + "</br>";
                    hiblood.Controls.Add(highbloodpresurebotton);
                }
                else if ((String)Session["bloodpresure"] == "oneblood")
                {
                    bloodpresuresentence1.Text = "<br>" + "您為『1期高血壓』，" + "</br>";
                    bloodpresuresentence2.Text = "<br>" + "需要盡快看醫生。" + "</br>";
                    hiblood.Controls.Add(highbloodpresurebotton);
                }
                else if ((String)Session["bloodpresure"] == "twoblood")
                {
                    bloodpresuresentence1.Text = "<br>" + "您為『2期高血壓』，" + "</br>";
                    bloodpresuresentence2.Text = "<br>" + "需要盡快看醫生。" + "</br>";
                    hiblood.Controls.Add(highbloodpresurebotton);
                }
                else if ((String)Session["bloodpresure"] == "thirdblood")
                {
                    bloodpresuresentence1.Text = "<br>" + "您為『3期高血壓』，" + "</br>";
                    bloodpresuresentence2.Text = "<br>" + "必須立刻治療。" + "</br>";
                    hiblood.Controls.Add(highbloodpresurebotton);
                }
                hiblood.Controls.Add(so);
                hiblood.Controls.Add(su);
                hiblood.Controls.Add(bloodpresuresentence1);
                hiblood.Controls.Add(bloodpresuresentence2);
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////血糖
                int sugar;
                Label sugaro = new Label();
                a.Text = (string)Session["sugar"];
                sugar = int.Parse(a.Text);
                sugaro.Text = "</br>" + "血糖：" + a.Text + "mg/dl" + "</br>";

                if (sugar >= 126)
                {
                    Session["bloodsugar"] = "high";
                }
                else if (sugar <= 100)
                {
                    Session["bloodsugar"] = "normal";
                }
                else if (sugar > 100 && sugar < 126)
                {
                    Session["bloodsugar"] = "highfirst";
                }

                Label bloodsugar1 = new Label();
                Label bloodsugar2 = new Label();
                LinkButton bloodsuga = new LinkButton();
                bloodsuga.Text ="糖尿病要怎麼辦" + "</br>";
                bloodsuga.Click += bloodsuga_Click;
                if ((String)Session["bloodsugar"] == "high")
                {
                    bloodsugar1.Text = "<br>" + "您已達到「高血糖」的定義，" + "</br>";
                    bloodsugar2.Text = "<br>" + "應再進一步做：「飯後兩個小時血糖」值及「糖化血色素」值之檢驗，以確定診斷。" + "</br>";
                    sugarpanel.Controls.Add(bloodsuga);
                }
                else if ((String)Session["bloodsugar"] == "highfirst")
                {
                    bloodsugar1.Text = "<br>" + "您已達到「糖尿病前期」的定義，" + "</br>";
                    bloodsugar2.Text = "<br>" + "應再進一步做：「飯後兩個小時血糖」值及「糖化血色素」值之檢驗，以確定診斷。" + "</br>";
                    sugarpanel.Controls.Add(bloodsuga);
                }
                else if ((String)Session["bloodsugar"] == "normal")
                {
                    bloodsugar1.Text = "<br>" + "您的血糖在正常值範圍中，" + "</br>";
                    bloodsugar2.Text = "<br>" + "但記得要飲食均衡、維持理想體重、運動以及定期健康檢查，以保持血糖正常。" + "</br>";
                }
                sugarpanel.Controls.Add(sugaro);
                sugarpanel.Controls.Add(bloodsugar1);
                sugarpanel.Controls.Add(bloodsugar2);
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////心跳
                int boomboom;
                Label number = new Label();
                a.Text = (String)Session["boom"];
                boomboom = int.Parse(a.Text);
                number.Text = "脈搏" + boomboom + "次/min" + "<br>";
                heart.Controls.Add(number);
                if (boomboom > 100)
                {
                    Session["heartboom"] = "quick";
                }
                else if (boomboom < 60)
                {
                    Session["heartboom"] = "slow";
                }
                else if (boomboom >= 60 && boomboom <= 100)
                {
                    Session["heartboom"] = "normal";
                }

                Label heartboom1 = new Label();
                Label heartboom2 = new Label();

                LinkButton heartslow = new LinkButton();
                heartslow.Text = "<br>" + "心跳太慢要怎麼辦" + "</br>";
                heartslow.Click += heartslow_Click;

                LinkButton heartquick = new LinkButton();
                heartquick.Text = "<br>" + "心跳太快要怎麼辦" + "</br>";
                heartquick.Click += heartquick_Click;

                if ((String)Session["heartboom"] == "slow")
                {
                    heartboom1.Text = "<br>" + "您的心跳過慢，" + "</br>";
                    heartboom2.Text = "<br>" + "建議去心臟內科就診。" + "</br>";
                    heart.Controls.Add(heartslow);
                }
                else if ((String)Session["heartboom"] == "quick")
                {
                    heartboom1.Text = "<br>" + "您的心跳過快，" + "</br>";
                    heartboom2.Text = "<br>" + "請盡快去心臟內科就診" + "</br>";
                    heart.Controls.Add(heartquick);
                }
                else if ((String)Session["heartboom"] == "normal")
                {
                    heartboom1.Text = "<br>" + "您的心跳速度在正常值，" + "</br>";
                    heartboom2.Text = "<br>" + "請繼續保持。" + "</br>";
                }
                heart.Controls.Add(heartboom1);
                heart.Controls.Add(heartboom2);
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////尿酸
                int urin;
                a.Text = (string)Session["urin"];
                urin = int.Parse(a.Text);

                if (urin >= 7)
                {
                    Session["urine"] = "have";
                }

                Label urinacid1 = new Label();
                Label urinacid2 = new Label();
                if ((String)Session["urine"] == "have")
                {
                    urinacid1.Text = "<br>" + "您已達到高尿酸血症的診斷標準，" + "</br>";
                    urinacid2.Text = "<br>" + "請盡快去家庭醫學科看診。" + "</br>";
                    LinkButton urinaci = new LinkButton();
                    urinaci.Text = "高尿酸血症要怎麼辦" + "</br>";
                    urinaci.Click += urinaci_Click;
                    urinpanel.Controls.Add(urinaci);
                }
                else
                {
                    urinacid1.Text = "您並未達到高尿酸血症的診斷標準，" + "</br>";
                    urinacid2.Text = "<br>" + "請維持適當飲食。" + "</br>";
                }
                urinpanel.Controls.Add(urinacid1);
                urinpanel.Controls.Add(urinacid2);


            }
            catch (Exception ex)
            {
                Response.Write("<Script language='JavaScript'>alert('並未登錄過資訊');</Script>");
            }
        }
    }
    protected void lowbloodpresure_Click(object sender, EventArgs e)
    {
        Server.Transfer("lowblood.aspx", false);
    }
    protected void highbloodpresure_Click(object sender, EventArgs e)
    {
        Server.Transfer("highblood.aspx", true);
    }
    protected void bloodsuga_Click(object sender, EventArgs e)
    {
        Server.Transfer("diabetes.aspx", true);
    }
    protected void heartslow_Click(object sender, EventArgs e)
    {
        Server.Transfer("bradycardia.aspx", true);
    }
    protected void heartquick_Click(object sender, EventArgs e)
    {
        Server.Transfer("Arrhythmia.aspx", true);
    }
    protected void urinaci_Click(object sender, EventArgs e)
    {
        Server.Transfer("hyperuricemia.aspx", true);
    }
    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }

}