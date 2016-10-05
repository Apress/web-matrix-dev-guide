<%@ Page Inherits="Microsoft.Saturn.Framework.Mobile.UI.MobilePage, Microsoft.Saturn.Framework.Mobile, Version=0.5.464.0, Culture=neutral, PublicKeyToken=6f763c9966660626" Language="C#" ClassName="SimpleTest" %>
<%@ Register TagPrefix="Mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
<script runat="server">

    // Insert page code here
    //
    
    void btnTest1_Click(Object sender, EventArgs e)
    {
        // Only work with the control on the first form.
        lblOutput1.Text = "This is the first control form.";
    }
    
    void btnTest2_Click(Object sender, EventArgs e)
    {
        // Only work with the control on the second form.
        txtOutput2.Text = "This is the second control form.";
    }

</script>
<Mobile:Form id="frmWelcome" runat="server" Font-Size="Small" Paginate="True">
    <p>
        <font size="4">Welcome to the<br />
        First Mobile Example</font> 
    </p>
    <p>
        <Mobile:Link id="Link1" runat="server" NavigateUrl="#frmFirstControls">Next Page</Mobile:Link>
    </p>
</Mobile:Form>
<mobile:Form id="frmFirstControls" runat="server" Paginate="True">
    <Mobile:Label id="lblOutput1" runat="server" Alignment="Left">Output</Mobile:Label>
    <Mobile:Command id="btnTest1" onclick="btnTest1_Click" runat="server">
Click Me</Mobile:Command>
    <Mobile:Link id="Link2" runat="server" NavigateUrl="#frmSecondControls">Next Page</Mobile:Link>
</mobile:Form>
<Mobile:Form id="frmSecondControls" runat="server" Paginate="True">
    <Mobile:TextBox id="txtOutput2" runat="server">Some Output</Mobile:TextBox>
    <Mobile:Command id="btnTest2" onclick="btnTest2_Click" runat="server">Click to Test</Mobile:Command>
    <Mobile:Link id="Link3" runat="server" NavigateUrl="#frmWelcome">First Page</Mobile:Link>
</Mobile:Form>