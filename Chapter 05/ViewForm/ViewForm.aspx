<%@ Page Language="C#" Debug="True" ClassName="FormTest" %>
<%@ Register TagPrefix="wmx" Namespace="Microsoft.Saturn.Framework.Web.UI" Assembly="Microsoft.Saturn.Framework, Version=0.5.464.0, Culture=neutral, PublicKeyToken=6f763c9966660626" %>
<script runat="server">

    System.Data.DataSet ExistingMoviesSelect()
    {
        string connectionString = "server=\'localhost\'; trusted_connection=true; Database=\'MovieGuide\'";
        System.Data.SqlClient.SqlConnection sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
    
        string queryString = @"SELECT [ExistingMovies].[LeadActress], [ExistingMovies].[Description], [ExistingMovies].[Notes], [ExistingMovies].[InventoryID], [ExistingMovies].[Rating], [ExistingMovies].[LeadActor], [ExistingMovies].[SupportingCast], [ExistingMovies].[Name], [ExistingMovies].[Producer], [ExistingMovies].[IsIn], [ExistingMovies].[Director], [ExistingMovies].[DatePurchased], [ExistingMovies].[Format] FROM [ExistingMovies]";
        System.Data.SqlClient.SqlCommand sqlCommand = new System.Data.SqlClient.SqlCommand(queryString, sqlConnection);
    
        System.Data.SqlClient.SqlDataAdapter dataAdapter = new System.Data.SqlClient.SqlDataAdapter(sqlCommand);
        System.Data.DataSet dataSet = new System.Data.DataSet();
        dataAdapter.Fill(dataSet);
    
        return dataSet;
    }
    
    
    int ExistingMoviesUpdate(int inventoryID, string name, string rating, string description, string leadActor, string leadActress, string supportingCast, string director, string producer, string notes, System.DateTime datePurchased, string format, bool isIn)
    {
        string connectionString = "server=\'localhost\'; trusted_connection=true; Database=\'MovieGuide\'";
        System.Data.SqlClient.SqlConnection sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
    
        string queryString = @"UPDATE [ExistingMovies] SET [LeadActress]=@LeadActress, [Description]=@Description, [Notes]=@Notes, [Name]=@Name, [Rating]=@Rating, [LeadActor]=@LeadActor, [SupportingCast]=@SupportingCast, [Format]=@Format, [Producer]=@Producer, [IsIn]=@IsIn, [Director]=@Director, [DatePurchased]=@DatePurchased WHERE ([ExistingMovies].[InventoryID] = @InventoryID)";
        System.Data.SqlClient.SqlCommand sqlCommand = new System.Data.SqlClient.SqlCommand(queryString, sqlConnection);
    
        sqlCommand.Parameters.Add("@InventoryID", System.Data.SqlDbType.Int).Value = inventoryID;
        sqlCommand.Parameters.Add("@Name", System.Data.SqlDbType.Char).Value = name;
        sqlCommand.Parameters.Add("@Rating", System.Data.SqlDbType.Char).Value = rating;
        sqlCommand.Parameters.Add("@Description", System.Data.SqlDbType.VarChar).Value = description;
        sqlCommand.Parameters.Add("@LeadActor", System.Data.SqlDbType.Char).Value = leadActor;
        sqlCommand.Parameters.Add("@LeadActress", System.Data.SqlDbType.Char).Value = leadActress;
        sqlCommand.Parameters.Add("@SupportingCast", System.Data.SqlDbType.Char).Value = supportingCast;
        sqlCommand.Parameters.Add("@Director", System.Data.SqlDbType.Char).Value = director;
        sqlCommand.Parameters.Add("@Producer", System.Data.SqlDbType.Char).Value = producer;
        sqlCommand.Parameters.Add("@Notes", System.Data.SqlDbType.VarChar).Value = notes;
        sqlCommand.Parameters.Add("@DatePurchased", System.Data.SqlDbType.DateTime).Value = datePurchased;
        sqlCommand.Parameters.Add("@Format", System.Data.SqlDbType.Char).Value = format;
        sqlCommand.Parameters.Add("@IsIn", System.Data.SqlDbType.Bit).Value = isIn;
    
        int rowsAffected = 0;
        sqlConnection.Open();
        try {
            rowsAffected = sqlCommand.ExecuteNonQuery();
        }
        finally {
            sqlConnection.Close();
        }
    
        return rowsAffected;
    }
    
    
    int ExistingMoviesInsert(string name, string rating, string producer, System.DateTime datePurchased, string format, bool isIn)
    {
        string connectionString = "server=\'localhost\'; trusted_connection=true; Database=\'MovieGuide\'";
        System.Data.SqlClient.SqlConnection sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
    
        string queryString = @"INSERT INTO [ExistingMovies] ([Name], [Rating], [Description], [LeadActor], [LeadActress], [SupportingCast], [Director], [Producer], [Notes], [DatePurchased], [Format], [IsIn]) VALUES (@Name, @Rating, 'No Description Available', 'N/A', 'N/A', 'N/A', 'N/A', @Producer, 'No special notes.', @DatePurchased, @Format, @IsIn)";
        System.Data.SqlClient.SqlCommand sqlCommand = new System.Data.SqlClient.SqlCommand(queryString, sqlConnection);
    
        sqlCommand.Parameters.Add("@Name", System.Data.SqlDbType.Char).Value = name;
        sqlCommand.Parameters.Add("@Rating", System.Data.SqlDbType.Char).Value = rating;
        sqlCommand.Parameters.Add("@Producer", System.Data.SqlDbType.Char).Value = producer;
        sqlCommand.Parameters.Add("@DatePurchased", System.Data.SqlDbType.DateTime).Value = datePurchased;
        sqlCommand.Parameters.Add("@Format", System.Data.SqlDbType.Char).Value = format;
        sqlCommand.Parameters.Add("@IsIn", System.Data.SqlDbType.Bit).Value = isIn;
    
        int rowsAffected = 0;
        sqlConnection.Open();
        try {
            rowsAffected = sqlCommand.ExecuteNonQuery();
        }
        finally {
            sqlConnection.Close();
        }
    
        return rowsAffected;
    }
    
    
    int ExistingMoviesDelete(int inventoryID)
    {
        string connectionString = "server=\'localhost\'; trusted_connection=true; Database=\'MovieGuide\'";
        System.Data.SqlClient.SqlConnection sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
    
        string queryString = "DELETE FROM [ExistingMovies] WHERE ([ExistingMovies].[InventoryID] = @InventoryID" +
    ")";
        System.Data.SqlClient.SqlCommand sqlCommand = new System.Data.SqlClient.SqlCommand(queryString, sqlConnection);
    
        sqlCommand.Parameters.Add("@InventoryID", System.Data.SqlDbType.Int).Value = inventoryID;
    
        int rowsAffected = 0;
        sqlConnection.Open();
        try {
            rowsAffected = sqlCommand.ExecuteNonQuery();
        }
        finally {
            sqlConnection.Close();
        }
    
        return rowsAffected;
    }
    
    // Global variable to hold the dataset.
    System.Data.DataSet DS;
    
    // Global variable to track the current record.
    static int RecordNumber;
    
    // Perform the required startup tasks.
    void Page_Load(Object sender, EventArgs e)
    {
        // Fill the dataset.
        DS = ExistingMoviesSelect();
    
        if (!Page.IsPostBack)
        {
    
            // Display the data found in the dataset.
            DisplayData();
        }
    }
    
    // This function displays the data.
    void DisplayData()
    {
        // Create a local DataRow to make the code shorter
        // and easier to read.
        System.Data.DataRow DR;
    
        // Initialize the DataRow.
        DR = DS.Tables[0].Rows[RecordNumber];
    
        // Fill each of the text boxes with data.
        txtInventoryID.Text = DR["InventoryID"].ToString();
        txtName.Text = DR["Name"].ToString();
        txtRating.Text = DR["Rating"].ToString();
        if (DR["IsIn"].ToString() == "True")
            cbIsItIn.Checked = true;
        else
            cbIsItIn.Checked = false;
        txtActor.Text = DR["LeadActor"].ToString();
        txtActress.Text = DR["LeadActress"].ToString();
        txtCast.Text = DR["SupportingCast"].ToString();
        txtDirector.Text = DR["Director"].ToString();
        txtProducer.Text = DR["Producer"].ToString();
        txtPurchased.Text = DR["DatePurchased"].ToString();
        txtFormat.Text = DR["Format"].ToString();
        txtDescription.Text = DR["Description"].ToString();
        txtNotes.Text = DR["Notes"].ToString();
    }
    
    void btnNext_Click(Object sender, EventArgs e)
    {
        // Determine if this is the last record.
        if (RecordNumber < DS.Tables[0].Rows.Count - 1)
        {
            // Advance the record number, clear any error
            // message and display the data.
            RecordNumber++;
            lblErrorMessage.Text = null;
            DisplayData();
        }
        else
        {
            // Display an error message.
            lblErrorMessage.Text = "Already at last record!";
            DisplayData();
        }
    }
    
    void btnFirst_Click(Object sender, EventArgs e)
    {
        // Select the first record.
        RecordNumber = 0;
    
        // Clear the error message.
        lblErrorMessage.Text = null;
    
        // Display the information.
        DisplayData();
    }
    
    void btnPrevious_Click(Object sender, EventArgs e)
    {
        // Determine if this is the first record.
        if (RecordNumber == 0)
        {
            // Display an error message.
            lblErrorMessage.Text = "Already at first record!";
            DisplayData();
        }
        else
        {
            // Move back one record, clear any error message
            // and display the data.
            RecordNumber--;
            lblErrorMessage.Text = null;
            DisplayData();
        }
    }
    
    void btnLast_Click(Object sender, EventArgs e)
    {
        // Move to the last record.
        RecordNumber = DS.Tables[0].Rows.Count - 1;
    
        // Clear the error message.
        lblErrorMessage.Text = null;
    
        // Display the data.
        DisplayData();
    }
    
    void btnUpdate_Click(Object sender, EventArgs e)
    {
        int Rows = 0;   // Rows affected by command.
    
        // Update the record.
        Rows = ExistingMoviesUpdate(Int32.Parse(txtInventoryID.Text),
                                    txtName.Text,
                                    txtRating.Text,
                                    txtDescription.Text,
                                    txtActor.Text,
                                    txtActress.Text,
                                    txtCast.Text,
                                    txtDirector.Text,
                                    txtProducer.Text,
                                    txtNotes.Text,
                                    System.DateTime.Parse(txtPurchased.Text),
                                    txtFormat.Text,
                                    cbIsItIn.Checked);
    
        // Verify the changes actually happened.
        if (Rows == 0)
            lblErrorMessage.Text = "Update error! Please check data entries.";
    
        // Reset the dataset so we get an accurate record display.
        DS = ExistingMoviesSelect();
    
        // Display the data.
        DisplayData();
    }
    
    void btnNew_Click(Object sender, EventArgs e)
    {
        int Rows = 0;   // Rows affected by command.
    
        // Insert a new record.
        Rows = ExistingMoviesInsert("Movie Name",
                                    "PG",
                                    "Movie Producer",
                                    System.DateTime.Now,
                                    "DVD",
                                    true);
    
        // Display an error message if the record isn't added.
        if (Rows == 0)
            lblErrorMessage.Text = "Couldn't Add Record!";
    
        // Otherwise, make sure the reader knows to update the record.
        else
            lblErrorMessage.Text = "Click Update when finished.";
    
        // Reset the dataset so we get an accurate record display.
        DS = ExistingMoviesSelect();
    
        // Move to the last record.
        RecordNumber = DS.Tables[0].Rows.Count - 1;
    
        // Display the data.
        DisplayData();
    }
    
    void btnDelete_Click(Object sender, EventArgs e)
    {
        int Rows = 0;   // Rows affected by the command.
        
        // Delete the current record.
        Rows = ExistingMoviesDelete(Int32.Parse(txtInventoryID.Text));
        
        // Display an error message if the record isn't deleted.
        if (Rows == 0)
            lblErrorMessage.Text = "Couldn't Delete Record!";
    
        // Reset the dataset so we get an accurate record display.
        DS = ExistingMoviesSelect();
    
        // Move to the previous record.
        RecordNumber--;
    
        // Display the data.
        DisplayData();
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">The Movie Guide 
        </h1>
        <p>
            <asp:Label id="Label1" style="Z-INDEX: 108; LEFT: 5px; POSITION: absolute" runat="server">Inventory ID:</asp:Label>
            <asp:TextBox id="txtInventoryID" style="Z-INDEX: 135; LEFT: 115px; POSITION: absolute; TOP: 70px" runat="server" ReadOnly="True" Width="140px"></asp:TextBox>
        </p>
        <p>
        </p>
        <p>
            <asp:Label id="Label2" style="Z-INDEX: 110; LEFT: 5px; POSITION: absolute; TOP: 110px" runat="server">Name:</asp:Label>
            <asp:TextBox id="txtName" style="Z-INDEX: 134; LEFT: 115px; POSITION: absolute; TOP: 110px" tabIndex="2" runat="server" Text="<%# Page %>"></asp:TextBox>
            <asp:Label id="Label3" style="Z-INDEX: 112; LEFT: 280px; POSITION: absolute; TOP: 110px" runat="server">Rating:</asp:Label>
            <asp:TextBox id="txtRating" style="Z-INDEX: 113; LEFT: 360px; POSITION: absolute; TOP: 110px" tabIndex="3" runat="server" Text="<%# Page %>"></asp:TextBox>
            <asp:CheckBox id="cbIsItIn" style="Z-INDEX: 114; LEFT: 280px; POSITION: absolute; TOP: 70px" tabIndex="1" runat="server" Text="Is It In?" TextAlign="Left"></asp:CheckBox>
        </p>
        <p>
            <asp:Label id="Label4" style="Z-INDEX: 115; LEFT: 5px; POSITION: absolute; TOP: 150px" runat="server">Actor:</asp:Label>
            <asp:TextBox id="txtActor" style="Z-INDEX: 116; LEFT: 115px; POSITION: absolute; TOP: 150px" tabIndex="4" runat="server" Text="<%# Page %>"></asp:TextBox>
            <asp:Label id="Label5" style="Z-INDEX: 117; LEFT: 280px; POSITION: absolute; TOP: 150px" runat="server">Actress:</asp:Label>
            <asp:TextBox id="txtActress" style="Z-INDEX: 118; LEFT: 360px; POSITION: absolute; TOP: 150px" tabIndex="5" runat="server" Text="<%# Page %>"></asp:TextBox>
        </p>
        <p>
            <asp:Label id="Label6" style="Z-INDEX: 119; LEFT: 5px; POSITION: absolute; TOP: 190px" runat="server">Supporting Cast:</asp:Label>
            <asp:TextBox id="txtCast" style="Z-INDEX: 120; LEFT: 115px; POSITION: absolute; TOP: 190px" tabIndex="6" runat="server" Text="<%# Page %>" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </p>
        <p>
            <asp:Label id="Label7" style="Z-INDEX: 121; LEFT: 5px; POSITION: absolute; TOP: 240px" runat="server">Director:</asp:Label>
            <asp:TextBox id="txtDirector" style="Z-INDEX: 122; LEFT: 115px; POSITION: absolute; TOP: 240px" tabIndex="7" runat="server" Text="<%# Page %>"></asp:TextBox>
            <asp:Label id="Label8" style="Z-INDEX: 123; LEFT: 280px; POSITION: absolute; TOP: 240px" runat="server">Producer:</asp:Label>
            <asp:TextBox id="txtProducer" style="Z-INDEX: 124; LEFT: 360px; POSITION: absolute; TOP: 240px" tabIndex="8" runat="server" Text="<%# Page %>"></asp:TextBox>
        </p>
        <p>
            <asp:Label id="Label9" style="Z-INDEX: 125; LEFT: 5px; POSITION: absolute; TOP: 280px" runat="server">Purchased:</asp:Label>
            <asp:TextBox id="txtPurchased" style="Z-INDEX: 126; LEFT: 115px; POSITION: absolute; TOP: 280px" tabIndex="9" runat="server" Text="<%# Page %>"></asp:TextBox>
            <asp:Label id="Label10" style="Z-INDEX: 127; LEFT: 280px; POSITION: absolute; TOP: 280px" runat="server">Format:</asp:Label>
            <asp:TextBox id="txtFormat" style="Z-INDEX: 128; LEFT: 360px; POSITION: absolute; TOP: 280px" tabIndex="10" runat="server" Text="<%# Page %>"></asp:TextBox>
        </p>
        <p>
            <asp:Label id="Label11" style="Z-INDEX: 129; LEFT: 5px; POSITION: absolute; TOP: 320px" runat="server">Description:</asp:Label>
            <asp:TextBox id="txtDescription" style="Z-INDEX: 130; LEFT: 115px; POSITION: absolute; TOP: 320px" tabIndex="11" runat="server" Text="<%# Page %>" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </p>
        <p>
            <asp:Label id="Label12" style="Z-INDEX: 131; LEFT: 5px; POSITION: absolute; TOP: 370px" runat="server">Notes:</asp:Label>
            <asp:TextBox id="txtNotes" style="Z-INDEX: 132; LEFT: 115px; POSITION: absolute; TOP: 370px" tabIndex="12" runat="server" Text="<%# Page %>" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </p>
        <p>
            <asp:Button id="btnFirst" style="Z-INDEX: 136; LEFT: 5px; POSITION: absolute; TOP: 420px" onclick="btnFirst_Click" tabIndex="13" runat="server" Text="First" Width="80px"></asp:Button>
            <asp:Button id="btnPrevious" style="Z-INDEX: 137; LEFT: 95px; POSITION: absolute; TOP: 420px" onclick="btnPrevious_Click" tabIndex="14" runat="server" Text="Previous" Width="80px"></asp:Button>
            <asp:Button id="btnNext" style="Z-INDEX: 138; LEFT: 185px; POSITION: absolute; TOP: 420px" onclick="btnNext_Click" tabIndex="15" runat="server" Text="Next" Width="80px"></asp:Button>
            <asp:Button id="btnLast" style="Z-INDEX: 139; LEFT: 275px; POSITION: absolute; TOP: 420px" onclick="btnLast_Click" tabIndex="16" runat="server" Text="Last" Width="80px"></asp:Button>
            <asp:Button id="btnUpdate" style="Z-INDEX: 140; LEFT: 365px; POSITION: absolute; TOP: 420px" onclick="btnUpdate_Click" tabIndex="17" runat="server" Text="Update" Width="80px"></asp:Button>
            <asp:Button id="btnNew" style="Z-INDEX: 141; LEFT: 455px; POSITION: absolute; TOP: 420px" onclick="btnNew_Click" tabIndex="18" runat="server" Text="New" Width="80px"></asp:Button>
            <asp:Button id="btnDelete" style="Z-INDEX: 142; LEFT: 545px; POSITION: absolute; TOP: 420px" onclick="btnDelete_Click" tabIndex="19" runat="server" Text="Delete" Width="80px"></asp:Button>
        </p>
        <p>
            <asp:Label id="lblErrorMessage" style="Z-INDEX: 143; LEFT: 5px; POSITION: absolute; TOP: 460px" runat="server" Width="490px" ForeColor="Red"></asp:Label>
        </p>
        <p>
        </p>
    </form>
</body>
</html>
