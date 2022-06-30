<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMaster.master" AutoEventWireup="true"
    CodeFile="Clientgrid.aspx.cs" Inherits="Clientgrid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="table-responsive pt-3">
                    <%--<form id="form1" runat="server">--%>
                        <div>
                            <nav class="navbar-breadcrumb col-xl-12 col-12 d-flex flex-row p-0">

                                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                                    <ul class="navbar-nav ">
                                        <li class="nav-item nav-search d-none d-md-block mr-0">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search..." aria-label="search"
                                                    aria-describedby="search">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="search">
                                                        <i class="typcn typcn-zoom"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>


                                    </ul>
                                    <ul class="navbar-nav">
                                        <li class="nav-item ml-0">
                                            <h4 class="mb-0">Dashboard</h4>
                                        </li>
                                        <li class="nav-item">
                                            <asp:DropDownList class="btn btn-primary btn-lg dropdown-toggle" ID="CCategoryDDL"
                                                runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">

                                                <asp:ListItem class="dropdown-item" Value="">Client Category</asp:ListItem>
                                                <asp:ListItem class="dropdown-item" Value="A+">A+</asp:ListItem>
                                                <asp:ListItem class="dropdown-item" Value="A">A</asp:ListItem>
                                                <asp:ListItem class="dropdown-item" Value="B">B</asp:ListItem>
                                                <asp:ListItem class="dropdown-item" Value="C">C</asp:ListItem>

                                            </asp:DropDownList>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BCID"
                         CssClass="table table-responsive  table-bordered table-hover"
                                                Font-Overline="False" ItemStyle-HorizontalAlign="Center" 
                        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True">
                            </asp:CommandField>
                            <asp:BoundField DataField="BCID" HeaderText="BCID" ReadOnly="True" InsertVisible="False"
                                SortExpression="BCID"></asp:BoundField>
                            <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName">
                            </asp:BoundField>
                            <asp:BoundField DataField="StageName" HeaderText="StageName" SortExpression="StageName">
                            </asp:BoundField>
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category">
                            </asp:BoundField>
                            <asp:BoundField DataField="BliverClientID" HeaderText="BliverClientID" SortExpression="BliverClientID">
                            </asp:BoundField>
                            <asp:BoundField DataField="BliverUserID" HeaderText="BliverUserID" SortExpression="BliverUserID">
                            </asp:BoundField>
                                                                                <asp:HyperLinkField Text="Client Detials" DataNavigateUrlFields="ClientID,ClientName,ClientMob,ClientAddress,ClientEmail,AreaIntersted,ClientStageID,CompanyID,status,Regdatetime,HomeTown,jobTitle,Education,Gender,Birthdate,WorkPlace,Clientcat"
                    DataNavigateUrlFormatString="ClientDetails.aspx?ID={4}" />
                        </Columns>
                    </asp:GridView>
                    <%-- Customer Grid view --%>
                    <asp:EntityDataSource runat="server" ID="EntityDataSource2" DefaultContainerName="db_a7b2aa_accorrEntities"
                        ConnectionString="name=db_a7b2aa_accorrEntities" EnableFlattening="False" EnableDelete="True"
                        EnableInsert="True" EnableUpdate="True" EntitySetName="Clients" EntityTypeFilter="Client">
                        </asp:EntityDataSource>
                    <%--</form>--%>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
                        SelectCommand="SELECT BliverUserClient.BCID, Client.ClientName, BlieverClientStage.StageName, ClientCategory.Category, BliverUserClient.BliverClientID, BliverUserClient.BliverUserID FROM BliverUserClient INNER JOIN Client ON BliverUserClient.BliverClientID = Client.ClientID INNER JOIN ClientCategory ON BliverUserClient.BCCatid = ClientCategory.CatID INNER JOIN BlieverClientStage ON BliverUserClient.BUCStage = BlieverClientStage.CStageID WHERE (BliverUserClient.BUCStage = @BUCStage) AND (BliverUserClient.BliverUserID = @BliverUserID)"
                        DeleteCommand="DELETE FROM [BliverUserClient] WHERE [BCID] = @BCID" InsertCommand="INSERT INTO [BliverUserClient] ([BliverUserID], [BliverClientID], [BliverCompanyID], [BCFlag], [BCRegDT], [BCCatid], [BUCStage]) VALUES (@BliverUserID, @BliverClientID, @BliverCompanyID, @BCFlag, @BCRegDT, @BCCatid, @BUCStage)"
                        UpdateCommand="UPDATE [BliverUserClient] SET [BliverUserID] = @BliverUserID, [BliverClientID] = @BliverClientID, [BliverCompanyID] = @BliverCompanyID, [BCFlag] = @BCFlag, [BCRegDT] = @BCRegDT, [BCCatid] = @BCCatid, [BUCStage] = @BUCStage WHERE [BCID] = @BCID">
                        <DeleteParameters>
                            <asp:Parameter Name="BCID" Type="Int32"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BliverUserID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BliverClientID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BliverCompanyID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BCFlag" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="BCRegDT" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="BCCatid" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BUCStage" Type="Int32"></asp:Parameter>
                        </InsertParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="STID" Name="BUCStage" Type="Int32"></asp:QueryStringParameter>
                            <asp:SessionParameter SessionField="UserID" Name="BliverUserID" Type="Int32"></asp:SessionParameter>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BliverUserID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BliverClientID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BliverCompanyID" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BCFlag" Type="Boolean"></asp:Parameter>
                            <asp:Parameter Name="BCRegDT" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="BCCatid" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BUCStage" Type="Int32"></asp:Parameter>
                            <asp:Parameter Name="BCID" Type="Int32"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>


    </div>
</asp:Content>

