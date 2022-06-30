using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddClient : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities DB = new db_a7b2aa_accorrEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Attribute to show the Plus Minus Button.
        GridView1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

        //Attribute to hide column in Phone.
        GridView1.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
        GridView1.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";

        //Adds THEAD and TBODY to GridView.
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        DB.Clients.Add(new Client
        {
            ClientName = CNameTXT.Text,
            ClientEmail = CEmailTXT.Text,
            ClientMob = CMobTXT.Text,
            ClientAddress = CAddressTXT.Text,
            Clientcat = CCategoryDDL.SelectedIndex,
            Birthdate = DateTime.Parse( CBirthdateTXT.Text),
            Education =CEducationTXT.Text,
            Gender = CGenderTXT.Text,
            jobTitle = CjobtitleTXT.Text,
            HomeTown = CHometownTXT.Text,
            WorkPlace = CWorkplaceTXT.Text,
            AreaIntersted = intrstedareaTXT.Text,
            status = true,
        });
        DB.SaveChanges();
        lblmasg.Text = "Client Saved ";
     
    }
}