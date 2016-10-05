<%@ Page Language="C#" ClassName="ReverseTest" %>
<script runat="server">

    void btnTest_Click(Object sender, EventArgs e)
    {
        // Reverse the text in the input textbox and display
        // it in the label.
        lblOutput.Text = 
            ManagedComponent.ReverseIt.DoReverse(txtInput.Text);
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">Reverse Text Demo 
        </h1>
        <p align="left">
            Input String: 
        </p>
        <p>
            <asp:TextBox id="txtInput" accessKey="I" runat="server" ToolTip="This text box contains the text that you want to reverse.">Some Sample Text</asp:TextBox>
        </p>
        <p>
            Output String: 
        </p>
        <p>
            <asp:Label id="lblOutput" runat="server" ToolTip="This label contains the output text after you click the button."></asp:Label>
        </p>
        <p>
            <asp:Button id="btnTest" accessKey="T" onclick="btnTest_Click" runat="server" ToolTip="Click this button to test the application." Text="Test"></asp:Button>
        </p>
    </form>
</body>
</html>
