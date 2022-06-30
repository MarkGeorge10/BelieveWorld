<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMaster.master" AutoEventWireup="true"
    CodeFile="AddClient.aspx.cs" Inherits="AddClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row w-100 mx-0">
        <div class="col-lg-10 mx-auto">

            <div class="auth-form-light text-left py-5 px-4 px-sm-5">

                <h4>Hello! let's get started</h4>

                <h6 class="font-weight-light">to Add a New Client To Our World.</h6>


                <div class="row">
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CNameTXT" class="form-control form-control-lg" placeholder="CLient Name"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CMobTXT" class="form-control form-control-lg" placeholder="Mobile"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CEmailTXT" class="form-control form-control-lg" placeholder="Email"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CAddressTXT" class="form-control form-control-lg" placeholder="Address"
                            runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CGenderTXT" class="form-control form-control-lg"
                            placeholder="Gender" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CBirthdateTXT" class="form-control form-control-lg" placeholder="Birthdate"
                            runat="server" TextMode="DateTime"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CEducationTXT" class="form-control form-control-lg" placeholder="Education"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CHometownTXT" class="form-control form-control-lg" placeholder="Home Town"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CjobtitleTXT" class="form-control form-control-lg" placeholder="Job Title"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="CWorkplaceTXT" class="form-control form-control-lg" placeholder="Work Place"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">



                        <asp:DropDownList class="btn btn-primary btn-lg dropdown-toggle" ID="CCategoryDDL"
                            runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">

                            <asp:ListItem class="dropdown-item" Value="">Client Category</asp:ListItem>
                            <asp:ListItem class="dropdown-item" Value="A+">A+</asp:ListItem>
                            <asp:ListItem class="dropdown-item" Value="A">A</asp:ListItem>
                            <asp:ListItem class="dropdown-item" Value="B">B</asp:ListItem>
                            <asp:ListItem class="dropdown-item" Value="C">C</asp:ListItem>

                        </asp:DropDownList>
                        <%--<asp:textbox id="CCategoryTXT" class="form-control form-control-lg"  placeholder="Category" runat="server" TextMode="Password" ></asp:textbox>--%>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="intrstedareaTXT" class="form-control form-control-lg" placeholder="interested Area"
                            runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="mt-3 py-4 px-3 px-sm-4">
                    <asp:Label ID="lblmasg" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnSave"
                        class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                        runat="server" Text="SAVEClient" OnClick="btnSave_Click" />
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

