<%@ Page Language="C#" %>
<%@ Register TagPrefix="Standard" TagName="Info" Src="MyControl.ascx" %>
<script runat="server">

    void Page_Load(Object sender, EventArgs e)
    {
        Control1.HeaderText = "This is a Test Page";
        Control1.GreetingText = "Welcome to the Text Page";
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <p>
            <STANDARD:INFO id="Control1" runat="server"></STANDARD:INFO>
        </p>
        <p>
            This is some additional text--it isn't part of the user control.
        </p>
    </form>
</body>
</html>
