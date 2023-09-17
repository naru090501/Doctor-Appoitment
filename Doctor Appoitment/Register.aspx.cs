using Doctor_Appoitment.DBConnection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appoitment
{
    public partial class Register : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string fn = string.Empty;
            string ln = string.Empty;
            string mob = string.Empty;
            string email = string.Empty;
            int nletter=0;
            string pass = string.Empty;
            string encryptedPassword = string.Empty;


            fn = txtfname.Value; 
            ln=txtlname.Value; 
            mob=txtMobile.Value; 
            email=txtemail.Value;
            if (chknletter.Checked == true)
                nletter = 1;
            pass=txtpass.Value;


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

            DataTable reguser = new DataTable();
            reguser = putData.authenticateUser(fn,ln,mob,email, encryptedPassword, nletter);

            if (reguser != null)
            {
                if (reguser.Rows.Count > 0)
                {
                    if (reguser.Columns.Count == 2)
                    {
                        ScriptManager.RegisterClientScriptBlock(this,GetType(),"ErrorExist", "alreadyexist();",false);
                    }
                    else
                    {
                        Session["user"] = fn;
                        Session["loginId"] = reguser.Rows[0]["loginid"].ToString();
                        Session["IsLoggedIn"] = true;
                        DateTime dttime = Convert.ToDateTime(Session["Logindate"]);
                        putData.insertloginperiod(reguser.Rows[0]["loginid"].ToString(), dttime, dttime, "I");
                        Response.Redirect("Landing.aspx");
                    }
                    

                }
            }            
        }
    }
}