using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hyperuricemia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void return_Click(object sender, EventArgs e)
    {
        Server.Transfer("inform.aspx", true);
    }
    protected void food_Click(object sender, EventArgs e)
    {
        Server.Transfer("polifood.aspx");
    }
}