<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CtegoryList.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.CtegoryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
   <%-- <main role="main" class="main-content">--%>
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <h2 class="page-title">רשימת קטגוריות</h2>
              <div class="row">
                <div class="col-md-12 my-4">
                  <div class="card shadow">
                    <div class="card-body">
                     <%-- <h5 class="card-title">Simple Table</h5>--%>
                     <%-- <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>--%>
                      <table class="table table-hover " id="CategTbl">
                        <thead>
                          <tr>
                            <th>קוד קטגוריה</th>
                            <th>שם קטגוריה</th>     
                              <th>פעולה</th>
                          </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptCateg" runat="server" >
                                <ItemTemplate>
                          <tr>
                            <td><%#Eval("CategoryID") %></td>
                            <td><%#Eval("CategoryName") %></td>                           
                            <%--<td><span class="badge badge-pill badge-warning">Hold</span></td>--%>
                               <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">פרטים נוספים</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right ">
                                <a class="dropdown-item" href="UserAdd.aspx?UserID=<%#Eval("UserID") %>">עריכה</a>
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
                </div>
                  </div>
                </div>
              </div>
            </div>
       <%-- </main>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
     <script src="js/bootstrap.min.js"></script>
     <script src="js/simplebar.min.js"></script>
    <script src='js/dataTables.bootstrap4.min.js'></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
    <script>
        $('#CategTbl').DataTable(
            {
                autoWidth: true,
                "lengthMenu": [
                    [16, 32, 64, -1],
                    [16, 32, 64, "All"]
                ],
                language: {
                    url: '//cdn.datatables.net/plug-ins/2.0.8/i18n/he.json'
                }
            });
    </script>
</asp:Content>
