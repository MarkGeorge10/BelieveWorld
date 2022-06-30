using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dashboard : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities Db = new db_a7b2aa_accorrEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        string QS = Request.QueryString["ResID"];
        if (QS != null)
        {
            int i = int.Parse(QS);
            var uprof = Db.BliverUsers.Where(j => j.BlieverID == i).ToList();
            foreach (var userprofile in uprof)
            {
                if (userprofile.BliverGender == "male")
                {
                    prof.InnerHtml = @"<img src='images/faces/male.png' alt='profile'/><span class='nav-profile-name'>" + userprofile.BliverFullName + "</span>";
                    person.InnerHtml = @"       <div class='col-md-4'>
                                                    <figure class='avatar mx-auto mb-4 mb-md-0'>
                                                        <img src='images/faces/male.png' alt='avatar'>
                                                    </figure>
                                                </div>
                                              
                                                <div class='col-md-8'>
                                                    <h5 class='text-white text-center text-md-left'>" + userprofile.BliverFullName +"</h5><p class='text-white text-center text-md-left'>"+ userprofile.BliverEmail+"</p><div class='d-flex align-items-center justify-content-between info pt-2'><div><p class='text-white font-weight-bold'>Birth date</p><p class='text-white font-weight-bold'>Mobile</p></div> <div> <p class='text-white'>"+userprofile.BliverBirthdate+"</p> <p class='text-white'>"+userprofile.BliverMob+"</p> </div> </div></div>";
                }
                else {
                    prof.InnerHtml = @" <img src='images/faces/female.png' alt='profile' />

                                <span class='nav-profile-name'>" + userprofile.BliverFullName + "</span>";
                    person.InnerHtml = @"       <div class='col-md-4'>
                                                    <figure class='avatar mx-auto mb-4 mb-md-0'>
                                                        <img src='images/faces/female.png' alt='avatar'>
                                                    </figure>
                                                </div>
                                              
                                                <div class='col-md-8'>
                                                    <h5 class='text-white text-center text-md-left'>" + userprofile.BliverFullName + "</h5><p class='text-white text-center text-md-left'>" + userprofile.BliverEmail + "</p><div class='d-flex align-items-center justify-content-between info pt-2'><div><p class='text-white font-weight-bold'>Birth date</p><p class='text-white font-weight-bold'>Mobile</p></div> <div> <p class='text-white'>" + userprofile.BliverBirthdate + "</p> <p class='text-white'>" + userprofile.BliverMob + "</p> </div> </div></div>";

                }
                lastlog.InnerHtml = @"<p class='mb-0'> Level "+userprofile.BliverLevel+ " &nbsp; Last Login at " + userprofile.BliveruserUpdateDt + "</p>";
            }

            string cliCount = Db.Clients.Where(l => l.status == true).Count().ToString();
            ClientCount.InnerHtml = "<div> <p class='mb-3'>Clients Count</p><h3>"+ cliCount +"</h3></div><div id = 'income-chart-legend' class='d-flex flex-wrap mt-1 mt-md-0'></div>";

            foreach (var st in Db.BlieverClientStages)
            {
                int cou1 = Db.BliverUserClients.Where(j => j.BUCStage == st.CStageID && j.BliverUserID == i).Count();
                stagesCou.InnerHtml += "<a href='dashboard.aspx?STID=" + st.CStageID + "'><div class='col-md-6 grid-margin stretch-card'><div class='card'><div class='card-body d-flex flex-column justify-content-between'><div class='d-flex justify-content-between align-items-center mb-2'><p class='mb-0 text-muted'>" + st.StageName+"</p> <p class='mb-0 text-muted'>"+st.CStageID+"</p></div><h4>"+cou1+"</h4><canvas id = 'transactions-chart' class='mt-auto' height='65'></canvas> </div> </div></div></a>";
            }
        }
        }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       //string Cid = GridView1.SelectedRow.Cells[1].Text;
    }
}