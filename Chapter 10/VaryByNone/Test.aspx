<%@ Page Language="C#" ClassName="VaryByNoneTest" %>
<%@ outputcache duration="10" varybyparam="none" %>
<script runat="server">

    void Page_Load(Object sender, EventArgs e) {
    
        TimestampCreated.Text = DateTime.Now.ToString("r");
        TimestampExpires.Text = DateTime.Now.AddSeconds(10).ToString("r");
    }

</script>
<html>
<head>
</head>
<body style="FONT-FAMILY: arial">
    <h2>Output caching for 10 seconds... 
    </h2>
    <hr size="1" />
    <p>
        Output Cache created: 
        <asp:Label id="TimestampCreated" runat="server" Font-Bold="true" ForeColor="red"></asp:Label>
        <br />
        Output Cache expires: 
        <asp:Label id="TimestampExpires" runat="server" Font-Bold="true" ForeColor="red"></asp:Label>
    </p>
</body>
</html>