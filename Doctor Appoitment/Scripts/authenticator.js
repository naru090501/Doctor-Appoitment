$(document).ready(function () {
    $("#txtotp1").focus();
    $("#txtotp1").on("input", function () {
        if ($("#txtotp1").val() != "") {
            $("#txtotp2").focus();
        }
    });
    $("#txtotp2").on("input", function () {
        if ($("#txtotp2").val() != "") {
            $("#txtotp3").focus();
        }
    });
    $("#txtotp3").on("input", function () {
        if ($("#txtotp3").val() != "") {
            $("#txtotp4").focus();
        }
    });
    $("#txtotp4").on("input", function () {
        if ($("#txtotp4").val() != "") {
            $("#txtotp5").focus();
        }
    });
    $("#txtotp5").on("input", function () {
        if ($("#txtotp5").val() != "") {
            $("#txtotp6").focus();
        }
    });
    $("#txtotp6").on("input", function () {
        if ($("#txtotp6").val() != "") {
            $("#btnconfotp").focus();
        }
    });

    $("#btnconfotp").click(function () {
        $("#updateprogress").css("display", "block");
    });
    
});