<%@ Page Language="C#" ClassName="DataGridTest" %>
<%@ Register TagPrefix="wmx" Namespace="Microsoft.Saturn.Framework.Web.UI" Assembly="Microsoft.Saturn.Framework, Version=0.5.464.0, Culture=neutral, PublicKeyToken=6f763c9966660626" %>
<script runat="server">

    // Insert page code here
    //
    
    void Page_Load(Object sender, EventArgs e)
    {
        // Bind to the current data source.
        EMDisplay.DataBind();
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">DataGrid Display Example 
        </h1>
        <p>
            <asp:DataGrid id="EMDisplay" runat="server" DataSource="<%# DS %>" DataKeyField="InventoryID" DataMember="Table"></asp:DataGrid>
        </p>
        <p>
            <wmx:SqlDataSourceControl id="DS" runat="server" ConnectionString="server=(local);database=MovieGuide;trusted_connection=true" SelectCommand="SELECT * FROM ExistingMovies"></wmx:SqlDataSourceControl>
        </p>
        <!-- Insert content here -->
    </form>
</body>
</html>
