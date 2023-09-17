using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using Antlr.Runtime.Misc;

namespace Doctor_Appointment.App_Code
{
    public class GenerateLink
    {
        public static string generatemenuDoctor(string role,string pagelink)
        {
            
            StringBuilder generatemenu= new StringBuilder();
            if (pagelink == "Home")
                generatemenu.Append("<a href=\"Landing.aspx\" class=\"dashboard-nav-item active\">");
            else
                generatemenu.Append("<a href=\"Landing.aspx\" class=\"dashboard-nav-item\">");
            generatemenu.Append("<i class=\"fa fa-home\"></i>");
            generatemenu.Append("Home </a>");

            if (pagelink == "Dash")
                generatemenu.Append("<a href=\"dashboard.aspx\" class=\"dashboard-nav-item active\">");
            else
                generatemenu.Append("<a href=\"dashboard.aspx\" class=\"dashboard-nav-item\">");
            generatemenu.Append(" <i class=\"fa fa-tachometer-alt\"></i>");
            generatemenu.Append("Dashboard</a>");

            if (pagelink == "Appo")
                generatemenu.Append("<a href=\"appoitment.aspx\" class=\"dashboard-nav-item active\">");
            else 
                generatemenu.Append("<a href=\"appoitment.aspx\" class=\"dashboard-nav-item\">");
            generatemenu.Append("<i class=\"fa fa-file-upload\"></i>Appointments");
            generatemenu.Append("</a>");

            if (pagelink == "Rec" || pagelink == "Pay" || pagelink == "Med" | pagelink == "Inv")
                generatemenu.Append("<div class='dashboard-nav-dropdown show'>");
            else
                generatemenu.Append("<div class='dashboard-nav-dropdown'>");
            generatemenu.Append("<a href=\"#!\" class=\"dashboard-nav-item dashboard-nav-dropdown-toggle\"><i class=\"fa fa-photo-video\"></i>Consultations </a>");
            generatemenu.Append("<div class='dashboard-nav-dropdown-menu'>");
            if (pagelink == "Rec")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item active\">Reciept</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Reciept</a>");

            if (pagelink == "Pay")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item active\">Payment</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Payment</a>");

            if (pagelink == "Med")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item active\">Medical</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Medical</a>");

            if (pagelink == "Rec")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Invoice</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Invoice</a>");
            generatemenu.Append("</div>");
            generatemenu.Append("</div>");


            if (pagelink == "Doct"||pagelink == "Staff"||pagelink == "Medc"||pagelink == "Store")
                generatemenu.Append("<div class='dashboard-nav-dropdown show'>");
            else
                generatemenu.Append("<div class='dashboard-nav-dropdown'>");
            generatemenu.Append("<a href=\"#!\" class=\"dashboard-nav-item dashboard-nav-dropdown-toggle\">");
            generatemenu.Append("<i class=\"fa fa-users\"></i>Master </a>");
            generatemenu.Append("<div class='dashboard-nav-dropdown-menu'>");

            if (pagelink == "Doct")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item active\">Doctor</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Doctor</a>");

            if (pagelink == "Staff")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item active\">Staff</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Staff</a>");

            if (pagelink == "Medc")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item active\">Medicines</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Medicines</a>");

            if (pagelink == "Store")
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item active\">Store</a>");
            else
                generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Store</a>");
            //generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\"></a>");
            generatemenu.Append("</div>");
            generatemenu.Append("</div>");

            generatemenu.Append("<div class='dashboard-nav-dropdown'>");
            generatemenu.Append("<a href=\"#!\" class=\"dashboard-nav-item dashboard-nav-dropdown-toggle\">");
            generatemenu.Append("<i class=\"fa fa-money-check-alt\"></i>Reports ");
            generatemenu.Append("</a>");
            generatemenu.Append("<div class='dashboard-nav-dropdown-menu'>");
            generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Doctor Visit</a>");
            generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">Patients Visited</a>");
            generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-dropdown-item\">MR Visit</a>");
            generatemenu.Append("</div>");
            generatemenu.Append(" </div>");

            generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-item\">");
            generatemenu.Append("<i class=\"fa fa-cogs\"></i>Settings ");
            generatemenu.Append("</a>");

            generatemenu.Append("<a href=\"#\" class=\"dashboard-nav-item\">");
            generatemenu.Append("<i class=\"fa fa-user\"></i>Profile ");
            generatemenu.Append("</a>");

            generatemenu.Append("<div class=\"nav-item-divider\">");
            generatemenu.Append("</div>");

            generatemenu.Append("<a class=\"dashboard-nav-item\"  onclick=\"signout();\">");
            generatemenu.Append("<i class=\"fa fa-sign-out-alt\"></i>");
            generatemenu.Append("Logout </a>");
            return generatemenu.ToString();
        }
    }
}