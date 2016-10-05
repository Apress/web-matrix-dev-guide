<%@ Page Language="C#" ClassName="DataGridTest" %>
<%@ Register TagPrefix="xedit" Namespace="Swarren.XmlEditGrid" Assembly="Swarren.XmlEditGrid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=baff81fdebefb2bf" %>
<script runat="server">

    // Insert page code here
    //
    
    void Page_Load(Object sender, EventArgs e)
    {
        // Display the name of the XML file.
        Label1.Text = "Data Source Is: " + XmlEditGrid1.XmlFile;
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">XmlDataGrid Demonstration 
        </h1>
        <h2 align="left">
            <asp:Label id="Label1" runat="server">Label</asp:Label>
        </h2>
        <p>
            <xedit:XmlEditGrid id="XmlEditGrid1" runat="server" AllowSorting="True" XmlFile="SampleData.xml" AllowPaging="True">
                <SelectedItemStyle forecolor="White" backcolor="Black"></SelectedItemStyle>
                <EditItemStyle forecolor="White" backcolor="Green"></EditItemStyle>
            </xedit:XmlEditGrid>
        </p>
        <!-- Insert content here -->
    </form>
</body>
</html>
