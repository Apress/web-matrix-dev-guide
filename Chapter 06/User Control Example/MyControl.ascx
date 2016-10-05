<%@ Control Language="C#" %>
<script runat="server">

    public String HeaderText
    {
        get { return lblHeader.Text; }
        set { lblHeader.Text = value; }
    }
    
    public String GreetingText
    {
        get { return lblGreeting.Text; }
        set { lblGreeting.Text = value; }
    }

</script>
<h1 align="center">
    <asp:Label id="lblHeader" runat="server">This is the Header</asp:Label>
</h1>
<p align="left">
    <asp:Label id="lblGreeting" runat="server">This is the Greeting</asp:Label>
</p>
