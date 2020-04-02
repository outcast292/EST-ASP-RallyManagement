using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InscriptionAdminRallye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        dtns.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = !Calendar1.Visible;
        if (Calendar1.Visible & !String.IsNullOrEmpty(dtns.Text))
            Calendar1.VisibleDate = Calendar1.SelectedDate = Convert.ToDateTime(dtns.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (lg.Text == "") { Label2.Visible = true; }
        else
        {
            SqlDataSource1.Insert();
            nom.Text = "";
            pre.Text = "";
            dtns.Text = "";
            mp.Text = "";
            lg.Text = "";
            nom.Focus();
            Label2.Visible = false; 
        }

    }
}