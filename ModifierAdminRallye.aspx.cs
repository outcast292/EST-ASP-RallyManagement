using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifierAdminRallye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((String)Session["AdminGeneral"] == null)
            Response.Redirect("AdminGeneral.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("AdminGeneral");
        Response.Redirect("AdminGeneral.aspx");
    }
}