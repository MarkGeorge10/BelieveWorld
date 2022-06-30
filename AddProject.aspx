<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMaster.master" AutoEventWireup="true"
    CodeFile="AddProject.aspx.cs" Inherits="AddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   



    <div class="row w-100 mx-0">
        <div class="col-lg-10 mx-auto">

            <div class="auth-form-light text-left py-5 px-4 px-sm-5">



                <h4>Hello! let's get started</h4>


              
                <h6 class="font-weight-light"> Add a New Project.</h6>
                <div class="col-lg-5">
                            <ul class="">
                                <li class="nav-item"><a class="nav-link" href="AddArea.aspx">Add New Area</a></li>

                            </ul>
                 </div>      

                <div class="row">


                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PDeveloperNameTXT" class="form-control form-control-lg" placeholder="Developer Name"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PMobTXT" class="form-control form-control-lg" placeholder="Mobile"
                            runat="server"></asp:TextBox>
                    </div>

                      <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="POwnerNameTXT" class="form-control form-control-lg" placeholder="Owner Name"
                            runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PWorkHistoryTXT" class="form-control form-control-lg" placeholder="Work History"
                            runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PpricingTXT" class="form-control form-control-lg" placeholder="Price"
                            runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PFeatureTXT" class="form-control form-control-lg" placeholder="Feature Fasultes"
                            runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PResponseTXT" class="form-control form-control-lg" placeholder="Personal Response"
                            runat="server"></asp:TextBox>
                    </div>


                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PDepositTXT1" class="form-control form-control-lg" placeholder="Deposit option 1"
                            runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PpayemntTXT1" class="form-control form-control-lg" placeholder="Payment Method option 1"
                            runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PInstallmentTXT1" class="form-control form-control-lg" placeholder="Installment Value option 1"
                            runat="server"></asp:TextBox>
                    </div>


                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PDepositTXT2" class="form-control form-control-lg" placeholder="Deposit option 2"
                            runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PpayemntTXT2" class="form-control form-control-lg" placeholder="Payment Method option 2"
                            runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PInstallmentTXT2" class="form-control form-control-lg" placeholder="Installment Value option 2"
                            runat="server"></asp:TextBox>
                    </div>


                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PDepositTXT3" class="form-control form-control-lg" placeholder="Deposit option 3"
                            runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PpayemntTXT3" class="form-control form-control-lg" placeholder="Payment Method option 3"
                            runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="PInstallmentTXT3" class="form-control form-control-lg" placeholder="Installment Value option 3"
                            runat="server"></asp:TextBox>
                    </div>


                     <div class="form-group col-lg-5 mx-auto">



                        <asp:DropDownList class="btn btn-primary btn-lg dropdown-toggle" ID="AreaDropDown"
                            runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">

                         
                            

                        </asp:DropDownList>
                        <%--<asp:textbox id="CCategoryTXT" class="form-control form-control-lg"  placeholder="Category" runat="server" TextMode="Password" ></asp:textbox>--%>
                    </div>


                  <%-- <form id="form1" runat="server">
                        <asp:TextBox ID="txtLocation" runat="server" Text=""></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="FindCoordinates" />
                        <br />
                        <br />
                        <asp:Panel ID="pnlScripts" runat="server" Visible="false">
                            <div id="dvMap" style="width: 300px; height: 300px">
                            </div>
                            <script type="text/javascript">
                                var markers = [
                                    <asp:Repeater ID="rptMarkers" runat="server">
                                        <ItemTemplate>
                                            {
                                                "title": '<%# Eval("Address") %>',
                                        "lat": '<%# Eval("Latitude") %>',
                                        "lng": '<%# Eval("Longitude") %>',
                                        "description": '<%# Eval("Address") %>'
                                    }
                            </ItemTemplate>
                            <SeparatorTemplate>
                                ,
                            </SeparatorTemplate>
                            </asp:Repeater>
                            ];
                            </script>
                            <script type="text/javascript">
                                window.onload = function () {
                                    var mapOptions = {
                                        center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                                        zoom: 13,
                                        mapTypeId: google.maps.MapTypeId.ROADMAP
                                    };
                                    var infoWindow = new google.maps.InfoWindow();
                                    var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
                                    for (i = 0; i < markers.length; i++) {
                                        vardata = markers[i]
                                        varmyLatlng = new google.maps.LatLng(data.lat, data.lng);
                                        varmarker = new google.maps.Marker({
                                            position: myLatlng,
                                            map: map,
                                            title: data.title
                                        });
                                        (function (marker, data) {
                                            google.maps.event.addListener(marker, "click", function (e) {
                                                infoWindow.setContent(data.description);
                                                infoWindow.open(map, marker);
                                            });
                                        })(marker, data);
                                    }
                                }
                            </script>
                        </asp:Panel>
                     </form>--%>

                   
                   
                  
                   
                </div>
                <div class="mt-3 py-4 px-3 px-sm-4">
                    <asp:Label ID="lblmasg" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnSave"
                        class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                        runat="server" Text="SAVE Project" OnClick="btnSave_Click" />
                    <%--<a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</a>--%>
                </div>

                <div class="mb-2">
                </div>


            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="table-responsive pt-3">
                    <%--<table class="table table-striped project-orders-table">--%>
                    <asp:GridView CssClass="table table-striped project-orders-table" ID="GridView1"
                        runat="server"
                        AutoGenerateColumns="False" DataKeyNames="ClientID" DataSourceID="EntityDataSource1"
                        AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="d-flex align-items-center"
                                ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
                            <asp:BoundField DataField="ClientID" ControlStyle-CssClass="ml-5" HeaderText="ClientID"
                                ReadOnly="True" SortExpression="ClientID"></asp:BoundField>
                            <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName">
                            </asp:BoundField>
                            <asp:BoundField DataField="ClientMob" HeaderText="ClientMob" SortExpression="ClientMob">
                            </asp:BoundField>
                            <asp:BoundField DataField="ClientAddress" HeaderText="ClientAddress" SortExpression="ClientAddress">
                            </asp:BoundField>
                            <asp:BoundField DataField="ClientEmail" HeaderText="ClientEmail" SortExpression="ClientEmail">
                            </asp:BoundField>
                            <asp:BoundField DataField="AreaIntersted" HeaderText="AreaIntersted" SortExpression="AreaIntersted">
                            </asp:BoundField>
                            <asp:BoundField DataField="ClientStageID" HeaderText="ClientStageID" SortExpression="ClientStageID">
                            </asp:BoundField>
                            <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" SortExpression="CompanyID">
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status">
                            </asp:CheckBoxField>
                            <asp:BoundField DataField="Regdatetime" HeaderText="Regdatetime" SortExpression="Regdatetime">
                            </asp:BoundField>
                            <asp:BoundField DataField="HomeTown" HeaderText="HomeTown" SortExpression="HomeTown">
                            </asp:BoundField>
                            <asp:BoundField DataField="jobTitle" HeaderText="jobTitle" SortExpression="jobTitle">
                            </asp:BoundField>
                            <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education">
                            </asp:BoundField>
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender"></asp:BoundField>
                            <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate">
                            </asp:BoundField>
                            <asp:BoundField DataField="WorkPlace" HeaderText="WorkPlace" SortExpression="WorkPlace">
                            </asp:BoundField>
                            <asp:BoundField DataField="Clientcat" HeaderText="Clientcat" SortExpression="Clientcat">
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="db_a7b2aa_accorrEntities"
                        ConnectionString="name=db_a7b2aa_accorrEntities" EnableFlattening="False" EnableDelete="True"
                        EnableInsert="True" EnableUpdate="True" EntitySetName="Clients">
                    </asp:EntityDataSource>
                </div>
            </div>
        </div>
    </div>
    <!-- base:js -->
    <%--  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>--%>
    <!-- endinject -->
</asp:Content>
