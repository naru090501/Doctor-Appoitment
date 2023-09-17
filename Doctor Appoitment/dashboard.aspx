<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Doctor_Appoitment.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Audiowide|Sofia|Trirong" />
    <link href="CSS/landing.css" rel="stylesheet" />
</head>
<body>
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
            <%--<a href="#" class="dashboard-nav-item">
                <i class="fa fa-home"></i>
                Home </a>
            <a href="#" class="dashboard-nav-item active">
                <i class="fa fa-tachometer-alt"></i>
                dashboard
                </a>
            <a href="#" class="dashboard-nav-item">
                <i class="fa fa-file-upload"></i>
                Upload 

            </a>
            <div class='dashboard-nav-dropdown'>
                <a href="#!" class="dashboard-nav-item dashboard-nav-dropdown-toggle"><i class="fa fa-photo-video"></i>Media </a>
                <div class='dashboard-nav-dropdown-menu'>
                    <a href="#" class="dashboard-nav-dropdown-item">All</a>
                    <a href="#" class="dashboard-nav-dropdown-item">Recent</a>
                    <a href="#" class="dashboard-nav-dropdown-item">Images</a>
                    <a href="#" class="dashboard-nav-dropdown-item">Video</a>

                </div>
            </div>
            <div class='dashboard-nav-dropdown'>
                <a href="#!" class="dashboard-nav-item dashboard-nav-dropdown-toggle">
                    <i class="fa fa-users"></i>Users </a>
                <div class='dashboard-nav-dropdown-menu'>
                    <a href="#" class="dashboard-nav-dropdown-item">All</a>
                    <a href="#" class="dashboard-nav-dropdown-item">Subscribed</a>
                    <a href="#" class="dashboard-nav-dropdown-item">Non-subscribed</a>
                    <a href="#" class="dashboard-nav-dropdown-item">Banned</a>
                    <a href="#" class="dashboard-nav-dropdown-item">New</a>

                </div>
            </div>
            <div class='dashboard-nav-dropdown'>
                <a href="#!" class="dashboard-nav-item dashboard-nav-dropdown-toggle">
                    <i class="fa fa-money-check-alt"></i>Payments 

                </a>
                <div class='dashboard-nav-dropdown-menu'>
                    <a href="#" class="dashboard-nav-dropdown-item">All</a>
                    <a href="#" class="dashboard-nav-dropdown-item">Recent</a>
                    <a href="#" class="dashboard-nav-dropdown-item"> Projections</a>
                </div>
            </div>
            <a href="#" class="dashboard-nav-item">
                <i class="fa fa-cogs"></i>Settings 

            </a>
            <a href="#" class="dashboard-nav-item">
                <i class="fa fa-user"></i>Profile 

            </a>
            <div class="nav-item-divider">

            </div>
            <a href="#" class="dashboard-nav-item">
                <i class="fa fa-sign-out-alt"></i>
                Logout </a>--%>
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
                        
                    </div>
                </div>
            </div>
        </div>
        <div
            class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-2 px-2 px-xl-5 bg-primary" style="position:sticky;bottom:0;">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="Scripts/sweetalert.min.js"></script>
<script src="Scripts/landing.js"></script>
</body>
</html>
