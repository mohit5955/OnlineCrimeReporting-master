<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <style type="text/css">
        .container {
            margin-top: 8%;
            width: 400px;
            border: ridge 1.5px white;
            padding: 20px;
        }

        body {
            background: #E0EAFC; 
            background: -webkit-linear-gradient(to right, #CFDEF3, #E0EAFC);
            background: linear-gradient(to right, #CFDEF3, #E0EAFC); 
        }
    </style>


</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="fname">Name</label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="354px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Style="position: absolute;"
                    ErrorMessage="RequiredFieldValidator"
                    ForeColor="Red"
                    ControlToValidate="TextBox1">Name is   
        mandatory </asp:RequiredFieldValidator>

            </div>
            <div class="form-group">
                <label for="email">Email</label>&nbsp;
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="354px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Style="position: absolute;"
                    ErrorMessage="Email Required"
                    ForeColor="Red"
                    ControlToValidate="TextBox2"></asp:RequiredFieldValidator>


                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Style="position: absolute;"
                    ErrorMessage="Email not valid"
                    ControlToValidate="TextBox2"
                    ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


            </div>
            <div class="form-group">
                <label for="number">Number</label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Width="354px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Style="position: absolute;"
                    ErrorMessage="Number Required" ForeColor="Red"
                    ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Style="position: absolute;"
                    ControlToValidate="TextBox3" ErrorMessage="Number not valid" ForeColor="Red"
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                <div class="form-group">
                    <label for="gender">Select Gender</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Gender cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>

                    <!--<input type="radio" id="male" name="gender" />
        <label for="male">Male</label>&nbsp;&nbsp;
                <input type="radio" id="female" name="gender" />
        <label for="female">Female</label>&nbsp;&nbsp;
                <input type="radio" id="other" name="gender" />
        <label for="other">Other</label>
            -->
                </div>
            </div>
            <div class="form-group">
                <label for="pass">Password</label>
                <asp:TextBox ID="TextBox4" runat="server" Width="354px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Style="position: absolute;"
                    ErrorMessage="Password required" ForeColor="Red"
                    ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div style="text-align: center">
                <asp:Button ID="Register" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="LoginButton_Click" CausesValidation="true" ValidationGroup="login" />

                <br />
                <a href="index.aspx">Already Have an account</a>
            </div>
            <br />
        </form>
    </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</body>
</html>
