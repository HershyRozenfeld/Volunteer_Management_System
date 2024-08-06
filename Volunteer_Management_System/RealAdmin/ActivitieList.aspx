<%@ Page Title="" Language="C#" MasterPageFile="~/RealAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ActivitieList.aspx.cs" Inherits="Volunteer_Management_System.RealAdmin.ActivitieList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="row align-items-center my-4">
                    <div class="col">
                        <h2 class="h3 mb-0 page-title">פעילויות</h2>
                    </div>
                    <div class="col-auto">
                        <button type="button" onclick="window.location.href='Activitie.aspx'" class="btn btn-primary">
                            צור פעילות  <span class="fe fe-filter fe-12 mr-2"></span>
                        </>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="images/harvest.jpeg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">קטיף בעוטף</strong>
                                    <p class="small text-muted mb-0">תמיכה בחקלאות</p>
                                    <p class="small"><span class="badge badge-light text-muted">ניר עוז</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-secondary mr-1"></span>הושלם </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->
                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="./assets/avatars/face-4.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">שם פעילות</strong>
                                    <p class="small text-muted mb-0">קטגוריית פעילות</p>
                                    <p class="small"><span class="badge badge-light text-muted">עיר</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-success mr-1"></span>פעיל </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->

                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="./assets/avatars/face-5.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Higgins Uriah</strong>
                                    <p class="small text-muted mb-0">Suspendisse LLC</p>
                                    <p class="small"><span class="badge badge-light text-muted">Canada</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-success mr-1"></span>Online </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->
                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="./assets/avatars/face-3.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Brown Asher</strong>
                                    <p class="small text-muted mb-0">Orci Luctus Et Inc.</p>
                                    <p class="small"><span class="badge badge-dark">USA</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-success mr-1"></span>Online </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->
                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="./assets/avatars/face-4.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Bass Wendy </strong>
                                    <p class="small text-muted mb-0">Accumsan Consulting</p>
                                    <p class="small"><span class="badge badge-light text-muted">New York, USA</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-success mr-1"></span>Online </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->
                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Leblanc Yoshio</strong>
                                    <p class="small text-muted mb-0">Tristique Ltd</p>
                                    <p class="small"><span class="badge badge-light text-muted">United Kingdom</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-secondary mr-1"></span>Offline </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->
                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="./assets/avatars/face-5.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Higgins Uriah</strong>
                                    <p class="small text-muted mb-0">Suspendisse LLC</p>
                                    <p class="small"><span class="badge badge-light text-muted">Canada</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-success mr-1"></span>Online </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->
                    <div class="col-md-3">
                        <div class="card shadow mb-4">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">
                                    <a href="">
                                        <img src="./assets/avatars/face-3.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>
                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Brown Asher</strong>
                                    <p class="small text-muted mb-0">Orci Luctus Et Inc.</p>
                                    <p class="small"><span class="badge badge-dark">USA</span></p>
                                </div>
                            </div>
                            <!-- ./card-text -->
                            <div class="card-footer">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto">
                                        <small>
                                            <span class="dot dot-lg bg-success mr-1"></span>Online </small>
                                    </div>
                                    <div class="col-auto">
                                        <div class="file-action">
                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="text-muted sr-only">Action</span>
                                            </button>
                                            <div class="dropdown-menu m-2">
                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                    </div>
                    <!-- .col -->
                    <div class="col-md-9">
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
                <nav aria-label="Table Paging" class="my-3">
                    <ul class="pagination justify-content-end mb-0">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>
            </div>
            <!-- .col-12 -->
        </div>
        <!-- .row -->
    </div>
    <!-- .container-fluid -->
    <div class="modal fade modal-notif modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="defaultModalLabel">Notifications</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="list-group list-group-flush my-n3">
                        <div class="list-group-item bg-transparent">
                            <div class="row align-items-center">
                                <div class="col-auto">
                                    <span class="fe fe-box fe-24"></span>
                                </div>
                                <div class="col">
                                    <small><strong>Package has uploaded successfull</strong></small>
                                    <div class="my-0 text-muted small">Package is zipped and uploaded</div>
                                    <small class="badge badge-pill badge-light text-muted">1m ago</small>
                                </div>
                            </div>
                        </div>
                        <div class="list-group-item bg-transparent">
                            <div class="row align-items-center">
                                <div class="col-auto">
                                    <span class="fe fe-download fe-24"></span>
                                </div>
                                <div class="col">
                                    <small><strong>Widgets are updated successfull</strong></small>
                                    <div class="my-0 text-muted small">Just create new layout Index, form, table</div>
                                    <small class="badge badge-pill badge-light text-muted">2m ago</small>
                                </div>
                            </div>
                        </div>
                        <div class="list-group-item bg-transparent">
                            <div class="row align-items-center">
                                <div class="col-auto">
                                    <span class="fe fe-inbox fe-24"></span>
                                </div>
                                <div class="col">
                                    <small><strong>Notifications have been sent</strong></small>
                                    <div class="my-0 text-muted small">Fusce dapibus, tellus ac cursus commodo</div>
                                    <small class="badge badge-pill badge-light text-muted">30m ago</small>
                                </div>
                            </div>
                            <!-- / .row -->
                        </div>
                        <div class="list-group-item bg-transparent">
                            <div class="row align-items-center">
                                <div class="col-auto">
                                    <span class="fe fe-link fe-24"></span>
                                </div>
                                <div class="col">
                                    <small><strong>Link was attached to menu</strong></small>
                                    <div class="my-0 text-muted small">New layout has been attached to the menu</div>
                                    <small class="badge badge-pill badge-light text-muted">1h ago</small>
                                </div>
                            </div>
                        </div>
                        <!-- / .row -->
                    </div>
                    <!-- / .list-group -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-block" data-dismiss="modal">Clear All</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade modal-shortcut modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="defaultModalLabel">Shortcuts</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body px-5">
                    <div class="row align-items-center">
                        <div class="col-6 text-center">
                            <div class="squircle bg-success justify-content-center">
                                <i class="fe fe-cpu fe-32 align-self-center text-white"></i>
                            </div>
                            <p>Control area</p>
                        </div>
                        <div class="col-6 text-center">
                            <div class="squircle bg-primary justify-content-center">
                                <i class="fe fe-activity fe-32 align-self-center text-white"></i>
                            </div>
                            <p>Activity</p>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-6 text-center">
                            <div class="squircle bg-primary justify-content-center">
                                <i class="fe fe-droplet fe-32 align-self-center text-white"></i>
                            </div>
                            <p>Droplet</p>
                        </div>
                        <div class="col-6 text-center">
                            <div class="squircle bg-primary justify-content-center">
                                <i class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
                            </div>
                            <p>Upload</p>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-6 text-center">
                            <div class="squircle bg-primary justify-content-center">
                                <i class="fe fe-users fe-32 align-self-center text-white"></i>
                            </div>
                            <p>Users</p>
                        </div>
                        <div class="col-6 text-center">
                            <div class="squircle bg-primary justify-content-center">
                                <i class="fe fe-settings fe-32 align-self-center text-white"></i>
                            </div>
                            <p>Settings</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">


                <h2 class="page-title">רשימת פעילויות</h2>
                <p class="text-muted">כל הפעילויות, הפעילות בהווה, אשר ניתן להצטרף אליהם.</p>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card shadow mb-4">
                            <div class="card-header">
                                <strong class="card-title">פרטי משימה</strong>
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
                                            <label for="MaxParticipants">מקסימום משתתפים</label>
                                            <asp:TextBox ID="TxtMaxParticipants" runat="server" class="form-control" />
                                            <small id="MaxParticipantsHelp" class="form-text text-muted">שדה רשות.</small>

                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="Description">תיאור פעילות</label>
                                            <asp:TextBox ID="TxtDescription" runat="server" class="form-control" placeholder="תיאור מפורט של מטרת הפעילות והאופן בו היא תנוהל" />
                                            <span class="help-block"><small></small></span>
                                            <small id="DescriptionHelp" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
                                        </div>
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-md-6">
                                        <div class="form-group mb-3">
                                            <label for="Category">קטגוריה</label>
                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" />
                                            <small id="CategoryHelp" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="Guarantor">אחראי</label>
                                            <asp:TextBox ID="TxtGuarantor" runat="server" class="form-control" placeholder="שדה רשות" />
                                            <small id="GuarantorHelp" class="form-text text-muted">שדה זה אינו יכול להישאר ריק.</small>
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
    </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
</asp:Content>
