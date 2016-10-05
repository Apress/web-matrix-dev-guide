<%@ Control Inherits="Microsoft.Saturn.Framework.Mobile.UI.MobileUserControl, Microsoft.Saturn.Framework.Mobile, Version=0.5.464.0, Culture=neutral, PublicKeyToken=6f763c9966660626" Language="C#" ClassName="TestDate" Debug="False" %>
<%@ Register TagPrefix="Mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
<script runat="server">

    // Keep track of the date status.
    bool _IsDate;
    
    void btnTimeDate_Load(Object sender, EventArgs e)
    {
        // Display the current date.
        btnTimeDate.Text = DateTime.Now.ToLongDateString();
    
        // Set the date status.
        _IsDate = true;
    }
    
    void btnTimeDate_Click(Object sender, EventArgs e)
    {
        // Determine the date status. Set the date or time
        // as appropriate, along with the state.
        if (_IsDate)
        {
            btnTimeDate.Text = DateTime.Now.ToLongTimeString();
            _IsDate = false;
        }
        else
        {
            btnTimeDate.Text = DateTime.Now.ToLongDateString();
            _IsDate = true;
        }
    }
    
    // Provide a property for getting and setting the date state.
    bool IsDateSet
    {
        get { return _IsDate; }
        set { _IsDate = value; }
    }

</script>
<Mobile:Command id="btnTimeDate" onclick="btnTimeDate_Click" runat="server" OnLoad="btnTimeDate_Load" Format="Link">Command</Mobile:Command>