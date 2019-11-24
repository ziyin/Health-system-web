using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        try
        {
            string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * From people Where account=@pramaccount", conn);
            cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 10).Value = account.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (!dr.HasRows)
            {
                Response.Write("<Script language='JavaScript'>alert('沒有這個帳號');</Script>");

            }
            else
            {
                dr.Close();
                cmd.Cancel();
                try
                {
                    cmd = new SqlCommand("Select * From people Where account=@pramaccount AND password=@prampassword", conn);
                    cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 10).Value = account.Text;
                    cmd.Parameters.Add("@prampassword", SqlDbType.NVarChar, 10).Value = password.Text;
                    dr = cmd.ExecuteReader();
                    if (!dr.HasRows)
                    {
                        Response.Write("<Script language='JavaScript'>alert('密碼錯誤');</Script>");

                    }
                    else
                    {
                        Session["log"] = account.Text;
                        Response.Redirect("main.aspx");
                    }
                    dr.Close();
                    cmd.Cancel();
                    conn.Close();
                }
                catch
                {
                    Response.Write("<Script language='JavaScript'>alert('密碼錯誤');</Script>");
                }
            }
        }
        catch
        {
        }
    }
    protected void newone_Click(object sender, EventArgs e)
    {
        Server.Transfer("newmember.aspx", true);
    }
}