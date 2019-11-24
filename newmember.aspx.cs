using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class newmember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            TextBox SourceTextBox = (TextBox)Page.PreviousPage.FindControl("account");
            if (SourceTextBox != null)
            {
                account.Text = SourceTextBox.Text;
            }
        }
        if (!Page.IsPostBack)
        {
            string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlDataAdapter citydata = new SqlDataAdapter("Select * From countrycity", conn);
            DataTable cida = new DataTable();
            citydata.Fill(cida);
            city.DataSource = cida;
            city.DataTextField = cida.Columns["city"].ToString();
            city.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * From people Where account=@pramaccount", conn);
            cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 10).Value = account.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Write("<Script language='JavaScript'>alert('帳號已經被註冊過了');</Script>");

            }
            else
            {
                dr.Close();
                cmd.Cancel();
                cmd = new SqlCommand("INSERT INTO people(account,password,name,city,age,sex) VALUES (@paramaccount,@parampassword,@paramname,@paramcity,@paramage,@paramsex)", conn);
                cmd.Parameters.Add("@paramaccount", SqlDbType.NVarChar, 50).Value = account.Text;
                cmd.Parameters.Add("@parampassword", SqlDbType.NChar, 10).Value = password.Text;
                cmd.Parameters.Add("@paramname", SqlDbType.NVarChar, 50).Value = name.Text;
                cmd.Parameters.Add("@paramcity", SqlDbType.NVarChar, 50).Value = city.SelectedItem.Text;
                cmd.Parameters.Add("@paramage", SqlDbType.NVarChar, 50).Value = age.Text;
                cmd.Parameters.Add("@paramsex", SqlDbType.NVarChar, 50).Value = sexchoose.SelectedItem.Text;
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("log.aspx");
            }
        }
        catch
        {
        }


    }

}