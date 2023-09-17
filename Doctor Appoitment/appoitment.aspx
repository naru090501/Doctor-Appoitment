<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appoitment.aspx.cs" Inherits="Doctor_Appoitment.appoitment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/googlefonts.css" rel="stylesheet" />
        <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Audiowide|Sofia|Trirong" />--%>
    <link href="CSS/landing.css" rel="stylesheet" />
    <link href="CSS/appoitment.css" rel="stylesheet" />
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
                        <img class="rounded-circle" alt="avatar2" src="https://mdbcdn.b-cdn.net/img/new/avatars/1.webp" style="-webkit-user-drag: none;" />
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
                <header class='dashboard-toolbar fw-bold'><a href="#!" class="menu-toggle"><i class="fa fa-bars"></i></a>NDAPP</header>
                <div class='dashboard-content'>
                    <div class='container m-0 w-100'>
                        <div class='card'>
                            <div class='card-header'>
                                <h4 runat="server" id="h1header" class="text-uppercase">book your appoitment</h4>
                            </div>
                            <div class='card-body'>
                                <%--<p>Your account type is: Administrator</p>--%>
                                <div class="container mt-4 p-4">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h2 class="text-center my-4">Find Consultations
                                            </h2>
                                            <form>
                                                <div class="form-group row">
                                                    <label class="col-sm-4 col-lg-4">
                                                        Patient Name
                                                    </label>
                                                    <div class="col-sm-8 col-lg-8">
                                                        <input type="text" id="patient-name" class="form-control"
                                                            placeholder="Name" required="required" />
                                                    </div>
                                                </div>
                                                <!---->
                                                <div class="form-group row">
                                                    <label class="col-sm-4 col-lg-4">
                                                        Contact
                                                    </label>
                                                    <div class="col-sm-8 col-lg-8">
                                                        <input type="tel" id="contact" class="form-control"
                                                            placeholder="123" required="required" />
                                                    </div>
                                                </div>
                                                <!---->
                                                <div class="form-group row">
                                                    <label class="col-sm-4 col-lg-4">
                                                        Date
                                                    </label>
                                                    <div class="col-sm-8 col-lg-8">
                                                        <input type="date" id="date" class="form-control" />
                                                    </div>
                                                </div>
                                                <!---->
                                                <div class="form-group row">
                                                    <label class="col-sm-4 col-lg-4">
                                                        Time
                                                    </label>
                                                    <div class="col-sm-8 col-lg-8">
                                                        <input type="time" id="time" class="form-control" />
                                                    </div>
                                                </div>
                                                <!---->
                                                <div class="form-group row">
                                                    <label class="col-sm-4 col-lg-4">
                                                        Symptoms
                                                    </label>
                                                    <div class="col-sm-8 col-lg-8">
                                                        <textarea id="symptoms" class="form-control" required="required" /></textarea>
                                                    </div>
                                                </div>
                                                <!---->
                                                <div class="form-group row justify-content-end">
                                                    <div class="col-sm-5">
                                                        <button type="submit" class="btn btn-form">
                                                            Confirm
                                                        </button>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="col-md-6">
                                            <h2 id="services" class="text-center my-4"></h2>
                                            <ul id="consultations" class="list-group"></ul>
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
        <asp:Button ID="btnsout" runat="server" CssClass="d-none" OnClick="btnsout_Click" />
        
        <asp:HiddenField runat="server" ID="hdnlid" />
        <asp:HiddenField runat="server" ID="hdnldt" />
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
<script src="Scripts/popper.min.js"></script>
<script src="Scripts/bootstrap-4.5.2.min.js"></script>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>

<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<script src="Scripts/sweetalert.min.js"></script>

    <script src="Scripts/appoitment.js"></script>
</body>
</html>
