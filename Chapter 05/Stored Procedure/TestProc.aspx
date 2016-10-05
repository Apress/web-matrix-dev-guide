<%@ Page Language="C#" ClassName="StoredProcedureTest" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.SqlClient" %>
<script runat="server">

    void Page_Load(object sender, EventArgs e)
    {
    
        // The connection string for the database.
        string ConnectionString =
            "server=(local);database=MovieGuide;trusted_connection=true";
    
        // Create the command string for the stored procedure.
        string CommandText = "GetRecord";
    
        // Create the connection and command.
        SqlConnection myConnection = new SqlConnection(ConnectionString);
        SqlCommand myCommand = new SqlCommand(CommandText, myConnection);
    
        // Set the command type.
        myCommand.CommandType = CommandType.StoredProcedure;
    
        // Add the single paramter for this application.
        myCommand.Parameters.Add("@SearchName", SqlDbType.VarChar).Value =
            "The Sound of Music";
    
        // Open the connection.
        myConnection.Open();
    
        // Execute the command.
        DataGrid1.DataSource =
            myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        DataGrid1.DataBind();
    }

</script>
<html>
<head>
</head>
<body style="FONT-FAMILY: arial">
    <h2>Simple Stored Procedure 
    </h2>
    <hr size="1" />
    <form runat="server">
        <asp:datagrid id="DataGrid1" runat="server" CellSpacing="1" GridLines="None" CellPadding="3" BackColor="White" ForeColor="Black" EnableViewState="False">
            <HeaderStyle font-bold="True" forecolor="white" backcolor="#4A3C8C"></HeaderStyle>
            <ItemStyle backcolor="#DEDFDE"></ItemStyle>
        </asp:datagrid>
    </form>
</body>
</html>
