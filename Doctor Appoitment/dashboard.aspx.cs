using Doctor_Appoitment.DBConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appoitment
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            signout();
        }
    }
}