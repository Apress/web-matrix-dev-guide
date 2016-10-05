<%@ Page Language="C#" ClassName="SecurityTest" %>
<script runat="server">

    void Page_Load(Object sender, EventArgs e)
    {
    
        // Display the correct message and enable or disable
        // the button and hyperlink as needed during startup.
        if (Request.IsAuthenticated == true)
        {
            Status.Text = "User " + User.Identity.Name
                + " is currently logged in.";
    
            // Enable the button so the user can log out.
            LogOffBtn.Visible = true;
            LogOffBtn.Enabled = true;
    
            // Disable the hyperlink so the user must log out.
            HyperLink1.Visible = false;
            HyperLink1.Enabled = false;
        }
        else
        {
            Status.Text = "Not authenticated.";
    
            // Disable the button so it can't be clicked.
            LogOffBtn.Visible = false;
            LogOffBtn.Enabled = false;
    
            // Enable the hyperlink so the user can log in.
            HyperLink1.Visible = true;
            HyperLink1.Enabled = true;
        }
    }
    
    void LogOffBtn_Click(Object sender, EventArgs e)
    {
        // Sign the user out and modify the screen text.
        FormsAuthentication.SignOut();
        Status.Text = "Not authenticated.";
    
        // Disable the button so it can't be clicked twice.
        LogOffBtn.Visible = false;
        LogOffBtn.Enabled = false;
    
        // Enable the hyperlink so the user can log back in.
        HyperLink1.Visible = true;
        HyperLink1.Enabled = true;
    }

</script>
<html>
<head>
</head>
<body style="FONT-FAMILY: arial">
    <form runat="server">
        <h2>Log Off Page 
        </h2>
        <hr size="1" />
        <p>
            Status: 
            <asp:Label id="Status" runat="server" ForeColor="red"></asp:Label>
        </p>
        <p>
            <asp:button id="LogOffBtn" onclick="LogOffBtn_Click" runat="server" text="Log Off"></asp:button>
        </p>
        <p>
            <asp:HyperLink id="HyperLink1" runat="server" Visible="False" Enabled="False" NavigateUrl="Default.aspx">Go back to the Home page.</asp:HyperLink>
        </p>
    </form>
</body>
</html>
