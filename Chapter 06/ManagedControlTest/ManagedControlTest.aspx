<%@ Page Language="C#" %>
<%@ Register TagPrefix="MyWebControl" Namespace="MyWebControl" Assembly="MyWebControl" %>
<script runat="server">

    // Insert page code here
    //
    
    void btnSubmit_Click(Object sender, EventArgs e)
    {
        // Set the common settings.
        SpecialHeader1.Centered = cbCentered.Checked;
        SpecialHeader1.HeaderLevel = Int32.Parse(comboSize.SelectedItem.Value);
        SpecialHeader1.Width = Int32.Parse(txtDisplayWidth.Text);
        SpecialHeader1.BorderStyle = (BorderStyle)comboBorder.SelectedIndex;
        SpecialHeader1.BorderWidth = Int32.Parse(txtWidth.Text);
    
        // Set the absolute positioning settings.
        SpecialHeader1.AbsolutePosition = cbAbsolute.Checked;
        SpecialHeader1.Top = Int32.Parse(txtTop.Text);
        SpecialHeader1.Left = Int32.Parse(txtLeft.Text);
        SpecialHeader1.HeaderSubstitute = cbHeaderSubst.Checked;
    
        // Determine how to set the display for the header level.
        if (cbAbsolute.Checked)
        switch (comboSize.SelectedIndex)
        {
            case 0:
                SpecialHeader1.Font.Size = FontUnit.XLarge;
                break;
            case 1:
                SpecialHeader1.Font.Size = FontUnit.Large;
                break;
            case 2:
                SpecialHeader1.Font.Size = FontUnit.Medium;
                break;
            case 3:
                SpecialHeader1.Font.Size = FontUnit.Small;
                break;
            case 4:
                SpecialHeader1.Font.Size = FontUnit.XSmall;
                break;
        }
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <p>
            <MyWebControl:SpecialHeader id="SpecialHeader1" runat="server" AbsolutePosition="False" Centered="True" HeaderLevel="1" Text="This is the Special Header Control" Width="800px" BorderStyle="None" BorderWidth="1px"></MyWebControl:SpecialHeader>
        </p>
        <p>
            Header Size: 
            <asp:DropDownList id="comboSize" runat="server">
                <asp:ListItem Value="1" Selected="True">H1</asp:ListItem>
                <asp:ListItem Value="2">H2</asp:ListItem>
                <asp:ListItem Value="3">H3</asp:ListItem>
                <asp:ListItem Value="4">H4</asp:ListItem>
                <asp:ListItem Value="5">H5</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:CheckBox id="cbCentered" runat="server" Text="Centered In Display Area?" TextAlign="Left" Checked="True"></asp:CheckBox>
        </p>
        <p>
            Display Area Width: 
            <asp:TextBox id="txtDisplayWidth" runat="server" Width="60px">800</asp:TextBox>
        </p>
        <p>
            Border Style: 
            <asp:DropDownList id="comboBorder" runat="server">
                <asp:ListItem value="Notset">NotSet</asp:ListItem>
                <asp:ListItem Value="None" Selected="True">None</asp:ListItem>
                <asp:ListItem Value="Dotted">Dotted</asp:ListItem>
                <asp:ListItem Value="Dashed">Dashed</asp:ListItem>
                <asp:ListItem Value="Solid">Solid</asp:ListItem>
                <asp:ListItem Value="Double">Double</asp:ListItem>
                <asp:ListItem Value="Grove">Grove</asp:ListItem>
                <asp:ListItem Value="Ridge">Ridge</asp:ListItem>
                <asp:ListItem Value="Inset">Inset</asp:ListItem>
                <asp:ListItem Value="Outset">Outset</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Border Width: 
            <asp:TextBox id="txtWidth" runat="server" Width="50px">1</asp:TextBox>
        </p>
        <p>
            <asp:CheckBox id="cbAbsolute" runat="server" Text="Absolute Label Positioning?" TextAlign="Left"></asp:CheckBox>
        </p>
        <p>
            Top (Absolute Positioning): 
            <asp:TextBox id="txtTop" runat="server" Width="50px">0</asp:TextBox>
        </p>
        <p>
            Left (Absolute Positioning): 
            <asp:TextBox id="txtLeft" runat="server" Width="50px">0</asp:TextBox>
        </p>
        <p>
            <asp:CheckBox id="cbHeaderSubst" runat="server" Text="Header Subtitute? (Absolute Positioning)" TextAlign="Left"></asp:CheckBox>
        </p>
        <p>
            <asp:Button id="btnSubmit" onclick="btnSubmit_Click" runat="server" Text="Submit Changes"></asp:Button>
        </p>
    </form>
</body>
</html>
