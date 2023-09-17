<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authenticator.aspx.cs" Inherits="Doctor_Appoitment.Authenticator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/googlefonts.css" rel="stylesheet" />
        <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Audiowide|Sofia|Trirong" />--%>
    <link href="CSS/authenticator.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" EnablePageMethods="true" EnablePartialRendering="true"></asp:ScriptManager>
        

        <asp:UpdatePanel runat="server" ID="upauth" ChildrenAsTriggers="true" UpdateMode="Conditional">
            <ContentTemplate>
                <section class="vh-100">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-xl-12">
                                <asp:Label CssClass="fw-bold" runat="server" ID="authtitle" Text="NDAPP" style="font-size:23px;color:#0d6efd;"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="container d-flex align-items-center justify-content-center" style="min-height:100vh;">
                        <%--<br />--%>
                        <div class="row">
                            <div class="col-lg-5 col-md-7 mx-auto my-auto">
                                <div class="card">
                                    <div class="card-body px-lg-5 py-lg-5 text-center">

                                        <img src="images/avatar7.png" class="rounded-circle avatar-lg img-thumbnail mb-4" style="-webkit-user-drag: none;" alt="profile-image" />
                                        <h2 class="text-info">Your Trusted Google Account</h2>
                                        <p class="mb-4">Enter 6-digits code from your Authenticator app.</p>

                                        <div class="row mb-4">
                                            <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                                <input type="text" class="form-control text-lg text-center" id="txtotp1" maxlength="1" placeholder="-" aria-label="2fa" />
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                                <input type="text" class="form-control text-lg text-center" id="txtotp2" maxlength="1" placeholder="-" aria-label="2fa" />
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                                <input type="text" class="form-control text-lg text-center" id="txtotp3" maxlength="1" placeholder="-" aria-label="2fa" />
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-2 pe-0 pe-md-2">
                                                <input type="text" class="form-control text-lg text-center" id="txtotp4" maxlength="1" placeholder="-" aria-label="2fa" />
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-2 pe-0 pe-md-2">
                                                <input type="text" class="form-control text-lg text-center" id="txtotp5" maxlength="1" placeholder="-" aria-label="2fa" />
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-2 pe-0 pe-md-2">
                                                <input type="text" class="form-control text-lg text-center" id="txtotp6" maxlength="1" placeholder="-" aria-label="2fa" />
                                            </div>
                                        </div>
                                        <p class="mb-4" runat="server" id="lblmessage"></p>
                                        <div class="text-center">
                                            <asp:Button runat="server" class="btn bg-info btn-lg my-4" id="btnconfotp" Text="Continue"/>
                                        </div>

                                    </div>
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
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress runat="server" ID="updateprogress">
            <ProgressTemplate>
                <div class="uprogress">
                    <div class='container'>
                        <div class='loader'>
                            <div class='loader--dot'></div>
                            <div class='loader--dot'></div>
                            <div class='loader--dot'></div>
                            <div class='loader--dot'></div>
                            <div class='loader--dot'></div>
                            <div class='loader--dot'></div>
                            <div class='loader--text'></div>
                        </div>
                    </div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap-4.5.2.min.js"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>

    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
    <script src="Scripts/sweetalert.min.js"></script>
    <script src="Scripts/authenticator.js"></script>
</body>
</html>
