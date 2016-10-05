<%@ Page Language="C#" ClassName="ClassPageTest" %>
<script runat="server">

    // Insert page code here
    //
    
    void btnHypotenuse_Click(Object sender, EventArgs e)
    {
        double   Temp; // Temporary data storage.
    
        // Determine the hypotenuse value.
        Temp = DataCon.MathFunctions.Hypotenuse(
            Double.Parse(txtSide1.Text),
            Double.Parse(txtSide2.Text));
    
        // Modify the hypotenuse text value.
        txtHypotenuse.Text = Temp.ToString();
    }
    
    void btnSide_Click(Object sender, EventArgs e)
    {
        double   Temp; // Temporary data storage.
    
        // Determine the side value.
        Temp = DataCon.MathFunctions.Side(
            Double.Parse(txtHypotenuse.Text),
            Double.Parse(txtSide1.Text));
    
        // Modify the Side2 text value.
        txtSide2.Text = Temp.ToString();
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <h1 align="center">Class Page Demo 
        </h1>
        <p align="left">
            Side 1 Value: 
            <asp:TextBox id="txtSide1" runat="server">3</asp:TextBox>
        </p>
        <p align="left">
            Side 2 Value: 
            <asp:TextBox id="txtSide2" runat="server">4</asp:TextBox>
        </p>
        <p align="left">
            Hypotenuse Value: 
            <asp:TextBox id="txtHypotenuse" runat="server">5</asp:TextBox>
        </p>
        <p align="left">
            <asp:Button id="btnHypotenuse" accessKey="H" onclick="btnHypotenuse_Click" runat="server" ToolTip="Click this button to calculate the hypotenuse value." Text="Hypotenuse Calculation"></asp:Button>
            <asp:Button id="btnSide" accessKey="S" onclick="btnSide_Click" runat="server" ToolTip="Use this button to calculate the value of the second side." Text="Side Calculate"></asp:Button>
        </p>
    </form>
</body>
</html>
