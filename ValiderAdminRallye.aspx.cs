using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ValiderAdminRallye : System.Web.UI.Page
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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Int32 index = Convert.ToInt32(e.CommandArgument);
        AdminRallye Oadmr = new AdminRallye();
        Oadmr.SetLonginAdminRallye(GridView1.Rows[index].Cells[0].Text);
        Oadmr.SetMotDePasse(GridView1.Rows[index].Cells[1].Text);
        Oadmr.SetPrenomAdmin(GridView1.Rows[index].Cells[2].Text);
        Oadmr.SetNomAdmin(GridView1.Rows[index].Cells[3].Text);
        Oadmr.SetDateNaissance(Convert.ToDateTime(GridView1.Rows[index].Cells[4].Text));
        Oadmr.ajouter();
        Oadmr.supprimer1();
        //POUR RE6FETCHER AUTOMATIQUEMENT DEPUIS LA BD
        //GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ValiderAdminRallye.aspx");
    }
}