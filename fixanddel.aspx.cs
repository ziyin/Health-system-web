using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class fixanddel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == null)
        {
            Response.Redirect("log.aspx");
        }
        else
        {
            string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * From people Where account=@pramaccount", conn);
            cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                na.Text = "姓名：" + dr["name"].ToString();
                year.Text = "年齡：" + dr["age"].ToString();
                live.Text = "居住城市：" + dr["city"].ToString();
                sex.Text = "性別：" + dr["sex"].ToString();
            }
        }

    }
    protected void sure_Click(object sender, EventArgs e)
    {
        string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();

        SqlCommand cmd = new SqlCommand("Select * From situation Where id=@pramaccount AND date=@pramdate", conn);
        cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
        cmd.Parameters.Add("@pramdate", SqlDbType.NVarChar, 50).Value = choosedate.Text;
        SqlDataReader dr = cmd.ExecuteReader();
        if (!dr.HasRows)
        {
            Response.Write("<Script language='JavaScript'>alert('並沒有登錄過這天');</Script>");
        }
        else
        {
            while (dr.Read())
            {
                tall.Text = dr["height"].ToString();
                fat.Text = dr["weight"].ToString();
                su.Text = dr["sobloodpreasure"].ToString();
                so.Text = dr["subloodpreasure"].ToString();
                sugar.Text = dr["sugarblood"].ToString();
                boom.Text = dr["pulse"].ToString();
                zz.Text = dr["sleep"].ToString();
                sport.Text = dr["sporttime"].ToString();
                urin.Text = dr["urin"].ToString();
            }
        }
        dr.Close();
        cmd.Cancel();
        conn.Close();
    }
    protected void fix_Click(object sender, EventArgs e)
    {
        if (tall.Text == "" || fat.Text == "" || su.Text == "" || so.Text == "" || sugar.Text == "" || boom.Text == " " || zz.Text == "" || sport.Text == "" || urin.Text== "")
        {
            Response.Write("<Script language='JavaScript'>alert('有空格並未填寫');</Script>");
        }
        else
        {
        string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();

        SqlCommand cmd = new SqlCommand("Update situation Set height=@pramtall,weight=@pramfat,subloodpreasure=@pramsu,sobloodpreasure=@pramso,sugarblood=@pramsugar,pulse=@pramboom,sleep=@pramzz,sporttime=@pramsport,urin=@pramurin Where id=@pramaccount AND date=@pramdate", conn);
        cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
        cmd.Parameters.Add("@pramdate", SqlDbType.NVarChar, 50).Value = choosedate.Text;
        cmd.Parameters.Add("@pramtall", SqlDbType.Int).Value = tall.Text;
        cmd.Parameters.Add("@pramfat", SqlDbType.Int).Value = fat.Text;
        cmd.Parameters.Add("@pramsu", SqlDbType.Int).Value = su.Text;
        cmd.Parameters.Add("@pramso", SqlDbType.Int).Value = so.Text;
        cmd.Parameters.Add("@pramsugar", SqlDbType.Int).Value = sugar.Text;
        cmd.Parameters.Add("@pramboom", SqlDbType.Int).Value = boom.Text;
        cmd.Parameters.Add("@pramzz", SqlDbType.NVarChar, 50).Value = zz.Text;
        cmd.Parameters.Add("@pramsport", SqlDbType.Int).Value = sport.Text;
        cmd.Parameters.Add("@pramurin", SqlDbType.Int).Value = urin.Text;
        cmd.ExecuteNonQuery();

        cmd.Cancel();
        conn.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();

        SqlCommand cmd = new SqlCommand("Delete From situation Where id=@pramaccount AND date=@pramdate", conn);
        cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
        cmd.Parameters.Add("@pramdate", SqlDbType.NVarChar, 50).Value = choosedate.Text;
        cmd.ExecuteNonQuery();

        cmd.Cancel();
        conn.Close();

        Response.Redirect("del.aspx");
    }
    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}