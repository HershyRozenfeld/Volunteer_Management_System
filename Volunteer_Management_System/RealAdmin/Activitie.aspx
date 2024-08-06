<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Activitie.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.Activitie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/select2Bootstrap.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <h2 class="page-title">יצירת ועריכת פעילות  </h2>
                <p class="text-muted">אזור יצירת פעולה חדשה עבור מטרת התנדבות לזולת.</p>
                <div class="card shadow mb-4">
                    <div class="card-header">
                        <strong class="card-title">צור וערוך פעילות</strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label for="activitie">שם פעילות</label>
                                    <asp:TextBox ID="TxtAct" runat="server" class="form-control" />
                                    <small id="activitieHelp" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="TxtCity1">עיר</label>
                                    <asp:DropDownList ID="TxtCity1" runat="server" class="form-control">
                                        <asp:ListItem Value="-1">בחר עיר</asp:ListItem>
                                    </asp:DropDownList>
                                    <small id="City1Help" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="Guarantor">אחראי</label>
                                    <asp:TextBox ID="TxtGuarantor" runat="server" class="form-control" placeholder="שדה רשות" />
                                    <small id="GuarantorHelp" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="Category">קטגוריה</label>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" />
                                    <small id="CategoryHelp" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label for="Description">תיאור פעילות</label>
                                    <asp:TextBox ID="TxtDescription" runat="server" class="form-control" placeholder="תיאור מפורט של מטרת הפעילות והאופן בו היא תנוהל" />
                                    <span class="help-block"><small></small></span>
                                    <small id="DescriptionHelp" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="MaxParticipants">מקסימום משתתפים</label>
                                    <asp:TextBox ID="TxtMaxParticipants" runat="server" class="form-control" />
                                    <small id="MaxParticipantsHelp" class="form-text text-muted">שדה רשות.</small>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="MinParticipants">מינימום משתתפים</label>
                                    <asp:TextBox ID="TxtMinParticipants" runat="server" class="form-control" />
                                    <small id="MinParticipantsHelp" class="form-text text-muted">שדה רשות.</small>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="SpecialDemands">דרישות מיוחדות</label>
                                    <asp:TextBox ID="TxtSpecialDemands" runat="server" class="form-control" placeholder=" דרישות מיוחדות הנחוצות עבור הפעילות" />
                                    <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- / .card -->
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <hr />

                        <h3 class="page-title">חלוקה למשימות</h3>
                        <p class="text-muted">חלוקת פעולה, למשימות רבות ממוקדות ומכוונות.</p>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card shadow mb-4">
                                    <div class="card-header">
                                        <strong class="card-title">צור וערוך משימה</strong>
                                    </div>
                                    <div class="card-body">
                                        <form class="needs-validation" novalidate>
                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="TxtTask">שם משימה</label>
                                                    <asp:TextBox ID="TxtTask" runat="server" class="form-control" />
                                                    <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="TxtInCharge">אחראי משימה</label>
                                                    <asp:TextBox ID="TxtInCharge" runat="server" class="form-control" />
                                                    <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>
                                            <!-- /.form-row -->
                                            <div class="form-row">
                                                <div class="col-md-4 mb-3">
                                                    <label for="TxtCity2">עיר</label>
                                                    <asp:DropDownList ID="TxtCity2" runat="server" class="form-control" />
                                                    <small id="CityHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-8 mb-3">
                                                    <label for="TxtStreet2">כתובת</label>
                                                    <asp:DropDownList ID="TxtStreet2" runat="server" class="form-control" />
                                                    <small id="StreetHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="TxtDescription2">תיאור משימה</label>
                                                <asp:TextBox ID="TxtDescription2" runat="server" class="form-control" TextMode="MultiLine" Rows="2" />
                                                <small id="Description2Help" class="form-text text-muted">שדה רשות.</small>
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-8 mb-3">
                                                    <label for="TxtEmail">אימייל</label>
                                                    <asp:TextBox ID="TxtEmail" runat="server" class="form-control" />
                                                    <small id="EmailHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <label for="TxtPhone">טלפון</label>
                                                    <asp:TextBox ID="TxtPhone" runat="server" class="form-control" />
                                                    <small id="PhoneHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>
                                            <!-- /.form-row -->

                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="date-input1">תאריך משימה</label>
                                                    <div class="input-group">
                                                        <label for="TxtBirth"></label>
                                                        <asp:TextBox ID="TxtBirth" runat="server" class="form-control drgpicker" TextMode="Date" />
                                                    </div>
                                                    <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="TxtBeginningTime">שעת התחלה</label>
                                                    <asp:TextBox ID="TxtBeginningTime" runat="server" class="form-control drgpicker" TextMode="Time" />
                                                    <small id="BeginningTimeHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="TxtEndTime">שעת סיום</label>
                                                    <asp:TextBox ID="TxtEndTime" runat="server" class="form-control drgpicker" TextMode="Time" />
                                                    <small id="TxtEndTimeHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="validationTextarea1">הערות נוספות</label>
                                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="MultiLine" Rows="2" />
                                                <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                            </div>
                                            <div class="mb-3">
                                                <p class="mb-2">מצב משימה</p>
                                                <div class="form-row">
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                            <label class="custom-control-label" for="customCheck4">משימה רב פעמית</label>
                                                            <small id="SpecialDemandsHelp" class="form-text text-muted">בחירה חובה.</small>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                            <label class="custom-control-label" for="customCheck3">משימה זו הושלמה באופן סופי</label>
                                                            <small id="SpecialDemandsHelp" class="form-text text-muted">בחירה רשות.</small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </br>
                                               
                                            <button class="btn btn-primary" type="submit">שמור משימה</button>
                                        </form>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                            <div class="col-md-6">
                                <div class="card shadow mb-4">
                                    <div class="card-header">
                                        <strong class="card-title">צור וערוך משימה</strong>
                                    </div>
                                    <div class="card-body">
                                        <form class="needs-validation" novalidate>
                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="TxtTask">שם משימה</label>
                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" />
                                                    <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="TxtInCharge">אחראי משימה</label>
                                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" />
                                                    <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>
                                            <!-- /.form-row -->
                                            <div class="form-row">
                                                <div class="col-md-4 mb-3">
                                                    <label for="TxtCity3">עיר</label>
                                                    <asp:DropDownList ID="TxtCity3" runat="server" class="form-control" />
                                                    <small id="City3Help" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-8 mb-3">
                                                    <label for="TxtStreet3">כתובת</label>
                                                    <asp:DropDownList ID="TxtStreet3" runat="server" class="form-control" />
                                                    <small id="Street3Help" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="TxtDescription2">תיאור משימה</label>
                                                <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="MultiLine" Rows="2" />
                                                <small id="Description2Help" class="form-text text-muted">שדה רשות.</small>
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-8 mb-3">
                                                    <label for="TxtEmail">אימייל</label>
                                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" />
                                                    <small id="EmailHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <label for="TxtPhone">טלפון</label>
                                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" />
                                                    <small id="PhoneHelp" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>
                                            <!-- /.form-row -->

                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="date-input1">תאריך משימה</label>
                                                    <div class="input-group">
                                                        <label for="TxtBirth"></label>
                                                        <asp:TextBox ID="TextBox10" runat="server" class="form-control drgpicker" TextMode="Date" />
                                                    </div>
                                                    <small id="SpecialDemands2Help" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="TxtBeginningTime2">שעת התחלה</label>
                                                    <asp:TextBox ID="TxtBeginningTime2" runat="server" class="form-control drgpicker" TextMode="Time" />
                                                    <small id="BeginningTimeHelp2" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="TxtEndTime2">שעת סיום</label>
                                                    <asp:TextBox ID="TxtEndTime2" runat="server" class="form-control drgpicker" TextMode="Time" />
                                                    <small id="EndTimeHelp2" class="form-text text-muted">שדה רשות.</small>
                                                </div>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="validationTextarea1">הערות נוספות</label>
                                                <asp:TextBox ID="TextBox13" runat="server" class="form-control" TextMode="MultiLine" Rows="2" />
                                                <small id="SpecialDemandsHelp" class="form-text text-muted">שדה רשות.</small>
                                            </div>
                                            <div class="mb-3">
                                                <p class="mb-2">מצב משימה</p>
                                                <div class="form-row">
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                            <label class="custom-control-label" for="customCheck4">משימה רב פעמית</label>
                                                            <small id="SpecialDemandsHelp" class="form-text text-muted">בחירה חובה.</small>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                            <label class="custom-control-label" for="customCheck3">משימה זו הושלמה באופן סופי</label>
                                                            <small id="SpecialDemandsHelp" class="form-text text-muted">בחירה רשות.</small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </br>
                   
                <button class="btn btn-primary" type="submit">שמור משימה</button>
                                        </form>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- end section -->
                    </div>
                    <!-- /.col-12 col-lg-10 col-xl-10 -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container-fluid -->
        </div>
        <!-- .wrapper -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
    <script>
        //var ArrCity = [];
        //let endPoint = 'https://data.gov.il/api/3/action/datastore_search?resource_id=d4901968-dad3-4845-a9b0-a57d027f11ab';
        //function LoadCities() {
        //    //הפונקציה גולשת לכתובת הלינק ושולחת את התוכן שהתקבל לפונקציה שתפקידה להמיר לג'יסון את המידע
        //    // ואז היא מעבירה את המומר לפונקציה ששולפת מתוכה רק את השדות עם המידע על הערים
        //    fetch(endPoint).then((res) => res.json()).then((data) => {
        //        TmpCity = data.result.records;
        //        //ואז היא מעבירה את המסונן לפונקציה שיכולה לסנן שתי שדות או יותר מתוך האזור הנבחר
        //        ArrCity = TmpCity.map((city) => {
        //            //מה שמשאיר אותנו בשורה הסופית עם רשימה ג'יסונית של כל הערים והמספור האישי שלהם
        //            return { id: city["_id"], text: city["שם_ישוב"] }
        //        });
        //        localStorage.setItem("ArrCity", JSON.stringify(ArrCity));
        //    })
        //}


        let endPoint2 = 'https://data.gov.il/api/3/action/datastore_search?resource_id=9ad3862c-8391-4b2f-84a4-2d4c68625f4b&limit=100000';
        var ArrStreet = [];
        var allDada = [];
        var ArrCity = [];
        function Loadstreets() {
            //הפונקציה גולשת לכתובת הלינק ושולחת את התוכן שהתקבל לפונקציה שתפקידה להמיר לג'יסון את המידע
            // ואז היא מעבירה את המומר לפונקציה ששולפת מתוכה רק את השדות עם המידע על הערים
            fetch(endPoint2).then((res) => res.json()).then((data) => {
                allDada = data.result.records;
                /*const ArrCity = [];*/
                //allDada.forEach((street) => {
                //    if (!ArrCity.some((city) => city.cityCode === street.סמל_ישוב)) {
                //        ArrCity.push({ id: street.סמל_ישוב, text: street.שם_ישוב });
                //    }
                //});
                //localStorage.setItem("ArrCity", JSON.stringify(ArrCity));
                const citiesMap = new Map();
                allDada.forEach((street) => {
                    if (!citiesMap.has(street.סמל_ישוב)) {
                        citiesMap.set(street.סמל_ישוב, { id: street.סמל_ישוב, text: street.שם_ישוב });
                    }
                });

                ArrCity = Array.from(citiesMap.values());
                localStorage.setItem("ArrCity", JSON.stringify(ArrCity));
                console.log(ArrCity);

                //ואז היא מעבירה את המסונן לפונקציה שיכולה לסנן שתי שדות או יותר מתוך האזור הנבחר
                ArrStreet = allDada.map((street) => {
                    //מה שמשאיר אותנו בשורה הסופית עם רשימה ג'יסונית של כל הערים והמספור האישי שלהם
                    return { id: street["סמל_רחוב"], text: street["שם_רחוב"] }
                });
                localStorage.setItem("ArrStreet", JSON.stringify(ArrStreet));
            })
        }
        $(() => {
            StreetStr = localStorage.getItem("ArrStreet");
            CityStr = localStorage.getItem("ArrCity");
            if (StreetStr == null) {
                Loadstreets();
            }
            else {
                ArrStreet = JSON.parse(StreetStr);
                ArrCity = JSON.parse(CityStr);
            }
            $("#MainCnt_TxtStreet2").select2({
                data: ArrStreet,
                theme: "bootstrap"
            })
            $("#MainCnt_TxtStreet3").select2({
                data: ArrStreet,
                theme: "bootstrap"
            })
            $("#MainCnt_TxtCity1").select2({
                data: ArrCity,
                theme: "bootstrap"
            })
            $("#MainCnt_TxtCity2").select2({
                data: ArrCity,
                theme: "bootstrap"
            })
            $("#MainCnt_TxtCity3").select2({
                data: ArrCity,
                theme: "bootstrap"
            })
        })
    </script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'UAc="https://cdn.jsdelivr.net/npm/jquery-datatables@1.11.5/js/jquery.dataTables.min.js')

    </script>
</asp:Content>
