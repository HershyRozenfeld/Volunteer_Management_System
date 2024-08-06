<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.Register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl" lang="he">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Tiny Dashboard - A Bootstrap Dashboard Template</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="css/feather.css" />
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css" />
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme" />
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/select2Bootstrap.css" />
</head>
<body class="vertical  light rtl" >
    <form id="form1" runat="server">
        <div class="wrapper vh-100" style="margin-right: 0rem">
            <div class="row align-items-center h-100">
                <div class="col-lg-6 col-md-8 col-10 mx-auto">
                 <div class="container" style="background-color: #ffffff; border-radius: 55px; padding: 35px; width: 100%; margin: 20px 0; " >
                    <div class="mx-auto text-center my-4">
                        <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="./index.html">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="100" height="100">
                                <!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc. -->
                                <path fill="#1b68ff" d="M163.9 136.9c-29.4-29.8-29.4-78.2 0-108s77-29.8 106.4 0l17.7 18 17.7-18c29.4-29.8 77-29.8 106.4 0s29.4 78.2 0 108L310.5 240.1c-6.2 6.3-14.3 9.4-22.5 9.4s-16.3-3.1-22.5-9.4L163.9 136.9zM568.2 336.3c13.1 17.8 9.3 42.8-8.5 55.9L433.1 485.5c-23.4 17.2-51.6 26.5-80.7 26.5H192 32c-17.7 0-32-14.3-32-32V416c0-17.7 14.3-32 32-32H68.8l44.9-36c22.7-18.2 50.9-28 80-28H272h16 64c17.7 0 32 14.3 32 32s-14.3 32-32 32H288 272c-8.8 0-16 7.2-16 16s7.2 16 16 16H392.6l119.7-88.2c17.8-13.1 42.8-9.3 55.9 8.5zM193.6 384l0 0-.9 0c.3 0 .6 0 .9 0z" />
                            </svg>
                        </a>
                        <br />
                        <br />
                        <HR>
                        <br />
                        <h2 class="my-3">צור פרופיל מתנדב</h2>
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
                            <label for="date-input1">תאריך לידה</label>
                            <label for="TxtBirth"></label>
                            <asp:TextBox ID="TxtBirth" runat="server" class="form-control drgpicker" TextMode="Date" />
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
                            <asp:DropDownList ID="TxtCity" runat="server" class="form-control" >
                                <asp:ListItem Value="-1">בחר עיר</asp:ListItem>
                             <%--   <listitem value="" ></listitem>--%>
                              
                                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RqCity" runat="server" ErrorMessage="נא הכנס את עיר מגוריך" ControlToValidate="TxtCity" />
                        </div>
                        <div class="form-group col-md-6">
                            <label for="TxtStreet">כתובת</label>
                            <asp:DropDownList ID="TxtStreet" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator ID="RqAddress" runat="server" ErrorMessage="נא הכנס כתובת מגורים" ControlToValidate="TxtStreet" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="TxtSkill">מיומנוית וכישורים</label>
                        <asp:TextBox ID="TxtSkill" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator ID="RqSkill" runat="server" ErrorMessage="נא הכנס מיומנוית וכישורים" ControlToValidate="TxtSkill" />
                    </div>
                    <hr class="my-4" />
                    <div class="row mb-4">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="TxtPass">צור סיסמה</label>
                                <asp:TextBox ID="TxtPass" TextMode="Password" runat="server" class="form-control" />
                                <asp:RequiredFieldValidator ID="RqPass" runat="server" ErrorMessage="צור סיסמה" ControlToValidate="TxtPass" />
                            </div>
                            <div class="form-group">
                                <label for="TxtConfirmPass">חזור על הסיסמה</label>
                                <asp:TextBox ID="TxtConfirmPass" TextMode="Password" runat="server" class="form-control" />
                                <asp:CompareValidator ID="CVPass" runat="server" ErrorMessage="סיסמה ואימות אינם תואמים" ControlToValidate="TxtConfirmPass" ControlToCompare="TxtPass" ForeColor="Red" />
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
                    <asp:Button ID="BtnReg" runat="server" Text="הרשם" class="btn btn-lg btn-primary btn-block" OnClick="BtnReg_Click" />
                     <p class="mt-5 mb-3 text-muted text-center">© 2024</p>
                </div>
                 </div>
               </div>
            </div>

            <div class="row p-2">
                <div class="col-md-6 col-sm-8">
                    <asp:Literal ID="LtMsg" runat="server" />
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
        
        <script>
            var TmpCity = [];
            var ArrCity = [];
            let endPoint = 'https://data.gov.il/api/3/action/datastore_search?resource_id=d4901968-dad3-4845-a9b0-a57d027f11ab';
            function LoadCities() {
                //הפונקציה גולשת לכתובת הלינק ושולחת את התוכן שהתקבל לפונקציה שתפקידה להמיר לג'יסון את המידע
                // ואז היא מעבירה את המומר לפונקציה ששולפת מתוכה רק את השדות עם המידע על הערים
                fetch(endPoint).then((res) => res.json()).then((data) => {
                    TmpCity = data.result.records;
                    //ואז היא מעבירה את המסונן לפונקציה שיכולה לסנן שתי שדות או יותר מתוך האזור הנבחר
                    ArrCity = TmpCity.map((city) => {
                        //מה שמשאיר אותנו בשורה הסופית עם רשימה ג'יסונית של כל הערים והמספור האישי שלהם
                        return { id: city["סמל_ישוב"], text: city["שם_ישוב"] }
                    });
                    localStorage.setItem("ArrCity", JSON.stringify(ArrCity));
                })
            }

            $(() => {
                CityStr = localStorage.getItem("ArrCity");
                if (CityStr == null) {
                    LoadCities();
                }
                else {
                    ArrCity = JSON.parse(CityStr);
                }

                $("#TxtCity").select2({
                    placeholder: {
                        id: -1,
                        text: "בחר עיר"
                    },
                    data: ArrCity,
                    theme: "bootstrap",
                    selectOnClose: true
                })
                $('#TxtCity').on('select2:select', function (e) {

                    var cityid = e.params.data.id;
                    filterStreetsByCity(cityid);
                });

                StreetStr = localStorage.getItem("ArrStreet");
                if (StreetStr == null) {
                    Loadstreets();
                }
                else {
                    ArrStreet = JSON.parse(StreetStr);
                }
            })

            let endPoint2 = 'https://data.gov.il/api/3/action/datastore_search?resource_id=9ad3862c-8391-4b2f-84a4-2d4c68625f4b&limit=100000';
            var ArrStreet = [];
            function Loadstreets() {
                //הפונקציה גולשת לכתובת הלינק ושולחת את התוכן שהתקבל לפונקציה שתפקידה להמיר לג'יסון את המידע
                // ואז היא מעבירה את המומר לפונקציה ששולפת מתוכה רק את השדות עם המידע על הערים
                fetch(endPoint2).then((res) => res.json()).then((data) => {
                    TmpStreet = data.result.records;
                    //ואז היא מעבירה את המסונן לפונקציה שיכולה לסנן שתי שדות או יותר מתוך האזור הנבחר
                    ArrStreet = TmpStreet.map((street) => {
                        //מה שמשאיר אותנו בשורה הסופית עם רשימה ג'יסונית של כל הערים והמספור האישי שלהם
                        return { id: street["סמל_רחוב"], text: street["שם_רחוב"], Cid: street["סמל_ישוב"] }
                    });
                    localStorage.setItem("ArrStreet", JSON.stringify(ArrStreet));
                })
            }
            // פונקציה לסינון רחובות לפי עיר
            function filterStreetsByCity(cityid) {  // בחירת שדה העיר
                
                let filteredStreets = ArrStreet.filter(street => street.Cid === parseInt(cityid));

                // ניקוי שדה הרחובות הקודם
                //  streetsField.empty();
                if ($('#TxtStreet').hasClass("select2-hidden-accessible")) {
                    $("#TxtStreet").select2("destroy").empty();
                   // $("#TxtStreet").find('option').remove();

                }
                $("#TxtStreet").select2({
                    placeholder: "בחר רחוב",
                    data: filteredStreets,
                    theme: "bootstrap"
                })
            }
           

            //let q = TxtCity.Text;
            //function FilterArr(q) {
            //    //כעת נלקחת הרשימה המצומצמת של הערים והמספור, ונשלחת לפונקציה שמחפשת תווים מסוימים בתוך שדה השם
            //    return ArrCity.filter((city) => {
            //        return (city.CityName.incloudes(q))
            //    })
            //}

        </script>
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        
    </form>
</body>
</html>

