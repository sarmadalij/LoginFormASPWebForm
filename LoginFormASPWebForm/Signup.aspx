<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="LoginFormASPWebForm.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 146px;
        }
         table {
             margin:auto;
             width:550px;
             border:5px black ridge;
            }
    </style>

     <script type="text/javascript">

     function ShowPassword(checkBox) {

         var PassTextBox = document.getElementById('PasswordBox');
         var ConfirmPassTextBox = document.getElementById('ConfirmPasswordBox');

         if (checkBox.checked == true) {
             PassTextBox.setAttribute("type", "text");
             ConfirmPassTextBox.setAttribute("type", "text");
         } else {
             PassTextBox.setAttribute("type", "password");
             ConfirmPassTextBox.setAttribute("type", "password");
         }

     }
     </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="5" cellspacing="6">
                <tr>
                    <td colspan="2" style="text-align:center; font-size:30px;">Signup Form</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">First Name:</td>
                    <td>
                        <asp:TextBox ID="FirstName" runat="server" Width="281px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please enter first name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="FirstName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name:</td>
                    <td>
                        <asp:TextBox ID="LastName" runat="server" Width="280px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please enter last name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="LastName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Username</td>
                    <td>
                        <asp:TextBox ID="Username" runat="server" Width="278px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please enter Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="Username">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="146px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select" runat="server" Display="Dynamic" ErrorMessage="Please select a gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td>
                        <asp:TextBox ID="EmailText" runat="server" Width="274px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please enter Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailText">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailText" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address:</td>
                    <td>
                        <asp:TextBox ID="AddressText" runat="server" Width="273px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please enter your address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AddressText">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="PasswordBox" runat="server" Width="274px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PasswordBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordBox" Display="Dynamic" ErrorMessage="Enter a strong password" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&amp;*])[A-Za-z\d!@#$%^&amp;*]{8,}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="ConfirmPasswordBox" runat="server" Width="278px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ConfirmPasswordBox">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordBox" ControlToValidate="ConfirmPasswordBox" Display="Dynamic" ErrorMessage="Confirm Password does not match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                         <input type="checkbox" onclick= "ShowPassword(this)"/>  show password</td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="ButtonSignup" runat="server" Text="Sign Up" Width="128px" OnClick="ButtonSignup_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                         Already have an account? <a href="Login.aspx"> Login Now</a>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
