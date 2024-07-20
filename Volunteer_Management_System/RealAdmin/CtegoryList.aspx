<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CtegoryList.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.CtegoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
    <%--<main role="main" class="main-content">--%>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <h2 class="page-title">רשימת קטגוריות</h2>
                <div class="row">
                    <div class="col-md-12 my-4">
                        <div class="card shadow">
                            <div class="card-body">
                                <h5 class="card-title">Simple Table</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>קוד קטגוריה</th>
                                            <th>שם קטגוריה</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>3224</td>
                                            <td>Keith Baird</td>
                                            <%--<td><span class="badge badge-pill badge-warning">Hold</span></td>--%>
                                        </tr>
                                        <tr>
                                            <td>3218</td>
                                            <td>Graham Price</td>
                                            <td><span class="badge badge-pill badge-success">Success</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
</asp:Content>
