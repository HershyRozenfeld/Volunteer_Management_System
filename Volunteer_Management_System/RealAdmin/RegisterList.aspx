<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RegisterList.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.RegisterList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
     <div class="row">
                <!-- simple table -->
                <div class="col-md-6 my-4">
                  <div class="card shadow">
                    <div class="card-body">
                      <h5 class="card-title">טבלת הרשמות</h5>
<%--                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>--%>
                      <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>מספר הרשמה</th>
                            <th>שם מתנדב</th>
                            <th>מספר פעילות</th>
                            <th>תאריך הרשמה</th>
                            <th>סטטוס</th>
                          </tr>
                        </thead>
                        <tbody>
                             <tr>
                            <asp:Repeater ID="RptRegister" runat="server" >
                                <ItemTemplate>
                         
                            <td><%#Eval("RegistrID") %></td>
                            <td><%#Eval("UserName") %></td>
                            <td><%#Eval("ActivitieID") %></td>
                            <td><%#Eval("RegistrData") %></td>
                               </ItemTemplate>
                        </asp:Repeater>
                            <td><asp:Literal ID="LtSt" runat="server" />  </td>
                            
                                
                               

                                
                          </tr>
                                   
                            
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div> <!-- simple table -->
               
              </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
</asp:Content>
