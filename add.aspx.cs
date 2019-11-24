using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == null)
        {
            Response.Redirect("log.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

            string connString = WebConfigurationManager.ConnectionStrings["healthdata"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("Select * From situation Where id=@pramaccount AND date=@pramdate", conn);
            cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
            cmd.Parameters.Add("@pramdate", SqlDbType.NVarChar, 50).Value = date.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Write("<Script language='JavaScript'>alert('這個日期已經被登記過了');</Script>");

            }
            else
            {
                dr.Close();
                cmd = new SqlCommand("INSERT INTO situation(date,id,height,weight,subloodpreasure,sobloodpreasure,sugarblood,pulse,sleep,sporttime,urin) VALUES (@pramdate,@pramaccount,@paramheight,@paramweight,@paramsubloodpreasue,@paramsobloodpreasue,@parambloodsugar,@parampulse,@paramsleep,@paramsporttime,@paramuricacid)", conn);
                cmd.Parameters.Add("@pramaccount", SqlDbType.NVarChar, 50).Value = Session["log"];
                cmd.Parameters.Add("@pramdate", SqlDbType.NVarChar, 50).Value = date.Text;
                cmd.Parameters.Add("@paramheight", SqlDbType.Int).Value = height.Text;
                cmd.Parameters.Add("@paramweight", SqlDbType.Int).Value = weight.Text;
                cmd.Parameters.Add("@paramsubloodpreasue", SqlDbType.Int).Value = subloodpreasure.Text;
                cmd.Parameters.Add("@paramsobloodpreasue", SqlDbType.Int).Value = sobloodpreasure.Text;
                cmd.Parameters.Add("@parambloodsugar", SqlDbType.Int).Value = bloodsugar.Text;
                cmd.Parameters.Add("@parampulse", SqlDbType.Int).Value = plure.Text;
                cmd.Parameters.Add("@paramsleep", SqlDbType.NVarChar, 50).Value = sleepsituation.Text;
                cmd.Parameters.Add("@paramsporttime", SqlDbType.Int).Value = sporttime.Text;
                cmd.Parameters.Add("@paramuricacid", SqlDbType.Int).Value = uricacid.Text;
                cmd.ExecuteNonQuery();

                cmd.Cancel();
                conn.Close();
                conn.Dispose();

                Response.Redirect("addseccus.aspx");
            }

    }
}