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

public partial class AddProject : System.Web.UI.Page
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
        var areasData = DB.AreaGovs.Select(x => new { x.AreaName, x.ID_Location }).ToList();


        ListItem item = new ListItem();
        item.Text = "Select Area";
        item.Value = "0";
        AreaDropDown.Items.Add(item);

       
        

        if (areasData.Count != 0)
        {

            foreach (var i in areasData)
            {

                
                item.Text = i.AreaName; ;
                item.Value = i.ID_Location.ToString();
                AreaDropDown.Items.Add(item);
              


            }
        }
       }

    protected void FindCoordinates(object sender, EventArgs e)
    {
        //string url = "http://maps.google.com/maps/api/geocode/xml?address=" + txtLocation.Text + "&sensor=false";
        //WebRequest request = WebRequest.Create(url);
        //using (WebResponse response = (HttpWebResponse)request.GetResponse())
        //{
        //    using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
        //    {
        //        DataSet dsResult = new DataSet();
        //        dsResult.ReadXml(reader);
        //        DataTable dtCoordinates = new DataTable();
        //        dtCoordinates.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
        //            new DataColumn("Address", typeof(string)),
        //            new DataColumn("Latitude",typeof(string)),
        //            new DataColumn("Longitude",typeof(string)) });
        //        //foreach (DataRow rowin dsResult.Tables["result"].Rows)
        //        //{
        //        //    string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
        //        //    DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
        //        //    dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"], location["lat"], location["lng"]);
        //        //}
        //        if (dtCoordinates.Rows.Count > 0)
        //        {
        //            pnlScripts.Visible = true;
        //            rptMarkers.DataSource = dtCoordinates;
        //            rptMarkers.DataBind();
        //        }
        //    }
        //}
    }






    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (PDeveloperNameTXT.Text == null || PDeveloperNameTXT.Text == "") 
        {
            lblmasg.Text = "Development name is required";
        }
        else if (POwnerNameTXT.Text == null || POwnerNameTXT.Text == "")
        {
            lblmasg.Text = "Owner name is required";
        }
        else if(PpricingTXT.Text == null || PpricingTXT.Text == "")
        {
            lblmasg.Text = "price is required";
        }
        else if(PMobTXT.Text == null || PMobTXT.Text == "")
        {
            lblmasg.Text = "Mobile number is required";
        }
        else if (AreaDropDown.SelectedValue.Equals(null) || AreaDropDown.SelectedValue.Equals("Select Area"))
        {
            lblmasg.Text = "Area is required";
        }

        else
        {

            DB.BliverProjects.Add(new BliverProject
            {
                DeveloperName = PDeveloperNameTXT.Text,
                OwnerName = POwnerNameTXT.Text,
                workhistory = PWorkHistoryTXT.Text,
                pricing = PpricingTXT.Text,
                featurefasultes = PFeatureTXT.Text,
                MobileNumber = PMobTXT.Text,
                ResponsPersonal = PResponseTXT.Text,
                AreaID = int.Parse(AreaDropDown.SelectedValue),

                Deposet1 = PDepositTXT1.Text,
                PaymentMethod1 = PpayemntTXT1.Text,
                InstallmentValue1 = PInstallmentTXT1.Text,

                Deposet2 = PDepositTXT2.Text,
                PaymentMethod2 = PpayemntTXT2.Text,
                InstallmentValue2 = PInstallmentTXT2.Text,

                Deposet3 = PDepositTXT3.Text,
                PaymentMethod3 = PpayemntTXT3.Text,
                InstallmentValue3 = PInstallmentTXT3.Text,

            });
            DB.SaveChanges();
            lblmasg.Text = "Project Saved Successfully";
        }

      
     
    }
}