<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Doctor_Appoitment.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Audiowide|Sofia|Trirong" />
    <style>
        .divider:after,
        .divider:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee;
        }

        .h-custom {
            height: calc(100% - 40px);
        }

        @media (max-width: 450px) {
            .h-custom {
                height: 100%;
            }
        }

        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
        }

        input[type=number] {
            -moz-appearance: textfield;
        }

        .width40 {
            width: 40px;
        }

        form {
            background: url(images/bg2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            color:#fff;
        }

        .newback {
            background: hsla(96, 94%, 100%, 0.35);
            backdrop-filter: blur(10px);
            padding: 30px;
            
            border: 2px solid hsla(96, 94%, 100%, 0.35);
        }
        .swal-footer{
            text-align:center !important;
        }
        .swal-modal{
            background:hsla(96, 94%, 100%, 0.35) !important;
            backdrop-filter:blur(15px);
            border: 2px solid hsla(96, 94%, 100%, 0.35);
            border-radius:20px !important;
        }
    </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    

</head>
<body>
    <%--Section: Design Block--%>
    <form runat="server" id="loginform">
        <asp:ScriptManager runat="server" EnablePageMethods="true" EnablePartialRendering="true"></asp:ScriptManager>
        <asp:UpdatePanel ID="mainupdatepanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="vh-100">
                    <div class="container-fluid h-custom">
                        <div class="row d-flex justify-content-center align-items-center h-100 newback">
                            <div class="col-md-9 col-lg-6 col-xl-5">
                                <%--<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid" alt="Sample image" />--%>
                                <img src="images/draw2.png" class="img-fluid" alt="Sample image" />
                            </div>
                            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                                <div class="d-flex flex-row align-items-center justify-content-between justify-content-lg-between">
                                    <p class="lead fw-normal mb-0 me-3">Sign in with</p>
                                    <div>
                                        <button type="button" id="btnFBLogin" class="btn btn-primary btn-floating mx-1 width40">
                                            <i class="fa fa-facebook"></i>
                                        </button>

                                        <button type="button" id="btnGLogin" class="btn btn-primary btn-floating mx-1 width40">
                                            <i class="fa fa-google"></i>
                                        </button>

                                        <button type="button" id="btnTLogin" class="btn btn-primary btn-floating mx-1 width40">
                                            <i class="fa fa-twitter"></i>
                                        </button>

                                        <button type="button" id="btnGHLogin" class="btn btn-primary btn-floating mx-1 width40">
                                            <i class="fa fa-github"></i>
                                        </button>
                                    </div>
                                </div>

                                <div class="divider d-flex align-items-center my-4">
                                    <p class="text-center fw-bold mx-3 mb-0">Or</p>
                                </div>

                                <div class="form-outline mb-4">
                                    <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start" id="divuname">
                                        <input type="checkbox" id="RadUname" class="form-control" name="uname" runat="server" checked="checked" />
                                        <label class="form-label" for="RadUname">Login</label>

                                        <input type="checkbox" id="RadEmail" class="form-control" name="uname" runat="server" />
                                        <label class="form-label" for="RadEmail">Email</label>

                                        <input type="checkbox" id="RadPass" class="form-control" name="uname" runat="server" />
                                        <label class="form-label" for="RadPass">Mobile</label>
                                    </div>
                                </div>

                                <!-- Login input -->
                                <div class="form-outline mb-4" id="divlogintext">
                                    <label class="form-label" for="txtLogin">Login</label>
                                    <input type="text" id="txtLogin" class="form-control form-control-lg"
                                        placeholder="Login" runat="server" />
                                </div>

                                <!-- Email input -->
                                <div class="form-outline mb-4  d-none" id="divemailtext">
                                    <label class="form-label" for="txtEmail">Email</label>
                                    <input type="email" id="txtEmail" class="form-control form-control-lg"
                                        placeholder="Email" runat="server" />
                                </div>

                                <!-- Mobile input -->
                                <div class="form-outline mb-4  d-none" id="divmobiletext">
                                    <label class="form-label" for="txtMobile">Mobile</label>
                                    <input type="number" id="txtMobile" class="form-control form-control-lg"
                                        placeholder="Mobile" maxlength="10" runat="server" />
                                </div>

                                <!-- Password input -->
                                <div class="form-outline mb-3">
                                    <label class="form-label" for="txtPassword">Password</label>
                                    <input type="password" id="txtPassword" class="form-control form-control-lg"
                                        placeholder="Password" runat="server" />
                                </div>

                                <div class="d-flex justify-content-between align-items-center">
                                    <!-- Checkbox -->
                                    <div class="form-check mb-0">
                                        <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                        <label class="form-check-label" for="form2Example3">
                                            Remember me
                                        </label>
                                    </div>
                                    <a href="#!" class="text-white">Forgot password?</a>
                                </div>

                                <div class="text-center text-lg-start mt-4 pt-2">

                                    <asp:Label runat="server" ID="lblmsg"></asp:Label>
                                    <asp:Button runat="server" ID="btnlogin" CssClass="btn btn-primary btn-lg w-100" Style="padding-left: 2.5rem; padding-right: 2.5rem;" Text="Login" OnClick="btnlogin_Click" />

                                    <p class="small fw-bold mt-2 pt-1 mb-0">
                                        Don't have an account? <a href="Register.aspx"
                                            class="link-danger">Register</a>
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-2 px-2 px-xl-5 bg-primary" style="position: fixed; bottom: 0; width: 100%;">
                        <div class="text-white mb-3 mb-md-0">
                            Designed By <a class="text-white fw-bold" href="https://in.linkedin.com/in/narendra-dhakne-512995157">Narendra Dhakne</a>
                        </div>
                        <!-- Copyright -->
                        <div class="text-white mb-3 mb-md-0">
                            Copyright © 2023. All rights reserved.
                        </div>
                        <!-- Copyright -->

                        <!-- Right -->
                        <div>
                            <a href="#!" class="text-white me-4 text-decoration-none">
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a href="#!" class="text-white me-4 text-decoration-none">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a href="#!" class="text-white me-4 text-decoration-none">
                                <i class="fa fa-google"></i>
                            </a>
                            <a href="#!" class="text-white text-decoration-none">
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </div>
                        <!-- Right -->
                    </div>
                </section>
                <script>
                    $(document).ready(function () {
                        if($("#RadUname").prop("checked")==true){
                            $("#txtLogin").focus();
                        }
                        if($("#RadEmail").prop("checked")==true){
                            $("#txtEmail").focus();
                        }
                        if($("#RadPass").prop("checked")==true){
                            $("#txtMobile").focus();
                        }
                        $(document).on('change', '#divuname > input[type="checkbox"]', function () {
                            $('input[name="' + this.name + '"]').not(this).prop('checked', false);
                            if ($(this).attr("id") == "RadUname") {
                                if ($(this).prop("checked", true)) {

                                    $('#RadEmail').prop("checked", false);
                                    $('#RadPass').prop("checked", false);
                                    $("#divlogintext").removeClass("d-none");
                                    $("#divemailtext").addClass("d-none");
                                    $("#divmobiletext").addClass("d-none");
                                    $("#lblmsg").text("");
                                    $("#txtLogin").focus();
                                }
                            }
                            else if ($(this).attr("id") == "RadEmail") {
                                if ($(this).prop("checked", true)) {
                                    $('#RadUname').prop("checked", false);
                                    $('#RadPass').prop("checked", false);
                                    $("#divlogintext").addClass("d-none");
                                    $("#divemailtext").removeClass("d-none");
                                    $("#divmobiletext").addClass("d-none");
                                    $("#lblmsg").text("");
                                    $("#txtEmail").focus();
                                }
                            }
                            else {
                                if ($(this).prop("checked", true)) {
                                    $('#RadUname').prop("checked", false);
                                    $('#RadEmail').prop("checked", false);
                                    $("#divlogintext").addClass("d-none");
                                    $("#divemailtext").addClass("d-none");
                                    $("#divmobiletext").removeClass("d-none");
                                    $("#lblmsg").text("");
                                    $("#txtMobile").focus();
                                }
                            }
                        });
                        $(document).on("input", "#txtLogin", function () {
                            $("#lblmsg").text("");
                        });
                        $(document).on("input", "#txtEmail", function () {
                            $("#lblmsg").text("");
                        });
                        $(document).on("input", "#txtMobile", function () {
                            $("#lblmsg").text("");
                        });

                        $(document).on("click", "#btnFBLogin",function () {
                            swal("Facebook Login.", "This Feature is comming Soon!", {
                                icon: "info",
                                buttons: {
                                    confirm: {
                                        className: 'btn btn-info'
                                    }
                                },
                            });
                        });
                        
                        $(document).on("click", "#btnGLogin",function () {
                            swal("Google Login.", "This Feature is comming Soon!", {
                                icon: "info",
                                buttons: {
                                    confirm: {
                                        className: 'btn btn-info'
                                    }
                                },
                            });
                        });
                        
                        $(document).on("click", "#btnTLogin",function () {
                            swal("Twitter Login.", "This Feature is comming Soon!", {
                                icon: "info",
                                buttons: {
                                    confirm: {
                                        className: 'btn btn-info'
                                    }
                                },
                            });
                        });
                        
                        $(document).on("click", "#btnGHLogin",function () {
                            swal("GitHub Login.", "This Feature is comming Soon!", {
                                icon: "info",
                                buttons: {
                                    confirm: {
                                        className: 'btn btn-info'
                                    }
                                },
                            });
                        });

                        $(document).on("click", ".swal-button", function () {
                            $('#divuname > input[type="checkbox"]').each(function () {
                                if ($(this).attr("id") == "RadUname") {
                                    if ($(this).prop("checked")==true) {
                                        $("#divlogintext").removeClass("d-none");
                                        $("#divemailtext").addClass("d-none");
                                        $("#divmobiletext").addClass("d-none");
                                        $("#txtLogin").focus();
                                        return false;
                                    }
                                }
                                else if ($(this).attr("id") == "RadEmail") {
                                    if ($(this).prop("checked")==true) {
                                        $("#divlogintext").addClass("d-none");
                                        $("#divemailtext").removeClass("d-none");
                                        $("#divmobiletext").addClass("d-none");
                                        $("#txtEmail").focus();
                                        return false;
                                    }
                                }
                                else {
                                    if ($(this).prop("checked")==true) {
                                        $("#divlogintext").addClass("d-none");
                                        $("#divemailtext").addClass("d-none");
                                        $("#divmobiletext").removeClass("d-none");
                                        $("#txtMobile").focus();
                                        return false;
                                    }

                                }
                            });
                        });
                        
                    });
                </script>
                
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </form>
        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="Scripts/sweetalert.min.js"></script>
    <script>
        function empty() {
            swal("Warning", "Please Enter Login Credentials!", {
                icon: "warning",
                buttons: {
                    confirm: {
                        className: 'btn btn-warning'
                    }
                },
            });
        }
        function nufount() {
            swal("Warning", "No User found! Register now.", {
                icon: "warning",
                buttons: {
                    confirm: {
                        className: 'btn btn-warning'
                    }
                },
            });
        }
        function invalid() {
            swal("Error!", "Invalid Username/Password!", {
                icon: "error",
                buttons: {
                    confirm: {
                        className: 'btn btn-danger'
                    }
                },
            });
        }
        function expiredlog() {
            swal("Error!", "Login Expired!", {
                icon: "error",
                buttons: {
                    confirm: {
                        className: 'btn btn-danger'
                    }
                },
            });
        }
    </script>
</body>
</html>
