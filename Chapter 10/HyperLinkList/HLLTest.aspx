<%@ Page Language="C#" ClassName="HLLClass" %>
<%@ Register TagPrefix="n1" Namespace="AdvancedWebControls" Assembly="HyperLinkList, Version=0.0.0.0, Culture=neutral, PublicKeyToken=2fced061d80dcf71" %>
<%@ Register TagPrefix="wmx" Namespace="Microsoft.Saturn.Framework.Web.UI" Assembly="Microsoft.Saturn.Framework, Version=0.5.464.0, Culture=neutral, PublicKeyToken=6f763c9966660626" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">HyperLinkList Control Example 
        </h1>
        <p align="left">
            Select a destination: 
            <br />
            <n1:HyperLinkList id="HLL1" accessKey="D" runat="server" Width="200px" AutoPostBack="True" BulletType="Circle" ToolTip="This is a selection of Web sites.">
                <asp:ListItem Value="Test1.ASPX">Test 1</asp:ListItem>
                <asp:ListItem Value="Test2.ASPX">Test 2</asp:ListItem>
                <asp:ListItem Value="http://www.mwt.net/~jmueller/">DataCon Services</asp:ListItem>
                <asp:ListItem Value="http://www.asp.net/webmatrix/default.aspx">Web Matrix Home</asp:ListItem>
                <asp:ListItem Value="http://www.microsoft.com/">Microsoft Home</asp:ListItem>
            </n1:HyperLinkList>
        </p>
    </form>
</body>
</html>
