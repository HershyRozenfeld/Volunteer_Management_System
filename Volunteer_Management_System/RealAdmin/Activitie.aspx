<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Activitie.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.Activitie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
    <body class="vertical  light rtl ">
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
                                        <%--  <asp:RequiredFieldValidator ID="RqAct" runat="server" ErrorMessage="נא הכנס שם" ControlToValidate="TxtAct" placeholder="בחר שם קליט המברר את צורת הפעילות"/>--%>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="city">מיקום</label>
                                        <%--<asp:TextBox ID="TxtCity" runat="server" class="form-control" />--%>
                                        <%--  <asp:DropDownList ID="DDLCity" runat="server" class="form-control">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RqCity" runat="server" ErrorMessage="נא הכנס את עיר מגוריך" ControlToValidate="DDLCity" />--%>
                                        <input type="email" id="example-email" name="example-email" class="form-control" placeholder="בחר עיר או אזור לפעילות ההתנדבות">
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
                                            <strong class="card-title">Advanced Validation</strong>
                                        </div>
                                        <div class="card-body">
                                            <form class="needs-validation" novalidate>
                                                <div class="form-row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationCustom3">First name</label>
                                                        <input type="text" class="form-control" id="validationCustom3" value="Mark" required>
                                                        <div class="valid-feedback">Looks good! </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationCustom4">Last name</label>
                                                        <input type="text" class="form-control" id="validationCustom4" value="Otto" required>
                                                        <div class="valid-feedback">Looks good! </div>
                                                    </div>
                                                </div>
                                                <!-- /.form-row -->
                                                <div class="form-row">
                                                    <div class="col-md-8 mb-3">
                                                        <label for="exampleInputEmail2">Email address</label>
                                                        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp1" required>
                                                        <div class="invalid-feedback">Please use a valid email </div>
                                                        <small id="emailHelp1" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="custom-phone">US Telephone</label>
                                                        <input class="form-control input-phoneus" id="custom-phone" maxlength="14" required>
                                                        <div class="invalid-feedback">Please enter a correct phone </div>
                                                    </div>
                                                </div>
                                                <!-- /.form-row -->
                                                <div class="form-group mb-3">
                                                    <label for="address-wpalaceholder">Address</label>
                                                    <input type="text" id="address-wpalaceholder" class="form-control" placeholder="Enter your address">
                                                    <div class="valid-feedback">Looks good! </div>
                                                    <div class="invalid-feedback">Badd address </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationCustom33">City</label>
                                                        <input type="text" class="form-control" id="validationCustom33" required>
                                                        <div class="invalid-feedback">Please provide a valid city. </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="validationSelect2">State</label>
                                                        <select class="form-control select2" id="validationSelect2" required>
                                                            <option value="">Select state</option>
                                                            <optgroup label="Mountain Time Zone">
                                                                <option value="AZ">Arizona</option>
                                                                <option value="CO">Colorado</option>
                                                                <option value="ID">Idaho</option>
                                                                <option value="MT">Montana</option>
                                                                <option value="NE">Nebraska</option>
                                                                <option value="NM">New Mexico</option>
                                                                <option value="ND">North Dakota</option>
                                                                <option value="UT">Utah</option>
                                                                <option value="WY">Wyoming</option>
                                                            </optgroup>
                                                            <optgroup label="Central Time Zone">
                                                                <option value="AL">Alabama</option>
                                                                <option value="AR">Arkansas</option>
                                                                <option value="IL">Illinois</option>
                                                                <option value="IA">Iowa</option>
                                                                <option value="KS">Kansas</option>
                                                                <option value="KY">Kentucky</option>
                                                                <option value="LA">Louisiana</option>
                                                                <option value="MN">Minnesota</option>
                                                                <option value="MS">Mississippi</option>
                                                                <option value="MO">Missouri</option>
                                                                <option value="OK">Oklahoma</option>
                                                                <option value="SD">South Dakota</option>
                                                                <option value="TX">Texas</option>
                                                                <option value="TN">Tennessee</option>
                                                                <option value="WI">Wisconsin</option>
                                                            </optgroup>
                                                        </select>
                                                        <div class="invalid-feedback">Please select a valid state. </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="custom-zip">Zip code</label>
                                                        <input class="form-control input-zip" id="custom-zip" autocomplete="off" maxlength="9" required>
                                                        <div class="invalid-feedback">Please provide a valid zip. </div>
                                                    </div>
                                                </div>
                                                <div class="form-row mb-3">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="date-input1">Date Picker</label>
                                                        <div class="input-group">
                                                            <input type="text" class="form-control drgpicker" id="date-input1" value="04/24/2020" aria-describedby="button-addon2">
                                                            <div class="input-group-append">
                                                                <div class="input-group-text" id="button-addon-date"><span class="fe fe-calendar fe-16 mx-2"></span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="example-time">Time</label>
                                                        <input class="form-control" id="example-time" type="time" name="time" required>
                                                    </div>
                                                    <div class="col-md-3 mx-auto mb-3">
                                                        <p class="mb-3">משימה רב פעמית</p>
                                                        <div class="custom-control custom-switch">
                                                            <input type="checkbox" class="custom-control-input" id="customSwitch1" required>
                                                            <label class="custom-control-label" for="customSwitch1">כן</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <p class="mb-2">Payment</p>
                                                    <div class="form-row">
                                                        <div class="col-md-6">
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" class="custom-control-input" id="customControlValidation22" name="radio-stacked" required>
                                                                <label class="custom-control-label" for="customControlValidation22">Card</label>
                                                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="custom-control custom-radio mb-3">
                                                                <input type="radio" class="custom-control-input" id="customControlValidation33" name="radio-stacked" required>
                                                                <label class="custom-control-label" for="customControlValidation33">Paypal</label>
                                                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="validationTextarea1">Note</label>
                                                    <textarea class="form-control" id="validationTextarea1" placeholder="Take a note here" required="" rows="3"></textarea>
                                                    <div class="invalid-feedback">Please enter a message in the textarea. </div>
                                                </div>
                                                <div class="custom-control custom-checkbox mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="customControlValidation16" required="">
                                                    <label class="custom-control-label" for="customControlValidation16">Agree to terms and conditions</label>
                                                    <div class="invalid-feedback">You must agree before submitting. </div>
                                                </div>
                                                <button class="btn btn-primary" type="submit">Submit form</button>
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
                                            <strong class="card-title">Advanced Validation</strong>
                                        </div>
                                        <div class="card-body">
                                            <form class="needs-validation" novalidate>
                                                <div class="form-row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationCustom3">First name</label>
                                                        <input type="text" class="form-control" id="validationCustom3" value="Mark" required>
                                                        <div class="valid-feedback">Looks good! </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationCustom4">Last name</label>
                                                        <input type="text" class="form-control" id="validationCustom4" value="Otto" required>
                                                        <div class="valid-feedback">Looks good! </div>
                                                    </div>
                                                </div>
                                                <!-- /.form-row -->
                                                <div class="form-row">
                                                    <div class="col-md-8 mb-3">
                                                        <label for="exampleInputEmail2">Email address</label>
                                                        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp1" required>
                                                        <div class="invalid-feedback">Please use a valid email </div>
                                                        <small id="emailHelp1" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="custom-phone">US Telephone</label>
                                                        <input class="form-control input-phoneus" id="custom-phone" maxlength="14" required>
                                                        <div class="invalid-feedback">Please enter a correct phone </div>
                                                    </div>
                                                </div>
                                                <!-- /.form-row -->
                                                <div class="form-group mb-3">
                                                    <label for="address-wpalaceholder">Address</label>
                                                    <input type="text" id="address-wpalaceholder" class="form-control" placeholder="Enter your address">
                                                    <div class="valid-feedback">Looks good! </div>
                                                    <div class="invalid-feedback">Badd address </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="validationCustom33">City</label>
                                                        <input type="text" class="form-control" id="validationCustom33" required>
                                                        <div class="invalid-feedback">Please provide a valid city. </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="validationSelect2">State</label>
                                                        <select class="form-control select2" id="validationSelect2" required>
                                                            <option value="">Select state</option>
                                                            <optgroup label="Mountain Time Zone">
                                                                <option value="AZ">Arizona</option>
                                                                <option value="CO">Colorado</option>
                                                                <option value="ID">Idaho</option>
                                                                <option value="MT">Montana</option>
                                                                <option value="NE">Nebraska</option>
                                                                <option value="NM">New Mexico</option>
                                                                <option value="ND">North Dakota</option>
                                                                <option value="UT">Utah</option>
                                                                <option value="WY">Wyoming</option>
                                                            </optgroup>
                                                            <optgroup label="Central Time Zone">
                                                                <option value="AL">Alabama</option>
                                                                <option value="AR">Arkansas</option>
                                                                <option value="IL">Illinois</option>
                                                                <option value="IA">Iowa</option>
                                                                <option value="KS">Kansas</option>
                                                                <option value="KY">Kentucky</option>
                                                                <option value="LA">Louisiana</option>
                                                                <option value="MN">Minnesota</option>
                                                                <option value="MS">Mississippi</option>
                                                                <option value="MO">Missouri</option>
                                                                <option value="OK">Oklahoma</option>
                                                                <option value="SD">South Dakota</option>
                                                                <option value="TX">Texas</option>
                                                                <option value="TN">Tennessee</option>
                                                                <option value="WI">Wisconsin</option>
                                                            </optgroup>
                                                        </select>
                                                        <div class="invalid-feedback">Please select a valid state. </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="custom-zip">Zip code</label>
                                                        <input class="form-control input-zip" id="custom-zip" autocomplete="off" maxlength="9" required>
                                                        <div class="invalid-feedback">Please provide a valid zip. </div>
                                                    </div>
                                                </div>
                                                <div class="form-row mb-3">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="date-input1">Date Picker</label>
                                                        <div class="input-group">
                                                            <input type="text" class="form-control drgpicker" id="date-input1" value="04/24/2020" aria-describedby="button-addon2">
                                                            <div class="input-group-append">
                                                                <div class="input-group-text" id="button-addon-date"><span class="fe fe-calendar fe-16 mx-2"></span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="example-time">Time</label>
                                                        <input class="form-control" id="example-time" type="time" name="time" required>
                                                    </div>
                                                    <div class="col-md-3 mx-auto mb-3">
                                                        <p class="mb-3">משימה רב פעמית</p>
                                                        <div class="custom-control custom-switch">
                                                            <input type="checkbox" class="custom-control-input" id="customSwitch2" required>
                                                            <label class="custom-control-label" for="customSwitch2">כן</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <p class="mb-2">Payment</p>
                                                    <div class="form-row">
                                                        <div class="col-md-6">
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" class="custom-control-input" id="customControlValidation22" name="radio-stacked" required>
                                                                <label class="custom-control-label" for="customControlValidation22">Card</label>
                                                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="custom-control custom-radio mb-3">
                                                                <input type="radio" class="custom-control-input" id="customControlValidation33" name="radio-stacked" required>
                                                                <label class="custom-control-label" for="customControlValidation33">Paypal</label>
                                                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <label for="validationTextarea1">Note</label>
                                                    <textarea class="form-control" id="validationTextarea" placeholder="Take a note here" required="" rows="3"></textarea>
                                                    <div class="invalid-feedback">Please enter a message in the textarea. </div>
                                                </div>
                                                <div class="custom-control custom-checkbox mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="customControlValidation16" required="">
                                                    <label class="custom-control-label" for="customControlValidation16">Agree to terms and conditions</label>
                                                    <div class="invalid-feedback">You must agree before submitting. </div>
                                                </div>
                                                <button class="btn btn-primary" type="submit">Submit form</button>
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
    </body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
</asp:Content>
