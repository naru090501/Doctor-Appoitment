using Doctor_Appointment.App_Code;
using Doctor_Appoitment.DBConnection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appoitment
{
    public partial class Landing : System.Web.UI.Page
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
                h1header.InnerHtml = "Welcome back " + Session["user"];
                menulink.InnerHtml = GenerateLink.generatemenuDoctor("1","Home");
                logindetails();
            }
        }
        public void logindetails()
        {
            DataTable dtlogin = new DataTable();                  
            dtlogin = getData.logintimecalculator(hdnlid.Value);
            string struser = dtlogin.Rows[0]["login"].ToString();
            StringBuilder logintable = new StringBuilder();
            logintable.Append("<table class='table table-hover text-muted'>");
            logintable.Append("<tbody>");

            logintable.Append("<tr>");
            logintable.Append("<td><i class='fa fa-user'></i></td>");
            logintable.Append("<td>User</td>");
            logintable.Append("<td>"+ struser + "</td>");
            logintable.Append("<tr>");
            
            logintable.Append("<tr>");
            logintable.Append("<td><i class='fa fa-key'></i></td>");
            logintable.Append("<td>Password</td>");
            logintable.Append("<td>*** <small>min 8 char</small></td>");
            logintable.Append("<tr>");
            
            logintable.Append("<tr>");
            logintable.Append("<td><i class='fa fa-database'></i></td>");
            logintable.Append("<td>Database</td>");
            logintable.Append("<td>NDDOCTORNEW</td>");
            logintable.Append("<tr>");
            
            logintable.Append("<tr>");
            logintable.Append("<td><i class='fa fa-check'></i></td>");
            logintable.Append("<td>Version</td>");
            logintable.Append("<td>2023</td>");
            logintable.Append("<tr>");
            
            logintable.Append("<tr>");
            logintable.Append("<td><i class='fa fa-lock'></i></td>");
            logintable.Append("<td>Data Lock</td>");
            logintable.Append("<td>1-APR-2023</td>");
            logintable.Append("<tr>");

            logintable.Append("</tbody>");
            logintable.Append("</table>");
            divlogin.InnerHtml= logintable.ToString();
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