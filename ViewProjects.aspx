<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMaster.master" AutoEventWireup="true"
    CodeFile="ViewProjects.aspx.cs" Inherits="ViewProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   


    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="table-responsive pt-3">


                 




        
                    <asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="db_a7b2aa_accorrEntities"
                        ConnectionString="name=db_a7b2aa_accorrEntities" EnableFlattening="False" EnableDelete="True"
                        EnableInsert="True" EnableUpdate="True" EntitySetName="Clients">
                    </asp:EntityDataSource>
                    <asp:GridView ID="GridViewProjects" runat="server">
                        <Columns>
                            <asp:BoundField DataField="DeveloperName" HeaderText="Developer Name" />
                            <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" />
                            <asp:BoundField DataField="workhistory" HeaderText="Work History" />
                            <asp:BoundField DataField="pricing" HeaderText="Price" />
                            <asp:BoundField DataField="featurefasultes" HeaderText="Feature" />
                            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile" />
                            <asp:BoundField DataField="ResponsPersonal" HeaderText="Personal Response" />
                            <asp:BoundField DataField="Deposet1" HeaderText="Deposit 1" />
                            <asp:BoundField DataField="PaymentMethod1" HeaderText="Payment Method 1" />
                            <asp:BoundField DataField="InstallmentValue1" HeaderText="Installment Value 1" />
                            <asp:BoundField DataField="Deposet2" HeaderText="Deposit 2" />
                            <asp:BoundField DataField="InstallmentValue2" HeaderText="Installment Value 2" />
                            <asp:BoundField DataField="Deposet3" HeaderText="Deposit 3" />
                            <asp:BoundField DataField="PaymentMethod3" HeaderText="Payment Method 3" />
                            <asp:BoundField DataField="InstallmentValue3" HeaderText="Installment Value 3" />
                        </Columns>
                    </asp:GridView>
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
