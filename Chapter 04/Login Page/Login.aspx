<%@ Page Language="C#" ClassName="SecurityTest" %>
<script runat="server">

    void LoginBtn_Click(Object sender, EventArgs e) {
    
        if (Page.IsValid) {
            if ((UserName.Text == "jdoe@somewhere.com") && (UserPass.Text == "password")) {
                FormsAuthentication.RedirectFromLoginPage(UserName.Text, true);
            }
            else {
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
                        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="* You must enter a username!" Display="Static" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:</td>
                    <td>
                        <asp:TextBox id="UserPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="* You must enter a password!" Display="Static" ControlToValidate="UserPass"></asp:RequiredFieldValidator>
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