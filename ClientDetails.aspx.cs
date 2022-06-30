using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class ClientDetails : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities DB = new db_a7b2aa_accorrEntities();
    string q;
    string userid;
    string comid;
    protected void Page_Load(object sender, EventArgs e)
    {

        string QS = Request.QueryString["ID"];
        q = QS;
        if (Session["UserID"] != null && Session["CompID"] != null)
        {
            userid = Session["UserID"].ToString();
            comid = Session["CompID"].ToString();
        }


        if (!IsPostBack)
        {
            Ddlstage.DataSource = DB.BlieverClientStages.ToList();
            Ddlstage.DataValueField = "CStageID";
            Ddlstage.DataTextField = "StageName";
            Ddlstage.DataBind();

 
            if (QS != null)
            {
                int cid = int.Parse(QS);
                var ClipersonlD = DB.Clients.Where(l => l.ClientID == cid).ToList();
                foreach(var cpers in ClipersonlD)
                {

                    //BarCode Generator


                    //End
                   

                    ClientNameText.InnerHtml = cpers.ClientName + "</Br>";
                    CMoblbl.Text = "Mobile : " + cpers.ClientMob;
                    CEmaillbl.Text = "Email : " + cpers.ClientEmail;
                    CGenderlbl.Text = "Gender : " + cpers.Gender;
                    CEducationlbl.Text = "Education : " + cpers.Education;
                    CBirthdatelbl.Text = "Birthdate : " + cpers.Birthdate.ToString();
                    CHometownlbl.Text = "Home Town : " + cpers.HomeTown;
                    Cjobtitlelbl.Text = "Job Title : " + cpers.jobTitle;
                   



                }
                var Clidetail = DB.ClientDetails.Where(k => k.ClientID == cid).ToList();
                foreach (var Cdit in Clidetail)
                {
                    string stg = DB.BliverUserClients.Where(j=>j.BliverClientID == Cdit.ClientID).Select(k=>k.BUCStage).SingleOrDefault().ToString();
                    H1.InnerHtml = Cdit.BliverUser.BliverFullName;
                    Cintproj1TXT.Text = Cdit.InterstingProject1;
                    Cintproj2TXT.Text = Cdit.InterstingProject2;

                    Cintproj3TXT.Text = Cdit.InterstingProject3;
                    BadgetTXT.Text = Cdit.ClientBadget;
                    interestedUnitTXT.Text = Cdit.InterestingUnit;
                    SalesOfflbl.Text = Cdit.SalesOfficerProject;
                    MasterDecTXT.Text = Cdit.MasterDecision;
                    PuchPowerTXT.Text = Cdit.PurchasingPower;
                    ClientAddedDateTXT.Text = Cdit.ClientAddedDate.ToString();
                    VisitPlaceTXT.Text = Cdit.VisitPlace;
                    Ddlstage.Items.FindByValue(stg).Selected = true;

                }
                foreach (var com in DB.ClientNotes.Where(j => j.ClientID == cid).ToList())
                {
                   // notecom.InnerHtml += "<div style='background-color: #008cd5;padding-top: 2%;margin-top: 2%;margin-bottom: 2%;padding-bottom: 2%;border-radius: 25px;'> <div class='col-12 col-md-3'> <figure class='avatar mx-auto mb-4 mb-md-0'><img src = 'images/faces/male.png' style='max-width: 50%;' alt = 'avatar' > </figure > <h3 style='font-size: larger !important; padding-top: 5%;' class='font-5 semi-font text-white'>" + com.BliverUser.BliverFullName+"</h3></div><div class='col-12 col-md-9 p-0 p-md-2'><div class='fables-testimonial-detail font-15 font-italic text-white p-4 position-relative'> "+com.Note+ "</div></div></div>";
                    notecom.InnerHtml += "<div class='col-md-10 grid-margin stretch-card'><div class='card'> <div class='card-body'><h4 class='card-title'>" + com.BliverUser.BliverFullName + "</h4><div class='media'><img src = 'images/faces/male.png' style='max-width: 30%; ' class='typcn typcn-globe icon-md text-info d-flex align-self-start mr-3'><div class='media-body'> <p class='card-text'>" + com.Note+".</p> </div></div> </div></div> </div>";
                }

                //DetailsView1.DataSource = DB.Clients.Where(d => d.ClientID == cid).ToList();
                //DetailsView1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int cid = int.Parse(Request.QueryString["ID"]);
   

        var query = from data in DB.ClientDetails.Where(l => l.ClientID == cid) orderby data.ClientID select data;
        var query1 = from data1 in DB.BliverUserClients.Where(l=>l.BliverClientID == cid) orderby data1.BliverClientID select data1 ;
        foreach (ClientDetail details in query)
        {
            if (details.ClientID == cid)
            {
                //Assign the new values to name whose id is 1  
                details.InterstingProject1 = Cintproj1TXT.Text;
                details.InterstingProject2 = Cintproj2TXT.Text;

                details.InterstingProject3 = Cintproj3TXT.Text;
                details.ClientBadget = BadgetTXT.Text;
                details.InterestingUnit = interestedUnitTXT.Text;
                details.SalesOfficerProject = SalesOfflbl.Text;
                details.MasterDecision = MasterDecTXT.Text;
                details.PurchasingPower = PuchPowerTXT.Text;
                details.ClientAddedDate = DateTime.Now;
                details.VisitPlace = VisitPlaceTXT.Text;
                details.CDUpdateDateTime = DateTime.Now;

                // details.name = "Updated Employee One";
            }
            else {
                DB.ClientDetails.Add(new ClientDetail
                {
                    ClientID = cid,
                    BliverUserID = int.Parse(userid),
                    CompanyID = int.Parse(comid),
                    CDRegDateTime = DateTime.Now,
                   InterstingProject1 = Cintproj1TXT.Text,
                   InterstingProject2 = Cintproj2TXT.Text,

                 InterstingProject3 = Cintproj3TXT.Text,
                  ClientBadget = BadgetTXT.Text,
               InterestingUnit = interestedUnitTXT.Text,
                SalesOfficerProject = SalesOfflbl.Text,
                MasterDecision = MasterDecTXT.Text,
                PurchasingPower = PuchPowerTXT.Text,
                ClientAddedDate = DateTime.Now,
               VisitPlace = VisitPlaceTXT.Text,
            });

            }
        }
        foreach (BliverUserClient bliv in query1)
        {
            if (bliv.BliverClientID == cid && bliv.BliverUserID == int.Parse(userid)&&bliv.BliverCompanyID == int.Parse(comid))
            {
                bliv.BUCStage = int.Parse(Ddlstage.SelectedValue);
                bliv.BCCatid = 1;
                bliv.BliverUserID = int.Parse(userid);
                bliv.BliverCompanyID = int.Parse(comid);
            }
            else {
                    DB.BliverUserClients.Add(new BliverUserClient{
                    BliverUserID = int.Parse(userid),
                    BliverCompanyID = int.Parse(comid),
                    BliverClientID = cid,
                    BUCStage = int.Parse(Ddlstage.SelectedValue),
                    BCCatid = 1,
                    BCRegDT = DateTime.Now,

            });
            }

        }

        //Save the changes back to the database.  
        DB.SaveChanges();
    
        }

    protected void AddComntbtn_Click(object sender, EventArgs e)
    {
        int cid = int.Parse(q);
        DB.ClientNotes.Add(new ClientNote
        {
            ClientID = cid,
            Note = AddComTXT.Text,
            BliverUserID = int.Parse(userid),
            BliverCompanyID = int.Parse(comid),
        });
        DB.SaveChanges();
    }
}