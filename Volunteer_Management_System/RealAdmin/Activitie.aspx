<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Activitie.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.Activitie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/select2Bootstrap.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <h2 class="page-title">פעילות חדשה </h2>
                <p class="text-muted">אזור יצירת פעולה חדשה עבור מטרת התנדבות לזולת.</p>
                <div class="card shadow mb-4">
                    <div class="card-header">
                        <strong class="card-title">צור פעילות</strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label for="activitie">שם פעילות</label>
                                    <asp:TextBox ID="TxtAct" runat="server" class="form-control" />
                                </div>
                                <div class="form-group mb-3">
                                    <label for="TxtCity2">עיר</label>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" />

                                </div>
                                <div class="form-group mb-3">
                                    <label for="Guarantor">אחראי</label>
                                    <asp:TextBox ID="TxtGuarantor" runat="server" class="form-control" placeholder="שדה רשות" />
                                </div>
                                <div class="form-group mb-3">
                                    <label for="SpecialDemands">דרישות מיוחדות</label>
                                    <asp:TextBox ID="TxtSpecialDemands" runat="server" class="form-control" placeholder=" דרישות מיוחדות הנחוצות עבור הפעילות" />
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label for="Description">תיאור פעילות</label>
                                    <asp:TextBox ID="TxtDescription" runat="server" class="form-control" placeholder="תיאור מפורט של מטרת הפעילות והאופן בו היא תנוהל" />
                                    <span class="help-block"><small></small></span>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="MaxParticipants">מקסימום משתתפים</label>
                                    <asp:TextBox ID="TxtMaxParticipants" runat="server" class="form-control" placeholder="שדה רשות" />
                                </div>
                                <div class="form-group mb-3">
                                    <label for="MinParticipants">מינימום משתתפים</label>
                                    <asp:TextBox ID="TxtMinParticipants" runat="server" class="form-control" placeholder="שדה רשות" />
                                </div>
                                <div class="form-group mb-3">
                                    <label for="Category">קטגוריה</label>
                                    <asp:TextBox ID="TxtCategory" runat="server" class="form-control" placeholder="שדה רשות" />
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
                        <h3 class="page-title">חלוקה למשימות</h3>
                        <p class="text-muted">חלוקת פעולה, למשימות רבות ממוקדות ומכוונות.</p>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card shadow mb-4">
                                    <div class="card-header">
                                        <strong class="card-title">פרטי משימה</strong>
                                    </div>
                                    <div class="card-body">
                                        <form class="needs-validation" novalidate>
                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="TxtTask">שם משימה</label>
                                                    <asp:TextBox ID="TxtTask" runat="server" class="form-control" />
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="TxtInCharge">אחראי משימה</label>
                                                    <asp:TextBox ID="TxtInCharge" runat="server" class="form-control" />
                                                </div>
                                            </div>
                                            <!-- /.form-row -->
                                            <div class="form-row">
                                                <div class="col-md-4 mb-3">
                                                    <label for="TxtCity">עיר</label>
                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" />
                                                </div>
                                                <div class="col-md-8 mb-3">
                                                    <label for="TxtStreet2">כתובת</label>
                                                    <asp:TextBox ID="TxtStreet2" runat="server" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="validationTextarea1">תיאור משימה</label>
                                                <asp:TextBox ID="TextBox9" runat="server" class="form-control" />
                                                <textarea class="form-control" id="validationTextarea1" placeholder="Take a note here" required="" rows="3"></textarea>
                                                <div class="invalid-feedback">Please enter a message in the textarea. </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-8 mb-3">
                                                    <label for="TxtEmail">אימייל</label>
                                                    <asp:TextBox ID="TxtEmail" runat="server" class="form-control" />
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <label for="TxtPhone">טלפון</label>
                                                    <asp:TextBox ID="TxtPhone" runat="server" class="form-control" />
                                                </div>
                                            </div>
                                            <!-- /.form-row -->

                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="date-input1">תאריך משימה</label>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control drgpicker" id="date-input1" aria-describedby="button-addon2">
                                                        <div class="input-group-append">
                                                            <div class="input-group-text" id="button-addon-date"><span class="fe fe-calendar fe-16 mx-2"></span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="example-time">שעת התחלה</label>
                                                    <input class="form-control" id="example-time" type="time" name="time" required>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="example-time">שעת סיום</label>
                                                    <input class="form-control" id="example-time" type="time" name="time" required>
                                                </div>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="validationTextarea1">הערות נוספות</label>
                                                <textarea class="form-control" id="validationTextarea1" placeholder="Take a note here" required="" rows="2"></textarea>
                                                <div class="invalid-feedback">Please enter a message in the textarea. </div>
                                            </div>
                                            <div class="mb-3">
                                                <p class="mb-2">מצב משימה</p>
                                                <div class="form-row">
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                            <label class="custom-control-label" for="customCheck4">משימה רב פעמית</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                            <label class="custom-control-label" for="customCheck3">משימה זו הושלמה באופן סופי</label>
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
                                        <strong class="card-title">פרטי משימה</strong>
                                    </div>
                                    <div class="card-body">
                                        <form class="needs-validation" novalidate>
                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="validationCustom3">שם משימה</label>
                                                    <input type="text" class="form-control" id="validationCustom3" value="Mark" required>
                                                    <div class="valid-feedback">Looks good! </div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="validationCustom4">אחראי משימה</label>
                                                    <input type="text" class="form-control" id="validationCustom4" value="Otto" required>
                                                    <div class="valid-feedback">Looks good! </div>
                                                </div>
                                            </div>

                                            <!-- /.form-row -->
                                            <div class="form-row">
                                                <div class="col-md-3 mb-3">
                                                    <label for="TxtCity1">עיר</label>
                                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" />
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="address-wpalaceholder">כתובת</label>
                                                    <input type="text" id="address-wpalaceholder" class="form-control" placeholder="Enter your address">
                                                    <div class="valid-feedback">Looks good! </div>
                                                    <div class="invalid-feedback">Badd address </div>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="custom-zip">Zip </label>
                                                    <input class="form-control input-zip" id="custom-zip" autocomplete="off" maxlength="9" required>
                                                    <div class="invalid-feedback">Please provide a valid zip. </div>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="validationTextarea1">תיאור משימה</label>
                                                <textarea class="form-control" id="validationTextarea1" placeholder="Take a note here" required="" rows="3"></textarea>
                                                <div class="invalid-feedback">Please enter a message in the textarea. </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-8 mb-3">
                                                    <label for="exampleInputEmail2">אימייל</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp1" required>
                                                    <div class="invalid-feedback">Please use a valid email </div>
                                                    <small id="emailHelp1" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <label for="custom-phone">טלפון</label>
                                                    <input class="form-control input-phoneus" id="custom-phone" maxlength="14" required>
                                                    <div class="invalid-feedback">Please enter a correct phone </div>
                                                </div>
                                            </div>
                                            <!-- /.form-row -->

                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="date-input1">תאריך משימה</label>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control drgpicker" id="date-input1" aria-describedby="button-addon2">
                                                        <div class="input-group-append">
                                                            <div class="input-group-text" id="button-addon-date"><span class="fe fe-calendar fe-16 mx-2"></span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="example-time">שעת התחלה</label>
                                                    <input class="form-control" id="example-time" type="time" name="time" required>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="example-time">שעת סיום</label>
                                                    <input class="form-control" id="example-time" type="time" name="time" required>
                                                </div>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="validationTextarea1">הערות נוספות</label>
                                                <textarea class="form-control" id="validationTextarea1" placeholder="Take a note here" required="" rows="2"></textarea>
                                                <div class="invalid-feedback">Please enter a message in the textarea. </div>
                                            </div>
                                            <div class="mb-3">
                                                <p class="mb-2">מצב משימה</p>
                                                <div class="form-row">
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                            <label class="custom-control-label" for="customCheck1">משימה רב פעמית</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                            <label class="custom-control-label" for="customCheck2">משימה זו הושלמה באופן סופי</label>
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
                    return { id: city["_id"], text: city["שם_ישוב"] }
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

            $("#MainCnt_TextBox2").select2({
                data: ArrCity,
                theme: "bootstrap"
            })
            $("#MainCnt_TextBox1").select2({
                data: ArrCity,
                theme: "bootstrap"
            })
            $("#MainCnt_TextBox3").select2({
                data: ArrCity,
                theme: "bootstrap"
            })
            
        })
        $('.drgpicker').daterangepicker(
            {
                singleDatePicker: true,
                timePicker: false,
                showDropdowns: true,
                locale:
                {
                    format: 'MM/DD/YYYY'
                }
            })
        let endPoint2 = 'https://data.gov.il/api/3/action/datastore_search?resource_id=9ad3862c-8391-4b2f-84a4-2d4c68625f4b';
        var ArrStreet = [];
        function Loadstreets() {
            //הפונקציה גולשת לכתובת הלינק ושולחת את התוכן שהתקבל לפונקציה שתפקידה להמיר לג'יסון את המידע
            // ואז היא מעבירה את המומר לפונקציה ששולפת מתוכה רק את השדות עם המידע על הערים
            fetch(endPoint2).then((res) => res.json()).then((data) => {
                TmpStreet = data.result.records;
                //ואז היא מעבירה את המסונן לפונקציה שיכולה לסנן שתי שדות או יותר מתוך האזור הנבחר
                ArrStreet = TmpStreet.map((street) => {
                    //מה שמשאיר אותנו בשורה הסופית עם רשימה ג'יסונית של כל הערים והמספור האישי שלהם
                    return { id: street["סמל_רחוב"], text: street["שם_רחוב"] }
                });
                localStorage.setItem("ArrStreet", JSON.stringify(ArrStreet));
            })
        }
        $(() => {
            StreetStr = localStorage.getItem("ArrStreet");
            if (StreetStr == null) {
                Loadstreets();
            }
            else {
                ArrStreet = JSON.parse(StreetStr);
            }

            $("#TxtStreet2").select2({
                data: ArrStreet,
                theme: "bootstrap"
            })
        })
    </script>
</asp:Content>
