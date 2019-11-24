using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class del : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == null)
        {
            Response.Redirect("log.aspx");
        }
    }
    protected void choose_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (choose.SelectedItem.Value == "0")
        {
            Response.Redirect("fixanddel.aspx");
        }
        else
        {
            Response.Redirect("main.aspx");
        }
    }
}