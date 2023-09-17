<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="Doctor_Appoitment.Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MeDiLife</title>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/googlefonts.css" rel="stylesheet" />
        <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Audiowide|Sofia|Trirong" />--%>
    <link href="CSS/landing.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body style="user-select:none;">
    <form id="form1" runat="server">
        <div class='dashboard'>
            <div class="dashboard-nav">
                <header>
                    <a href="#!" class="menu-toggle">
                        <i class="fa fa-bars"></i>
                    </a>
                    <a href="Landing.aspx" class="brand-logo">
                        <%--<i class="fa fa-anchor"></i>
                        <span>BRAND</span>--%>
                        <img class="rounded-circle" alt="avatar2" src="https://mdbcdn.b-cdn.net/img/new/avatars/1.webp" style="-webkit-user-drag: none;"/>
                        <div class="middle">
                            <div class="text text-center"><i class="fa fa-pencil m-0" aria-hidden="true"></i></div>
                        </div>
                        <span>Dr. John Doe</span>
                    </a>

                </header>
                <div class="nav-item-divider">
                </div>
                <nav class="dashboard-nav-list" runat="server" id="menulink">
                    
                </nav>
            </div>
            <div class='dashboard-app'>
                <header class='dashboard-toolbar fw-bold'><a href="#!" class="menu-toggle"><i class="fa fa-bars"></i></a> NDAPP</header>
                <div class='dashboard-content'>
                    <div class='container m-0 w-100'>
                        <div class='card'>
                            <div class='card-header'>
                                <span runat="server" id="h1header" class="text-uppercase"></span>
                            </div>
                            <div class='card-body'>
                                <%--<p>Your account type is: Administrator</p>--%>
                                <div class="row">
                                    <div class="col-lg-4" runat="server" id="divlogin">
                                        
                                    </div>
                                    <div class="col-lg-8 d-flex justify-content-center">
                                        <img src="images/landingp1_1.svg" style="height:300px;-webkit-user-drag: none;"/> 
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="position-relative">
                                            <canvas id="pieChart7"></canvas>
                                            <div class="position-absolute position-center text-center pt-5">
                                                <h1 class="fw-bold text-uppercase mb-0">$124k</h1>
                                                <p class="text-muted text-uppercase mb-0">Toral expense</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-2 px-2 px-xl-5 bg-primary" style="position: sticky; bottom: 0;">
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
                        <a href="#!" class="text-white me-4">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="#!" class="text-white me-4">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="#!" class="text-white me-4">
                            <i class="fa fa-google"></i>
                        </a>
                        <a href="#!" class="text-white">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </div>
                    <!-- Right -->
                </div>
            </div>
        </div>
        <asp:Button CssClass="d-none" runat="server" ID="btnsignout" OnClick="btnsignout_Click"/>   
        <asp:HiddenField runat="server" ID="hdnlid" />
        <asp:HiddenField runat="server" ID="hdnldt" />
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
<script src="Scripts/popper.min.js"></script>
<script src="Scripts/bootstrap-4.5.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"  ></script>

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>

<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<script src="Scripts/sweetalert.min.js"></script>
    <script src="Scripts/landing.js"></script>
</body>
</html>
