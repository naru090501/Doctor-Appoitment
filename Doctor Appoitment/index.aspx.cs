using Doctor_Appoitment.DBConnection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appoitment
{
    public partial class Index : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Session["IsValidTwoFactorAuthentication"] = null;
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string login = string.Empty;
            string pass = string.Empty;
            string encryptedPassword = string.Empty;
            string dbpass = string.Empty;
            string dbuser = string.Empty;
            string dbactive = string.Empty;
            string ltype = string.Empty;
            string loginid=string.Empty;
            
            if (RadUname.Checked == true)
            {
                login = txtLogin.Value;
                ltype = "login";
            }
            else if (RadEmail.Checked == true)
            {
                login= txtEmail.Value; ;
                ltype = "email";
            }
            else
            {
                login=txtMobile.Value;
                ltype = "mobile";
            }
            pass = txtPassword.Value;
            if (login != "" && pass != "")
            {
                DataTable validuser = getData.authenticatUser(login, ltype);
                if (validuser != null)
                {
                    for (int d = 0; d < validuser.Rows.Count; d++)
                    {
                        dbpass = validuser.Rows[0]["password"].ToString();
                        dbactive = validuser.Rows[0]["isactive"].ToString();
                        dbuser = validuser.Rows[0]["login"].ToString();
                        loginid= validuser.Rows[0]["loginid"].ToString();
                    }
                }
                //encryption of password
                try
                {
                    
                    byte[] encData_byte = new byte[pass.Length];
                    encData_byte = System.Text.Encoding.UTF8.GetBytes(pass);
                    string encodedData = Convert.ToBase64String(encData_byte);
                    encryptedPassword = encodedData;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error in base64Encode" + ex.Message);
                }
                //end encryption
                if (validuser.Rows.Count > 0)
                {
                    if (encryptedPassword == dbpass)
                    {
                        if (dbactive == "1")
                        {
                            Session["IsLoggedIn"] = true;
                            Session["user"] = dbuser;
                            Session["UserName"] = dbuser;
                            Session["loginId"] = loginid;
                            //Session["IsValidTwoFactorAuthentication"] = true;
                            Session["Logindate"] = DateTime.Now;
                            DateTime dttime = Convert.ToDateTime(Session["Logindate"]);
                            putData.insertloginperiod(loginid, dttime, dttime, "I");
                            Response.Redirect("landing.aspx");
                        }
                        else
                        {

                            //lblmsg.Text = "Login Expired.";
                            ScriptManager.RegisterClientScriptBlock(this, GetType(), "expired", "expiredlog();", true);
                        }
                    }
                    else
                    {

                        //lblmsg.Text = "Invalid Login/Password.";
                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "invaliduser", "invalid();", true);
                    }
                }
                else
                {
                    //lblmsg.Text = "No User Found. Please Register now!";
                    ScriptManager.RegisterClientScriptBlock(this,GetType(),"usernotfound", "nufount();", true);
                }
            }
            else
            {
                //lblmsg.Text = "Please Enter Login Credentials.";
                
                ScriptManager.RegisterClientScriptBlock(this,GetType(),"none", "empty();", true);
            }
        }
    }
}