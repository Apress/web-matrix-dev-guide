<%@ Page Language="C#" %>
<script runat="server">

    void btnSingle_Click(Object sender, EventArgs e)
    {
        CompNameLib.NameValuesClass   Values;     // CompName Object
        int                           Selected;   // Selected value.
        
        // Initialize the values.
        Values = new CompNameLib.NameValuesClass();
        Selected = Int32.Parse(comboName.SelectedItem.Value);
        
        // Get the single value.
        txtResults.Text = 
        Values.GetCompName((CompNameLib.MYCOMPUTER_NAME_FORMAT)Selected);
    }
    
    void btnAll_Click(Object sender, EventArgs e)
    {
        CompNameLib.NameValuesClass   Values;  // CompName Object
        
        // Initialize the object.
        Values = new CompNameLib.NameValuesClass();
        
        // Get all of the values.
        txtResults.Text = Values.GetAllNames();
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">Computer Name Demonstration 
        </h1>
        <p align="left">
            Select a Computer Name Value for Single Name Tests:<br />
            <asp:DropDownList id="comboName" style="Z-INDEX: 101; POSITION: absolute" accessKey="N" runat="server" Width="500px">
                <asp:ListItem Value="0" Selected="True">ComputerNameNetBIOS</asp:ListItem>
                <asp:ListItem Value="1">ComputerNameDnsHostname</asp:ListItem>
                <asp:ListItem Value="2">ComputerNameDnsDomain</asp:ListItem>
                <asp:ListItem Value="3">ComputerNameDnsFullyQualified</asp:ListItem>
                <asp:ListItem Value="4">ComputerNamePhysicalNetBIOS</asp:ListItem>
                <asp:ListItem Value="5">ComputerNamePhysicalDnsHostname</asp:ListItem>
                <asp:ListItem Value="6">ComputerNamePhysicalDnsDomain</asp:ListItem>
                <asp:ListItem Value="7">ComputerNamePhysicalDnsFullyQualified</asp:ListItem>
                <asp:ListItem Value="8">ComputerNameMax</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
        </p>
        <p>
            Results:<br />
            <asp:TextBox id="txtResults" style="Z-INDEX: 102; POSITION: absolute" runat="server" Width="500px" ReadOnly="True" Height="196px" TextMode="MultiLine" ToolTip="Displays the output of the example."></asp:TextBox>
        </p>
        <p>
            <asp:Button id="btnAll" style="Z-INDEX: 103; LEFT: 20px; POSITION: absolute; TOP: 340px" accessKey="A" onclick="btnAll_Click" runat="server" Text="All Names" ToolTip="Click this button to display all of the name values."></asp:Button>
            <asp:Button id="btnSingle" style="Z-INDEX: 104; LEFT: 380px; POSITION: absolute; TOP: 340px" accessKey="S" onclick="btnSingle_Click" runat="server" Text="Single Name" ToolTip="Click this button to display just one name from the list."></asp:Button>
        </p>
        <p>
        </p>
    </form>
</body>
</html>
