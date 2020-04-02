using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Description résumée de AdminRallye
/// </summary>
public class AdminRallye
{

    private string LonginAdminRallye;
    private string MotDePasse;
    private string NomAdmin;
    private string PrenomAdmin;
    private DateTime DateNaissance;
    public CCnx OCnx;
    public AdminRallye()
    { }
    public void SetLonginAdminRallye(string LonginAdminRallye)
    {
        this.LonginAdminRallye = LonginAdminRallye;
    }
    public string GetLonginAdminRallye()
    {
        return this.LonginAdminRallye;
    }
    public void SetMotDePasse(string MotDePasse)
    {
        this.MotDePasse = MotDePasse;
    }
    public string GetMotDePasse()
    {
        return this.MotDePasse;
    }
    public void SetNomAdmin(string NomAdmin)
    {
        this.NomAdmin = NomAdmin;
    }
    public string GetNomAdmin()
    {
        return this.NomAdmin;
    }
    public void SetPrenomAdmin(string PrenomAdmin)
    {
        this.PrenomAdmin = PrenomAdmin;
    }
    public string GetPrenomAdmin()
    {
        return this.PrenomAdmin;
    }
    public void SetDateNaissance(DateTime DateNaissance)
    {
        this.DateNaissance = DateNaissance;
    }
    public DateTime GetDateNaissance()
    {
        return this.DateNaissance;
    }
    public void ajouter()
    {
        CCnx OCnx = new CCnx();
        OCnx.Open();
        OCnx.Consultation("insert into AdminRallye values('" + this.LonginAdminRallye + "','" + this.MotDePasse + "','" + this.NomAdmin + "','" + this.PrenomAdmin + "','" + this.DateNaissance + "')");
    }
    public void ajouter1()
    {
        CCnx OCnX = new CCnx();
        OCnx.Open();
        OCnx.Consultation("insert into TempAdminRallye values('" + this.LonginAdminRallye + "','" + this.MotDePasse + "','" + this.NomAdmin + "','" + this.PrenomAdmin + "','" + this.DateNaissance + "')");
    }

    public void supprimer1()
    {
        CCnx OCnx = new CCnx();
        OCnx.Open();
        OCnx.Consultation("delete from TempAdminRallye where LonginAdminRallye = '" + this.LonginAdminRallye + "'");
    }
    string ss;
    DataRow row;
    public Boolean UnicId()
    {
        OCnx = new CCnx();
        OCnx.Open();
        OCnx.Consultation("select count(*) as p from AdminRallye where LonginAdminRallye = '" + this.LonginAdminRallye + "' and MotDePasse = '" +       this.MotDePasse + "'");
        row = OCnx.Tab.Rows[0];
        ss = row[0].ToString();
        if (ss == "0")
        {
            return false;
        }
        return true;
    }

}