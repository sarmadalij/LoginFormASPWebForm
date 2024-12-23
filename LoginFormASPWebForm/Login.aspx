<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginFormASPWebForm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 190px;
        }
        .auto-style3 {
            width: 430px;
        }

        table {
            margin:auto;
            width:400px;
            border:5px black ridge;
        }
        .loginHeading{
            text-align:center;
            font-size:30px;
        }
    </style>

    <script type="text/javascript">

        function ShowPassword(checkBox) {

            var PassTextBox = document.getElementById('TextBox2');

            if (checkBox.checked == true) {
                PassTextBox.setAttribute("type", "text");
            } else {
                PassTextBox.setAttribute("type", "password");
            }

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="5" cellspacing="6" >
                <tr>
                    <td colspan="2" class="loginHeading" >Login</td>
                </tr>
                <tr>
                    <td class="auto-style2">User Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" EnableTheming="True" ErrorMessage="Username cannot be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="227px" TextMode="Password"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Password cannot be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                   <%-- <td class="auto-style3">
                       <input type="checkbox" onchange="document.getElementById('TextBox2').type = this.checked ? 'text' : 'password' "/> 
                        show password</td>--%>

                     <td class="auto-style3">
                     <input type="checkbox" onclick= "ShowPassword(this)"/> 
                        show password</td>

                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"> 
                       Don't have an account? <a href="Signup.aspx"> Create Now</a>
                    </td>
                </tr>
            </table>

        </div>
    </form>

</body>
</html>
