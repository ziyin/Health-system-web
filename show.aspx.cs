using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == null)
        {
            Response.Redirect("log.aspx");
        }
        else
        {
            Label id = new Label();
            id.Text = Convert.ToString(Session["log"]);
            String sentence = "";
            String acco = "使用者帳號：";
            acco += id.Text + "</b><br />";
            string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * From situation Where id=@pramaccount", conn);
            cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
            SqlDataReader dr = cmd.ExecuteReader();
            if (!dr.HasRows)
            {
                Label2.Text = "並" + "&nbsp;" + "沒" + "&nbsp;" + "有" + "&nbsp;" + "登" + "&nbsp;" + "錄" + "&nbsp;" + "資" + "&nbsp;" + "料" + "&nbsp;";
            }
            else
            {
                dr.Close();
                DataSet datainformation = new DataSet();

                SqlDataAdapter inform1 = new SqlDataAdapter();
                SqlDataAdapter inform2 = new SqlDataAdapter();

                cmd = new SqlCommand("Select * From people Where account=@paramid", conn);
                inform1.SelectCommand = cmd;
                cmd.Parameters.Add("@paramid", SqlDbType.NVarChar, 50).Value = id.Text;
                inform1.Fill(datainformation, "table1");
                cmd = new SqlCommand("Select * From situation Where id=@paramid ORDER BY date", conn);
                inform2.SelectCommand = cmd;
                cmd.Parameters.Add("@paramid", SqlDbType.NVarChar, 50).Value = id.Text;
                inform2.Fill(datainformation, "table2");

                datainformation.Relations.Add("relationship", datainformation.Tables["table1"].Columns["account"], datainformation.Tables["table2"].Columns["id"]);

                foreach (DataRow row1 in datainformation.Tables["table1"].Rows)
                {
                    acco += "姓名：" + row1["name"].ToString() + "</b><br />";
                    acco += "</small><hr />";
                    acc.Text = acco;
                    foreach (DataRow row2 in row1.GetChildRows(datainformation.Relations["relationship"]))
                    {
                        sentence += "登錄日期" + row2["date"].ToString() + "</b><br />" + "</b><br />";
                        sentence = sentence + "身高：" + row2["height"].ToString() + "cm" + "&nbsp;&nbsp;";
                        sentence = sentence + "體重：" + row2["weight"].ToString() + "kg" + "</b><br />";
                        sentence = sentence + "舒張壓：" + row2["subloodpreasure"].ToString() + "mmHg" + "&nbsp;&nbsp;";
                        sentence = sentence + "收縮壓：" + row2["sobloodpreasure"].ToString() + "mmHg" + "</b><br />";
                        sentence = sentence + "脈搏：" + row2["pulse"].ToString() + "次/min" + "&nbsp;&nbsp;";
                        sentence = sentence + "血糖：" + row2["sugarblood"].ToString() + "mg/dl" + "</b><br />";
                        sentence = sentence + "睡眠狀況：" + row2["sleep"].ToString() + "</b><br />";
                        sentence = sentence + "運動時間：" + row2["sporttime"].ToString() + "hr" + "&nbsp;&nbsp;";
                        sentence = sentence + "尿酸" + row2["urin"].ToString() + "mg/dl" + "</b><br />";
                        sentence += "</small><hr />";
                    }
                    Label1.Text = sentence;
                    sentence = "";

                }
            }
        }
    }
    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}