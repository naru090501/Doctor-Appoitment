<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Doctor_Appoitment.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
         <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/googlefonts.css" rel="stylesheet" />
        <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Audiowide|Sofia|Trirong" />--%>
    <style>
        section {
            background: rgb(131,58,180);
            background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%);
        }

        .cascading-right {
            margin-right: -50px;
        }

        @media (max-width: 991.98px) {
            .cascading-right {
                margin-right: 0;
            }
        }

        body::-webkit-scrollbar {
            width: 2px;
            height: 2px;
        }

        body::-webkit-scrollbar-button {
            width: 0px;
            height: 0px;
        }

        body::-webkit-scrollbar-thumb {
            background: #e1e1e1;
            border: 0px none #ffffff;
            border-radius: 50px;
        }

            body::-webkit-scrollbar-thumb:hover {
                background: #ffffff;
            }

            body::-webkit-scrollbar-thumb:active {
                background: #000000;
            }

        body::-webkit-scrollbar-track {
            background: #666666;
            border: 0px none #ffffff;
            border-radius: 50px;
        }

            body::-webkit-scrollbar-track:hover {
                background: #666666;
            }

            body::-webkit-scrollbar-track:active {
                background: #333333;
            }

        body::-webkit-scrollbar-corner {
            background: transparent;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
        }

        input[type=number] {
            -moz-appearance: textfield;
        }

        #txtfname, #txtlname{
            text-transform:capitalize;
        }
        .swal-footer {
            text-align: center !important;
        }
        .swal-modal {
            background: hsla(96, 94%, 100%, 0.35) !important;
            backdrop-filter: blur(15px);
            border: 2px solid hsla(96, 94%, 100%, 0.35);
            border-radius: 20px !important;
        }
        .form-outline {
            text-align: left !important;
        }
    </style>

</head>
<body>
    <!-- Section: Design Block -->
    <section class="text-lg-start">


        <!-- Jumbotron -->
        <div class="container py-4">
            <div class="row g-0 align-items-center">
                <div class="col-lg-6 mb-5 mb-lg-0" style="z-index:100;">
                    <div class="card cascading-right" style="background: hsla(96, 94%, 100%, 0.35);backdrop-filter: blur(10px);border: 2px solid hsla(96, 94%, 100%, 0.35);border-radius: 20px;">
                        <div class="card-body p-5 shadow-5 text-center text-white">
                            <h2 class="fw-bold mb-5 text-uppercase" style="letter-spacing:15px;">Sign up</h2>
                            <form runat="server" class="text-left">
                                <!-- 2 column grid layout with text inputs for the first and last names -->
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline d-flex flex-column">
                                            <label class="form-label" for="txtfname" style="text-align:left !important;">First name</label>
                                            <input type="text" id="txtfname" placeholder="First Name" class="form-control" runat="server" required="required"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="txtlname" style="text-align:left !important;">Last name</label>
                                            <input type="text" id="txtlname" placeholder="Last Name" class="form-control" runat="server" required="required"/>
                                        </div>
                                    </div>
                                </div>

                                <!-- Email input -->
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="txtemail" style="text-align:left">Email</label>
                                    <input type="email" id="txtemail" placeholder="Email" class="form-control" runat="server" required="required" />
                                </div>
                                
                                <!-- mobile input -->
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="txtMobile" style="text-align:left">Mobile</label>
                                    <input type="number" id="txtMobile" placeholder="Mobile" class="form-control" runat="server" required="required" />
                                </div>

                                <!-- Password input -->
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="txtpass" style="text-align:left">Password</label>
                                    <input type="password" id="txtpass" placeholder="Password" class="form-control" runat="server" required="required" />
                                </div>

                                <!-- Checkbox -->
                                <div class="form-check d-flex mb-4">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="chknletter" checked="checked" runat="server" />
                                    <label class="form-check-label" for="chknletter">Subscribe to our newsletter</label>
                                </div>

                                <div class="d-flex mb-4 justify-content-between">
                                    <!-- Submit button -->
                                    <%--<button type="submit" class="btn btn-primary mb-4">
                                        Sign up
                                    </button>--%>
                                    <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-primary mb-4" OnClick="btnRegister_Click" Text="Sign up"/>

                                    <!-- Login button -->
                                    <a href="index.aspx" class="btn btn-primary mb-4">Login
                                    </a>
                                </div>
                                
                                <hr style="border:2px solid #fff;" />
                                
                                <!-- Register buttons -->
                                <div class="text-center">
                                    <p>or sign up with:</p>
                                    <button type="button" id="btnFBLogin" class="btn btn-link btn-floating mx-1">
                                        <i class="fa fa-facebook"></i>
                                    </button>

                                    <button type="button" id="btnGLogin" class="btn btn-link btn-floating mx-1">
                                        <i class="fa fa-google"></i>
                                    </button>

                                    <button type="button" id="btnTLogin" class="btn btn-link btn-floating mx-1">
                                        <i class="fa fa-twitter"></i>
                                    </button>

                                    <button type="button" id="btnGHLogin" class="btn btn-link btn-floating mx-1">
                                        <i class="fa fa-github"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 mb-5 mb-lg-0" style="z-index:99;">
                    <img src="images/004.jpg" class="w-100 rounded-4 shadow-4"
                        alt="" style="border-radius:20px;"/>
                </div>
            </div>
        </div>
        <!-- Jumbotron -->
        <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-2 px-2 px-xl-5 bg-primary" style="position: fixed; bottom: 0; width: 100%;z-index:900">
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
    <!-- Section: Design Block -->
    <script>
        $(document).ready(function(){
            $(document).on("click", "#btnFBLogin", function () {
                swal("Facebook Login.", "This Feature is comming Soon!", {
                    icon: "info",
                    buttons: {
                        confirm: {
                            className: 'btn btn-info'
                        }
                    },
                });
            });

            $(document).on("click", "#btnGLogin", function () {
                swal("Google Login.", "This Feature is comming Soon!", {
                    icon: "info",
                    buttons: {
                        confirm: {
                            className: 'btn btn-info'
                        }
                    },
                });
            });

            $(document).on("click", "#btnTLogin", function () {
                swal("Twitter Login.", "This Feature is comming Soon!", {
                    icon: "info",
                    buttons: {
                        confirm: {
                            className: 'btn btn-info'
                        }
                    },
                });
            });

            $(document).on("click", "#btnGHLogin", function () {
                swal("GitHub Login.", "This Feature is comming Soon!", {
                    icon: "info",
                    buttons: {
                        confirm: {
                            className: 'btn btn-info'
                        }
                    },
                });
            });
            function alreadyexist() {
                swal("Error.", "Record Already Exist!", {
                    icon: "error",
                    buttons: {
                        confirm: {
                            className: 'btn btn-info'
                        }
                    },
                });
            }
        });
    </script>
                <script src="Scripts/jquery-3.5.1.min.js"></script>
<script src="Scripts/popper.min.js"></script>
<script src="Scripts/bootstrap-4.5.2.min.js"></script>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>

<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<script src="Scripts/sweetalert.min.js"></script>
</body>
</html>
