using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == null)
        {
            Response.Redirect("log.aspx");
        }
    }
    protected void add_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("add.aspx", true);
    }
    protected void fixanddelet_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("fixanddel.aspx", true);
    }
    protected void show_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("show.aspx", true);
    }
    protected void informations_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("inform.aspx", true);
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("log.aspx");
    }
}