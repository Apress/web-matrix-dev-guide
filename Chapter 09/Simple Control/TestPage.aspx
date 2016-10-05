<%@ Page Inherits="Microsoft.Saturn.Framework.Mobile.UI.MobilePage, Microsoft.Saturn.Framework.Mobile, Version=0.5.464.0, Culture=neutral, PublicKeyToken=6f763c9966660626" Language="C#" ClassName="TestDate" %>
<%@ Register TagPrefix="Mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
<%@ Register TagPrefix="GetStats" TagName="DateTime" Src="TestDate.ascx" %>
<script runat="server">

    // Insert page code here
    //

</script>
<mobile:Form id="Form1" runat="server">
    <p>
        A Demonstration of the DateTime Control 
    </p>
    <p>
        <GetStats:DateTime id="DateTime1" runat="Server"></GetStats:DateTime>
    </p>
</mobile:Form>