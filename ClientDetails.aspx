<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMaster.master" AutoEventWireup="true" CodeFile="ClientDetails.aspx.cs" Inherits="ClientDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
          <div class="row">

            <div class="col-md-6 grid-margin stretch-card">
          <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Personal information </h4>
                 <p runat="server" class="card-description" id="ClientNameText"></p>
                       <asp:label runat="server" class="card-description" id="ClientCodelbl"></asp:label>
                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>  

                      
                <div class="forms-sample">
          
                <div class="form-group row">
                    <asp:Label ID="CMoblbl" runat="server" Text=""></asp:Label>
                </div>
                   <div class="form-group row">

                  <asp:Label id="CEmaillbl"  runat="server"  ></asp:Label>
                </div>
                   <div class="form-group row">

                  <asp:Label id="CAddresslbl"  runat="server"  ></asp:Label>
                </div>
               
                   <div class="form-group row">

                  <asp:Label id="CGenderlbl"   runat="server" ></asp:Label>
                </div>
                   <div class="form-group row">

                       <asp:Label ID="CBirthdatelbl"  runat="server" TextMode="DateTime"></asp:Label>
                </div>
                    <div class="form-group row">
                  <asp:Label id="CEducationlbl"  runat="server"  ></asp:Label>
                </div>
                   <div class="form-group row">
                  <asp:Label id="CHometownlbl"  runat="server" ></asp:Label>
                </div>
                   <div class="form-group row">
                  <asp:Label id="Cjobtitlelbl"  runat="server"  ></asp:Label>
                </div>
                   <div class="form-group row">
                  <asp:Label id="CWorkplacelbl"   runat="server"  ></asp:Label>
                </div>
                   <div class="form-group row">

                            
              
                       <asp:DropDownList class="btn btn-primary btn-lg dropdown-toggle"  ID="CCategoryDDL" runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        
                             <asp:ListItem class="dropdown-item"  Value="">Client Category</asp:ListItem>
                           <asp:ListItem class="dropdown-item" Value="A+">A+</asp:ListItem>
                           <asp:ListItem class="dropdown-item" Value="A">A</asp:ListItem>
                           <asp:ListItem class="dropdown-item" Value="B">B</asp:ListItem>
                           <asp:ListItem class="dropdown-item" Value="C">C</asp:ListItem>
                               
                       </asp:DropDownList>
                </div>
                   <div class="form-group row">
                  <asp:Label id="intrstedarealbl"   runat="server" ></asp:Label>
                </div>
                    
                <div class="mt-3 py-4 px-3 px-sm-4">
                    <asp:label id="lblmasg" runat="server" text=""></asp:label>
                     
                </div>
                <div class="row" runat="server" id="notecom">
          
                    
                </div>
                    <div class="row">
                        <div class='col-md-10 grid-margin stretch-card'>
                            <div class='card'>
                                 <div class='card-body'>
                              <asp:TextBox ID="AddComTXT" CssClass="form-control" runat="server" TextMode="MultiLine" placeholder="Add Your Client Note"></asp:TextBox>

                                
                                     <div class='media'>
                                         <div class='media-body'> 
                                         <asp:Button ID="AddComntbtn" CssClass="btn btn-outline-info btn-fw" runat="server" 
                                                 Text="Comment" OnClick="AddComntbtn_Click" />

                                         </div>

                                     </div>

                                 </div>

                            </div>

                        </div>
                    </div>
                </div>
              </div>
                </div>
              </div>
          
              
   
     <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Sales information </h4>
               <p class="card-description" runat="server" id="H1"></p>
                <div class="forms-sample">
                    <div class="form-group row">
                                            <asp:Label ID="interprojlbl1" class="col-sm-3 col-form-label" runat="server" Text="Interested Project 1"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="Cintproj1TXT" class="form-control" 
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                        <asp:DropDownList class="btn btn-primary btn-lg dropdown-toggle" ID="DropDownList2"
                            runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
                            DataSourceID="EntityDataSource2" DataTextField="ActionName" 
                            DataValueField="B_ActionID" CssClass="btn btn-primary btn-lg dropdown-toggle">
                        </asp:DropDownList>
                        <asp:EntityDataSource runat="server" ID="EntityDataSource2" DefaultContainerName="db_a7b2aa_accorrEntities"
                            ConnectionString="name=db_a7b2aa_accorrEntities" EnableFlattening="False" 
                            EntitySetName="BlieverActions" Select="it.[B_ActionID], it.[ActionName]">
                        </asp:EntityDataSource>
                        <div class="col=sm=9">
                                <asp:TextBox ID="ActionComTXT" class="form-control" 
                            runat="server" TextMode="MultiLine" placeHolder="Add Action Comment"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                                            <asp:Label ID="interprojlbl2" class="col-sm-3 col-form-label" runat="server" Text="Interested Project 2"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="Cintproj2TXT" class="form-control" 
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                                            <asp:Label ID="interprojlbl3" class="col-sm-3 col-form-label" runat="server" Text="Interested Project 3"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="Cintproj3TXT" class="form-control" 
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                                            <asp:Label ID="Badgetlbl" class="col-sm-3 col-form-label" runat="server" Text="Badget"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="BadgetTXT" class="form-control" 
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                                                                    <asp:Label ID="interestedUnitlbl" class="col-sm-3 col-form-label" runat="server" Text="Interested Unit"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="interestedUnitTXT" class="form-control"
                             runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                     <asp:Label ID="SalesOfflbl" class="col-sm-3 col-form-label" runat="server" Text=""></asp:Label>
                        <div class="col-sm-9"></div>
                    </div>
                    <div class="form-group row">
                  <asp:Label ID="MasterDeclbl" class="col-sm-3 col-form-label" runat="server" Text="Master Decision"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="MasterDecTXT" class="form-control" 
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                                          <asp:Label ID="PuchPowerlbl" class="col-sm-3 col-form-label" runat="server" Text="Purchasing Power"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="PuchPowerTXT" class="form-control"
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                                                                  <asp:Label ID="AddedDatelbl" class="col-sm-3 col-form-label" runat="server" Text="Added Date"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="ClientAddedDateTXT" class="form-control" 
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">
                     <asp:Label ID="VisitPlacelbl" class="col-sm-3 col-form-label" runat="server" Text="Visit Place"></asp:Label>
                        <div class="col-sm-9">
                        <asp:TextBox ID="VisitPlaceTXT" class="form-control" 
                            runat="server"></asp:TextBox>
                            </div>
                    </div>
                    <div class="form-group row">

                                             <asp:Label ID="cCatlbl"  class="col-sm-3 col-form-label" runat="server" Text="Client Category"></asp:Label>

                        <div class="col-sm-9">
                        <asp:DropDownList class="btn btn-primary btn-lg dropdown-toggle" ID="DropDownList1"
                            runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">

                            <asp:ListItem class="dropdown-item" Value="A+">A+</asp:ListItem>
                            <asp:ListItem class="dropdown-item" Value="A">A</asp:ListItem>
                            <asp:ListItem class="dropdown-item" Value="B">B</asp:ListItem>
                            <asp:ListItem class="dropdown-item" Value="C">C</asp:ListItem>

                        </asp:DropDownList>
                            </div>
                        <%--<asp:textbox id="CCategoryTXT" class="form-control form-control-lg"  placeholder="Category" runat="server" TextMode="Password" ></asp:textbox>--%>
                    </div>
                    <div class="form-group row">

                                             <asp:Label ID="Label1" class="col-sm-3 col-form-label" runat="server" Text="Client Stage"></asp:Label>
                            <div class="col-sm-9">

                        <asp:DropDownList class="btn btn-primary btn-lg dropdown-toggle" ID="Ddlstage"
                            runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">

                        

                        </asp:DropDownList>
                                </div>
                        <%--<asp:textbox id="CCategoryTXT" class="form-control form-control-lg"  placeholder="Category" runat="server" TextMode="Password" ></asp:textbox>--%>
                    </div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary mr-2" 
                        Text="Save" OnClick="Button1_Click" />
                </div>

                                
                                
                                </div>
                                </div>
                        </div>
        </div>
   
      <!-- base:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="../../vendors/typeahead.js/typeahead.bundle.min.js"></script>
  <script src="../../vendors/select2/select2.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="../../js/file-upload.js"></script>
  <script src="../../js/typeahead.js"></script>
  <script src="../../js/select2.js"></script>
  <!-- End custom js for this page-->
 
</asp:Content>

