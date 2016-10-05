<%@ Page Language="C#" ClassName="ALClass" %>
<%@ Register TagPrefix="nk" Namespace="NikhilKo.Widgets.Web" Assembly="NikhilKo.Widgets.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=2dcfb51ab31728b0" %>
<script runat="server">

    // Insert page code here
    //
    
    void btnTest_Click(Object sender, EventArgs e)
    {
        txtOutput.Text = "Clicked the Click Me button.";
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <p>
            <nk:AssociatedLabel id="ALTest" accessKey="B" runat="server" ToolTip="This is an Associated Label Test" AssociatedControlID="txtOutput">Bound to txtOutput.</nk:AssociatedLabel>
            <br />
            <asp:TextBox id="txtOutput" runat="server" Width="239px">Output Text Goes Here</asp:TextBox>
        </p>
        <p>
            <asp:Button id="btnTest" accessKey="C" onclick="btnTest_Click" runat="server" ToolTip="Click this button to test the application." Text="Click Me"></asp:Button>
        </p>
    </form>
</body>
</html>
