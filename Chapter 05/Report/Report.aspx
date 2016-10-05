<%@ Page Language="C#" ClassName="ReportTest" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.SqlClient" %>
<script runat="server">

    void Page_Load(object sender, EventArgs e) {
    
        if (!Page.IsPostBack) {
    
            // Databind the data grid on the first request only
            // (on postback, rebind only in paging and sorting commands)
    
            BindGrid();
        }
    }
    
    void DataGrid_Page(object sender, DataGridPageChangedEventArgs e) {
    
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        BindGrid();
    }
    
    void DataGrid_Sort(object sender, DataGridSortCommandEventArgs e) {
    
        DataGrid1.CurrentPageIndex = 0;
        SortField = e.SortExpression;
        BindGrid();
    }
    
    //---------------------------------------------------------
    //
    // Helpers
    //
    // use a property to keep track of the sort field, and
    // save it in viewstate between postbacks
    protected String SortField {
    
        get {
            object o = ViewState["SortField"];
            return (o == null) ? String.Empty : (String)o;
        }
        set {
            ViewState["SortField"] = value;
        }
    }
    
    void BindGrid() {
    
        // Create the connection.
        string ConnectionString
             = "server=(local);database=MovieGuide;trusted_connection=true";
        string CommandText;
    
        // Define the command text.
        if (SortField == String.Empty)
            CommandText = "select * from ExistingMovies order by InventoryID";
        else
            CommandText = "select * from ExistingMovies order by " + SortField;
    
        SqlConnection myConnection = new SqlConnection(ConnectionString);
        SqlDataAdapter myCommand = new SqlDataAdapter(CommandText, myConnection);
    
        DataSet ds = new DataSet();
        myCommand.Fill(ds);
    
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
    }

</script>
<html>
<head>
</head>
<body style="FONT-FAMILY: arial">
    <h2>Data Report with Paging and Sorting 
    </h2>
    <hr size="1" />
    <form runat="server">
        <asp:datagrid id="DataGrid1" runat="server" width="80%" CellSpacing="1" GridLines="None" CellPadding="3" BackColor="White" ForeColor="Black" OnPageIndexChanged="DataGrid_Page" PageSize="6" AllowPaging="true" OnSortCommand="DataGrid_Sort" AllowSorting="true">
            <HeaderStyle font-bold="True" forecolor="white" backcolor="#4A3C8C"></HeaderStyle>
            <PagerStyle horizontalalign="Right" backcolor="#C6C3C6" mode="NumericPages"></PagerStyle>
            <ItemStyle backcolor="#DEDFDE"></ItemStyle>
        </asp:datagrid>
    </form>
</body>
</html>
