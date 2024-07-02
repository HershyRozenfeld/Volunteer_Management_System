﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Register-MP.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
    <div class="wrapper vh-100">
        <div class="row align-items-center h-100">
            <div class="col-lg-6 col-md-8 col-10 mx-auto">
                <div class="mx-auto text-center my-4">
                    <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="./index.html">
                        <svg version="1.1" id="logo" class="navbar-brand-img brand-md" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
                            <g>
                                <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                                <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                                <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                            </g>
                        </svg>
                    </a>
                    <h2 class="my-3">הרשמה</h2>
                </div>
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
                        <asp:TextBox ID="TxtCity" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator ID="RqCity" runat="server" ErrorMessage="נא הכנס את עיר מגוריך" ControlToValidate="TxtCity" />
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
                    <asp:RequiredFieldValidator ID="RqSkill" runat="server" ErrorMessage="נא הכנס מיומנוית וכישורים" ControlToValidate="TxtSkill" />
                </div>
                <hr class="my-4">
                <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputPassword5">צור סיסמה</label>
                            <input type="password" class="form-control" id="inputPassword5">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword6">חזור על הסיסמה</label>
                            <input type="password" class="form-control" id="inputPassword6">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <p class="mb-2">דרישות עבור סיסמה</p>
                        <p class="small text-muted mb-2">בשביל ליצור סיסמה חדשה, הינך חייב לעמוד בכל הדרישות: </p>
                        <ul class="small text-muted pl-4 mb-0">
                            <li>מינימום 8 תווים </li>
                            <li>לפחות תו אחד מיוחד</li>
                            <li>לפחות מספר אחד</li>
                            <li>סיסמה לא יכולה להיות זהה לסיסמה קודמת </li>
                        </ul>
                    </div>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">הרשם</button>
                <p class="mt-5 mb-3 text-muted text-center">© 2024</p>
            </div>
        </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/simplebar.min.js"></script>
    <script src='js/daterangepicker.js'></script>
    <script src='js/jquery.stickOnScroll.js'></script>
    <script src="js/tinycolor-min.js"></script>
    <script src="js/config.js"></script>
    <script src="js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'UA-56159088-1');
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
</asp:Content>
