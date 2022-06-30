<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMaster.master" AutoEventWireup="true"
    CodeFile="AddArea.aspx.cs" Inherits="AddArea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   



    <div class="row w-100 mx-0">
        <div class="col-lg-10 mx-auto">

            <div class="auth-form-light text-left py-5 px-4 px-sm-5">



                <h4>Hello! let's get started</h4>


              
                <h6 class="font-weight-light"> Add New Area.</h6>
                

                <div class="row">


                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="ANameTXT" class="form-control form-control-lg" placeholder="Area Name"
                            runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-lg-5 mx-auto">
                        <asp:TextBox ID="AGovernTXT" class="form-control form-control-lg" placeholder="Government Name"
                            runat="server"></asp:TextBox>
                    </div>

                    


               
                   
                   
                  
                   
                </div>
                <div class="mt-3 py-4 px-3 px-sm-4">
                    <asp:Label ID="lblmasg" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnSave"
                        class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
                        runat="server" Text="SAVE Area" OnClick="btnSave_Click" />
                    <%--<a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</a>--%>
                </div>

                <div class="mb-2">
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
