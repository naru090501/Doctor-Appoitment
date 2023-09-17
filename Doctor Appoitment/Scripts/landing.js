const mobileScreen = window.matchMedia("(max-width: 990px )");
$(document).ready(function () {
    $(".dashboard-nav-dropdown-toggle").click(function () {
        $(this).closest(".dashboard-nav-dropdown")
            .toggleClass("show")
            .find(".dashboard-nav-dropdown")
            .removeClass("show");
        $(this).parent()
            .siblings()
            .removeClass("show");
    });
    $(".menu-toggle").click(function () {
        if (mobileScreen.matches) {
            $(".dashboard-nav").toggleClass("mobile-show");
        } else {
            $(".dashboard").toggleClass("dashboard-compact");
        }
    });
});

function signout() {
    //alert("signout");
    $("#btnsignout").click();
}


Chart.defaults.RoundedDoughnut = Chart.helpers.clone(Chart.defaults.doughnut);
Chart.controllers.RoundedDoughnut = Chart.controllers.doughnut.extend({
    draw: function (ease) {
        var ctx = this.chart.ctx;
        var easingDecimal = ease || 1;
        var arcs = this.getMeta().data;
        Chart.helpers.each(arcs, function (arc, i) {
            arc.transition(easingDecimal).draw();

            var pArc = arcs[i === 0 ? arcs.length - 1 : i - 1];
            var pColor = pArc._view.backgroundColor;

            var vm = arc._view;
            var radius = (vm.outerRadius + vm.innerRadius) / 2;
            var thickness = (vm.outerRadius - vm.innerRadius) / 2;
            var startAngle = Math.PI - vm.startAngle - Math.PI / 2;
            var angle = Math.PI - vm.endAngle - Math.PI / 2;

            ctx.save();
            ctx.translate(vm.x, vm.y);

            ctx.fillStyle = i === 0 ? vm.backgroundColor : pColor;
            ctx.beginPath();
            ctx.arc(radius * Math.sin(startAngle), radius * Math.cos(startAngle), thickness, 0, 2 * Math.PI);
            ctx.fill();

            ctx.fillStyle = vm.backgroundColor;
            ctx.beginPath();
            ctx.arc(radius * Math.sin(angle), radius * Math.cos(angle), thickness, 0, 2 * Math.PI);
            ctx.fill();

            ctx.restore();
        });
    }
});
var ctx7 = document.getElementById("pieChart7").getContext('2d');
var pieChart7 = new Chart(ctx7, {
    type: 'RoundedDoughnut',
    options: {
        cutoutPercentage: 92,
        borderAlign: 'center',
        animation: {
            duration: 2000,
            easing: 'linear'
        },
        legend: {
            position: 'top',
            labels: {
                padding: 10,
                fontStyle: 'italic',
                fontColor: '#333',
                usePointStyle: true,
            }
        },
    },
    data: {
        labels: [
            "First",
            "Second",
            "Third",
            "Fourth",
        ],
        datasets: [
            {
                data: [120, 50, 80, 140],
                borderWidth: 6,
                borderColor: '#fff',
                backgroundColor: [
                    '#f9d65c',
                    "#a9d876",
                    "#39be83",
                    "#0e8a73",
                ],
                hoverBackgroundColor: [
                    '#f9d65c',
                    "#a9d876",
                    "#39be83",
                    "#0e8a73",
                ]
            }]
    },
});