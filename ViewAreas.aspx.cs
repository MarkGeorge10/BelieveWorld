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

public partial class ViewAreas : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities DB = new db_a7b2aa_accorrEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (var area in DB.AreaGovs)
        {
            var projects = DB.BliverProjects.Where(j => j.AreaID == area.ID_Location );


            MainDiv.InnerHtml += " <a class=col - md - 4 grid - margin stretch - card href=AddArea.aspx?areaId="+area.ID_Location +">" + 
                                                "<div class=card>" +
                                                    "<div class=card-body d-flex flex-column justify-content-between>" +
                                                        "<div class=d-flex justify-content-between align-items-center mb-2>" +
                                                            "<p class=mb-0 text-muted>" + area.AreaName + "</p>" +
                                                        "</div>" +
                                                        "<h4>" + projects.Count() + "</h4>" +
                                                        "<canvas id = Pipeline-chart class=mt-auto height=65></canvas>" +
                                                    " </div>" +
                                                "</div>" +
                                  " </a>";


        }

    }





    protected void btnSave_Click(object sender, EventArgs e)
    {

      

      
     
    }
}