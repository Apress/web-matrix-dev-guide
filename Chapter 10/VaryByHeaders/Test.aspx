<%@ Page Language="C#" ClassName="VaryByHeadersTest" %>
<%@ outputcache duration="10" varybyparam="none" varybyheader="Accept-Language" %>
<script runat="server">

    void Page_Load(Object sender, EventArgs e)
    {
    
        // Obtain the header details.
        HeaderDetails.Text = 
            "Accept-Language: " + Request.Headers["Accept-Language"] +
            "</br>Authorization: " + Request.Headers["Authorization"] +
            "</br>From: " + Request.Headers["From"] +
            "</br>If-Modified-Since: " + Request.Headers["If-Modified-Since"] +
            "</br>User-Agent: " + Request.Headers["User-Agent"] +
            "</br>Connection: " + Request.Headers["Connection"] +
            "</br>Accept: " + Request.Headers["Accept"] +
            "</br>Accept-Encoding: " + Request.Headers["Accept-Encoding"] +
            "</br>Host: " + Request.Headers["Host"];
            
        // Display the timestamp information.
        TimestampCreated.Text = DateTime.Now.ToString("r");
        TimestampExpires.Text = DateTime.Now.AddSeconds(10).ToString("r");
    }

</script>
<html>
<head>
</head>
<body style="FONT-FAMILY: arial">
    <h2>Vary Cache By Headers 
    </h2>
    <hr size="1" />
    <p>
        Header Details<br />
        <asp:Label id="HeaderDetails" runat="server" Font-Bold="true" ForeColor="red"></asp:Label>
    </p>
    <p>
        Output Cache created: 
        <asp:Label id="TimestampCreated" runat="server" Font-Bold="true" ForeColor="red"></asp:Label>
        <br />
        Output Cache expires: 
        <asp:Label id="TimestampExpires" runat="server" Font-Bold="true" ForeColor="red"></asp:Label>
    </p>
</body>
</html>
