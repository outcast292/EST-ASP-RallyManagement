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
/// Description résumée de AdminGeneral
/// </summary>
public class AdminGeneral
{
    private string LoginAdminGeneral;
    private string MotDePasse;
    public CCnx OCnx;
    public AdminGeneral() { }
    public void SetLoginAdminGeneral(string LoginAdminGeneral)
    {
        this.LoginAdminGeneral = LoginAdminGeneral;
    }
    public string GetLoginAdminGeneral()
    {
        return this.LoginAdminGeneral;
    }
    public void SetMotDePasse(string MotDePasse)
    {
        this.MotDePasse = MotDePasse;
    }
    public string GetMotDePasse()
    {
        return this.MotDePasse;
    }
    string ss;
    DataRow row;
    public Boolean UnicId()
    {
        OCnx = new CCnx();
        OCnx.Open();
        OCnx.Consultation("select count(*) as p from AdminGeneral where LoginAdminGeneral = '" + this.LoginAdminGeneral + "' and MotDePasse = '" + this.MotDePasse + "'");
        row = OCnx.Tab.Rows[0];
        ss = row[0].ToString();
        if (ss == "0")
        {
            return false;
        }
        return true;
    }
}