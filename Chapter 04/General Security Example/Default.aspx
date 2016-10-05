<%@ Page Language="C#" ClassName="AspTest" %>
<script runat="server">

    void btnTest_Click(Object sender, EventArgs e) {
        // Display a new value for the output textbox.
        txtOutput.Text = "Hello World";
    }
    
    void btnReset_Click(Object sender, EventArgs e) {
        // Reset the output textbox to a blank.
        txtOutput.Text = "";
    }

</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN">
<head>
    <title>Test Web Page</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <form runat="server">
        <h1 align="center">Welcome to the ASP .NET Test Web Page 
        </h1>
        <noscript>Your browser doesn't support scripts. The only task the scripts on this
            page perform is to display Hello World in the output textbox when the user clicks
            Click Me or remove the text when the user clicks Reset. 
        </noscript>
        <p align="left">
            This is some introductory text.<br />
            <font color="red">This text is in <em>RED</em> and the word "RED" is in italics.</font> 
        </p>
        <p align="left">
            <u><font color="black">This text is underlined.</font></u> 
        </p>
        <h2 align="left">This is a Second Level Header 
        </h2>
        <p align="left">
            Output Textbox 
            <asp:TextBox id="txtOutput" accessKey="O" runat="server" ToolTip="This is the output textbox.">Page Output</asp:TextBox>
        </p>
        <p align="left">
            <asp:Button id="btnTest" accessKey="C" onclick="btnTest_Click" tabIndex="1" runat="server" ToolTip="Click this button to see a change in the text box." Text="Click Me"></asp:Button>
            <asp:Button id="btnReset" accessKey="R" onclick="btnReset_Click" tabIndex="2" runat="server" ToolTip="Click this button to reset the form." Text="Reset"></asp:Button>
        </p>
        <h2 align="left">Here is Another Header 
        </h2>
        <p align="left">
            Click the link to get to the 
            <asp:HyperLink id="HyperLink1" accessKey="D" tabIndex="3" runat="server" ToolTip="Click this link to visit the DataCon Services Home Page." NavigateUrl="http://www.mwt.net/~jmueller">DataCon Home Page</asp:HyperLink>
        </p>
        <h2 align="left">Done? Log Out! 
        </h2>
        <p id="" align="left">
            Click the link to go to the 
            <asp:HyperLink id="HyperLink2" accessKey="L" tabIndex="4" runat="server" ToolTip="Click this link to go to the log out page." NavigateUrl="Logout.aspx">Log Out Page</asp:HyperLink>
        </p>
    </form>
</body>
</html>
