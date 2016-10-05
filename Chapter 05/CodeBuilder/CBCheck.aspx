<%@ Page Language="C#" Debug="true" ClassName="CBTestClass" %>
<script runat="server">

    void btnSendMessage_Click(Object sender, EventArgs e)
    {
        //  Build a MailMessage
        System.Web.Mail.MailMessage mailMessage =
            new System.Web.Mail.MailMessage();
        mailMessage.From = "YourEmailAddress@example.com";
        mailMessage.To = "JMueller@mwt.net";
        mailMessage.Subject = "Web Site Comments";
        mailMessage.BodyFormat = System.Web.Mail.MailFormat.Text;
    
        //  TODO: Set the mailMessage.Body property
    
        System.Web.Mail.SmtpMail.SmtpServer = "localhost";
        System.Web.Mail.SmtpMail.Send(mailMessage);
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">Send Email Code Builder Demonstration&nbsp;
        </h1>
        <p>
            <asp:Button id="btnSendMessage" onclick="btnSendMessage_Click" runat="server" Text="Send A Message"></asp:Button>
        </p>
        <!-- Insert content here -->
    </form>
</body>
</html>
