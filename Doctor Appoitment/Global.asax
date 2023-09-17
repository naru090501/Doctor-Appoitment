<%@ Application Codebehind="Global.asax.cs" Inherits="Doctor_Appoitment.Global" Language="C#" %>
<script RunAt="server">
    void Session_Start(object sender, EventArgs e)
    {
        if (Session.IsNewSession)
        {
            string sessionId = Session.SessionID;
            string userIpAddress = Request.UserHostAddress;
        }
    }
</script>
