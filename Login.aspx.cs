using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities Db = new db_a7b2aa_accorrEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (Db.BliverUsers.Where(k => k.BliverUserName == UserName.Text && k.BliverPassword == Password.Text && k.BliverFlag == true).Count() > 0)
        {
            var link = Db.BliverUsers.Where(k => k.BliverUserName == UserName.Text || k.BliverPassword == Password.Text).ToList();
            foreach (var us in link)
            {
                Session["UserID"] = us.BlieverID;
                Session["CompID"] = us.BliverCompID;

                Response.Redirect("~/dashboard.aspx?ResID=" + us.BlieverID + "");
            }
        }
        else
        {
            lblmasg.Text = "Sorry You UserName or Password Not Correct , Kindly Contact With Your Company Admin.";
        }
    }
}