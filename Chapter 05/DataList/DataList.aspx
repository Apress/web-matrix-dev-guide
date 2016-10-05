<%@ Page Language="C#" Debug="True" ClassName="DataListTest" %>
<%@ Register TagPrefix="wmx" Namespace="Microsoft.Saturn.Framework.Web.UI" Assembly="Microsoft.Saturn.Framework, Version=0.5.464.0, Culture=neutral, PublicKeyToken=6f763c9966660626" %>
<script runat="server">

    void Page_Load(Object sender, EventArgs e)
    {
        // Bind the data source to the DataList.
        EMDisplay.DataBind();
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <p>
        </p>
        <h1 align="center">DataList Demonstration 
        </h1>
        <p>
        </p>
        <p>
            <asp:DataList id="EMDisplay" runat="server" DataKeyField="InventoryID" DataSource="<%# DS %>" DataMember="Table">
                <ItemTemplate>
                    <p>
                        Inventory ID: 
                        <asp:Label id="lblInventoryID" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InventoryID") %>'></asp:Label>
                        <br />
                        Name: 
                        <asp:Label id="lblName" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Name") %>'></asp:Label>
                        <br />
                        Description: 
                        <asp:Label id="lblDescription" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Description") %>'></asp:Label>
                    </p>
                </ItemTemplate>
                <HeaderTemplate>
                    <h1 align="center">The Movie Guide 
                    </h1>
                </HeaderTemplate>
                <SeparatorTemplate>
                    <hr />
                </SeparatorTemplate>
            </asp:DataList>
        </p>
        <p>
            <wmx:SqlDataSourceControl id="DS" runat="server" SelectCommand="SELECT InventoryID, Name, Description FROM ExistingMovies" ConnectionString="server=(local);database=MovieGuide;trusted_connection=true"></wmx:SqlDataSourceControl>
        </p>
        <p>
        </p>
        <!-- Insert content here -->
    </form>
</body>
</html>
