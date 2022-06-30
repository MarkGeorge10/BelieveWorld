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

public partial class ViewProjects : System.Web.UI.Page
{
    db_a7b2aa_accorrEntities DB = new db_a7b2aa_accorrEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            fillData();


    }

    private void fillData() 
    {

        string url = HttpContext.Current.Request.Url.AbsoluteUri;
        Uri myUri = new Uri(url);


        string areaId = HttpUtility.ParseQueryString(myUri.Query).Get("areaId");


        this.GridViewProjects.DataSource = DB.BliverProjects.Where(j => j.AreaID == int.Parse(areaId)).Select(proj => new
        {
            DeveloperName = proj.DeveloperName,
            OwnerName = proj.OwnerName,
            workhistory = proj.workhistory,
            pricing = proj.pricing,
            featurefasultes = proj.featurefasultes,
            MobileNumber = proj.MobileNumber,
            ResponsPersonal = proj.ResponsPersonal,
            Deposet1 = proj.Deposet1,
            PaymentMethod1 = proj.PaymentMethod1,
            InstallmentValue1 = proj.InstallmentValue1,

            Deposet2 = proj.Deposet1,
            PaymentMethod2 = proj.PaymentMethod2,
            InstallmentValue2 = proj.InstallmentValue2,

            Deposet3 = proj.Deposet3,
            PaymentMethod3 = proj.PaymentMethod3,
            InstallmentValue3 = proj.InstallmentValue3



        }).ToList();
    }





}