using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Doctor_Appoitment
{
    public class BasePage : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
            {
                Response.Redirect("~/landing.aspx"); // Redirect to another page.
            }

            base.OnLoad(e);
        }
    }
}