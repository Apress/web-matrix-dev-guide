<%@ Page Language="C#" ClassName="SecurityTest" %>
<script runat="server">

    void LoginBtn_Click(Object sender, EventArgs e) {
    
        if (Page.IsValid)
        {
            if (FormsAuthentication.Authenticate(UserName.Text, UserPass.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(UserName.Text, true);
            }
            else
            {
                Msg.Text = "Invalid Credentials: Please try again";
            }
        }
    }

</script>
<html>
<head>
</head>
<body style="FONT-FAMILY: arial">
    <form runat="server">
        <h2>Login Page 
        </h2>
        <hr size="1" />
        <table>
            <tbody>
                <tr>
                    <td>
                        Username:</td>
                    <td>
                        <asp:TextBox id="UserName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" Display="Static" ErrorMessage="* You must enter a username!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:</td>
                    <td>
                        <asp:TextBox id="UserPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="UserPass" Display="Static" ErrorMessage="* You must enter a password!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </tbody>
        </table>
        <asp:button id="LoginBtn" onclick="LoginBtn_Click" runat="server" text="Login"></asp:button>
        <p>
            <asp:Label id="Msg" runat="server" ForeColor="red"></asp:Label>
        </p>
    </form>
</body>
</html>
