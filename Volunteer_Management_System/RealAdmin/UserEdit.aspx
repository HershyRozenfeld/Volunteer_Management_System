<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserEdit.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
      <h2 class="mb-2 page-title">עריכת משתמשים</h2>
        <div class="container">
            <asp:HiddenField ID="HidUserID" runat="server" Value="-1" />
            <div class="row align-items-center h-100">
                <div class="col-lg-6 col-md-8 col-10 mx-auto">
                   <div class="form-group">
                     <label for="TxtEmail">אימייל</label>
                     <asp:TextBox ID="TxtEmail" runat="server" class="form-control" />
                     <asp:RequiredFieldValidator ID="RqEmail" runat="server" ErrorMessage="נא הכנס כתובת אימייל" ControlToValidate="TxtEmail" />
                  </div>
                  <div class="form-row">
                     <div class="form-group col-md-6">
                       <label for="TxtFName">שם</label>
                       <asp:TextBox ID="TxtFName" runat="server" class="form-control" />
                       <asp:RequiredFieldValidator ID="RqFName" runat="server" ErrorMessage="נא הכנס שם" ControlToValidate="TxtFName" />
                     </div>
                  <div class="form-group col-md-6">
                       <label for="TxtLName">משפחה</label>
                       <asp:TextBox ID="TxtLName" runat="server" class="form-control" />
                       <asp:RequiredFieldValidator ID="RqLName" runat="server" ErrorMessage="נא הכנס שם משפחה" ControlToValidate="TxtLName" />
                  </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="TxtBirth">תאריך לידה</label>
                            <asp:TextBox ID="TxtBirth" runat="server" class="form-control" TextMode="Date" />
                            <asp:RequiredFieldValidator ID="RqBirth" runat="server" ErrorMessage="נא הכנס תאריך לידה" ControlToValidate="TxtBirth" />
                        </div>
                        <div class="form-group col-md-6">
                            <label for="TxtPhone">טלפון</label>
                            <asp:TextBox ID="TxtPhone" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator ID="RqPhone" runat="server" ErrorMessage="נא הכנס מספר טלפון" ControlToValidate="TxtPhone" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="TxtCity">עיר</label>
                            <%--<asp:TextBox ID="TxtCity" runat="server" class="form-control" />--%>
                           
                            <asp:DropDownList ID="DDLCity" runat="server" ></asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RqCity" runat="server" ErrorMessage="נא הכנס את עיר מגוריך" ControlToValidate="DDLCity" />
                        </div>
                        <div class="form-group col-md-6">
                            <label for="TxtAddress">כתובת</label>
                            <asp:TextBox ID="TxtAddress" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator ID="RqAddress" runat="server" ErrorMessage="נא הכנס כתובת מגורים" ControlToValidate="TxtAddress" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="TxtSkill">מיומנוית וכישורים</label>
                        <asp:TextBox ID="TxtSkill" runat="server" class="form-control" />
                  </div>
                    </div>
                </div>
            </div>
           <div class="row p-2">
                <div class="col-md-2 col-sm-3">        
    <asp:Button ID="BtnSave" runat="server" Text="שמור" Class="btn btn-lg btn-primary btn-block" OnClick="BtnSave_Click" />
                    </div>
               </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
</asp:Content>
