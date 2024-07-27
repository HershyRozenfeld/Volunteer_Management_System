<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.UserList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
     <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <h2 class="mb-2 page-title">רשימת משתמשים</h2>
             
              <div class="row my-4">
                <!-- Small table -->
                <div class="col-md-12">
                  <div class="card shadow">
                    <div class="card-body">
                      <!-- table -->
                      <table class="table datatables" id="MainTbl">
                        <thead>
                          <tr>
                            <th>מספר מזהה</th>
                            <th>שם פרטי</th>
                              <th>שם משפחה</th>
                            <th>טלפון</th>
                            <th>מייל</th>
                            <th>כתובת</th>
                            <th>עיר</th>
                            <th>תחומי עניין</th>
                            <th>כישורים</th>
                              <th>תאריך לידה</th>
                            <th>פעולה</th>
                          </tr>
                        </thead>
                          <tbody>
                              <asp:Repeater ID="RptUser" runat="server">
                                  <ItemTemplate>
                          <tr>
                            <td><%#Eval("UserID") %></td>
                            <td><%#Eval("FName") %> </td>
                            <td><%#Eval("LName") %></td>
                           <td><%#Eval("Phone") %></td>
                         <td><%#Eval("Email") %></td>
                            <td><%#Eval("Address") %></td>
                            <td><%#Eval("City") %></td>
                            <td><%#Eval("Category") %></td>
                              <td><%#Eval("Skills") %></td>
                              <td><%#Eval("DateOfBirth") %></td>
                              
                                  
                            <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">פרטים נוספים</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right ">
                                <a class="dropdown-item" href="UserEdit.aspx?UserID=<%#Eval("UserID") %>">עריכה</a>
                                <a class="dropdown-item" href="#">הסרה</a>
                                <a class="dropdown-item" href="#">פרטים מלאים</a>
                              </div>
                            </td>
                          </tr>
                                  </ItemTemplate>
                              </asp:Repeater>
                          
                          </tbody>
                         
                        
                      </table>
                    </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
    <script src='js/jquery.dataTables.min.js'></script>
    <script src='js/dataTables.bootstrap4.min.js'></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
    <script>
      $('#MainTbl').DataTable(
      {
        autoWidth: true,
        "lengthMenu": [
          [16, 32, 64, -1],
          [16, 32, 64, "All"]
              ] ,
          language: {
              url: '//cdn.datatables.net/plug-ins/2.0.8/i18n/he.json'
          }
      });
    </script>
</asp:Content>
