using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clientgrid : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities DB = new db_a7b2aa_accorrEntities();
    string q;
    string userid;
    string comid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string QS = Request.QueryString["STID"];
            q = QS;
            if (Session["UserID"] != null && Session["CompID"] != null)
            {
                userid = Session["UserID"].ToString();
                comid = Session["CompID"].ToString();
            }
            if (QS != null)
            {
            }
        }
            }
}