using Doctor_Appointment.App_Code;
using Doctor_Appoitment.DBConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appoitment
{
    public partial class appoitment : System.Web.UI.Page
    {
        string loginid = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                DateTime dttime = Convert.ToDateTime(Session["Logindate"]);
                putData.insertloginperiod(hdnlid.Value, dttime, DateTime.Now, "U");
                Session.Abandon();
                Session["IsLoggedIn"] = false;
                Session["user"] = null;
                Session["UserName"] = null;
                Session["loginid"] = null;
                Response.Redirect("index.aspx");
            }
            if (!IsPostBack)
            {
                loginid = Session["loginid"].ToString();
                hdnlid.Value = loginid;
                //h1header.InnerHtml = "Welcome back " + Session["user"];
                menulink.InnerHtml = GenerateLink.generatemenuDoctor("1", "Appo");
                //logindetails();
            }
        }
        public void signout()
        {
            DateTime dttime = Convert.ToDateTime(Session["Logindate"]);
            putData.insertloginperiod(hdnlid.Value, dttime, DateTime.Now, "U");
            // Clear user's session
            Session.Clear();
            Session.Abandon();

            // Clear authentication cookies
            System.Web.Security.FormsAuthentication.SignOut();

            // Redirect to the index page or any other desired location
            Response.Redirect("Index.aspx");
        }

        protected void btnsout_Click(object sender, EventArgs e)
        {
            signout();
        }
    }
}