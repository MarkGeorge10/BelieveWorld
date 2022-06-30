using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddArea : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities DB = new db_a7b2aa_accorrEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }




    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (ANameTXT.Text == null || ANameTXT.Text == "")
        {
            lblmasg.Text = "Development name is required";
        }
        else if (AGovernTXT.Text == null || AGovernTXT.Text == "")
        {
            lblmasg.Text = "Owner name is required";
        }
        else
        {
            DB.AreaGovs.Add(new AreaGov
            {
                AreaName = ANameTXT.Text,
                GovernName = AGovernTXT.Text
            });
            DB.SaveChanges();
            lblmasg.Text = "Area Saved Successfully";
        }

       
     
    }
}