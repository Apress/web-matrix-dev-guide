<%@ Page Language="C#" ClassName="VaryByBrowserTest" %>
<%@ outputcache duration="10" varybyparam="none" varybycustom="browser" %>
<script runat="server">

    public void Page_Load(Object sender, EventArgs e) {
    
        BrowserDetails.Text =
            "</br>Type: " + Request.Browser.Type +
            "</br>Browser: " + Request.Browser.Browser +
            "</br>Version: " + Request.Browser.Version +
            "</br>Major Version: " + Request.Browser.MajorVersion.ToString() +
            "</br>Minor Version: " + Request.Browser.MinorVersion.ToString() +
            "</br>Platform: " + Request.Browser.Platform +
            "</br>Is this a beta? " + Request.Browser.Beta +
            "</br>Is this a crawler? " + Request.Browser.Crawler +
            "</br>Is this AOL? " + Request.Browser.AOL +
            "</br>Is this a Win16 machine? " + Request.Browser.Win16 +
            "</br>Is this a Win32 machine? " + Request.Browser.Win32 +
            "</br>Does the browser support frames? " + Request.Browser.Frames +
            "</br>Does the browser support tables? " + Request.Browser.Tables +
            "</br>Does the browser support cookies? " +
                Request.Browser.Cookies +
            "</br>Does the browser support VB Script? " +
                Request.Browser.VBScript +
            "</br>Does the browser support JavaScript? " +
                Request.Browser.JavaScript +
            "</br>Does the browser support Java applets? " +
                Request.Browser.JavaApplets +
            "</br>Does the browser support ActiveX Controls? " +
                Request.Browser.ActiveXControls;
    
        TimestampCreated.Text = DateTime.Now.ToString("r");
        TimestampExpires.Text = DateTime.Now.AddSeconds(10).ToString("r");
    }

</script>
<html>
<head>
</head>
<body style="FONT-FAMILY: arial">
    <h3>Vary Cache by Browser 
    </h3>
    Browser Statistics: 
    <asp:Label id="BrowserDetails" ForeColor="red" Font-Bold="true" runat="server"></asp:Label>
</body>
</html>
