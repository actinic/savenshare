<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sns.admins.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }

        .auto-style2 {
            width: 140px;
        }

        .jumbotron {
            height: 100vh;
        }

        .margin-top {
            margin-top: 20vh;
        }

        body {
            background: #161616;
            color: #888;
            font-family: 'Ubuntu Mono', sans-serif;
            text-transform: uppercase;
        }

        .box {
            width: 90%;
            max-width: 450px;
            height: auto;
            margin: 0 auto;
            margin-top: 50px;
            background: #222;
            border-radius: 7px;
            box-shadow: 0px 3px 10px 1px rgba(0, 0, 0, 0.9);
        }

        .content {
            width: 85%;
            height: auto;
            margin: 0 auto;
            padding: 30px 0px;
            text-align: center;
        }

            .content h1 {
                font-size: 24px;
                font-weight: 400;
                color: #FFBF00;
                letter-spacing: 0.125em;
                text-align: center;
            }

        .field {
            width: 100%;
            margin: 10px auto;
            padding: 10px;
            background: #2c2c2c;
            border: none;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: none;
            color: #FFBF00;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: uppercase;
        }


        ::-webkit-input-placeholder { /* WebKit browsers */
            color: #5A5A5A;
        }

        :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: #5A5A5A;
        }

        ::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: #5A5A5A;
        }

        :-ms-input-placeholder { /* Internet Explorer 10+ */
            color: #5A5A5A;
        }



        .btn {
            width: 100%;
            margin: 10px auto;
            padding: 10px;
            background: #161616;
            border: none;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: none;
            color: #FFBF00;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: uppercase;
        }

            .btn:hover {
                background: #FFBF00;
                color: #333;
            }

            .btn:active {
                background: #FACC2E;
                color: #333;
            }
    </style>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

    <div class="jumbotron vertical-center">
        <div class="container">
            <form id="form1" class="form-horizontal col-xs-4 col-xs-offset-4 margin-top" runat="server">
                <div class="form-group">
                    <label class="col-md-12 bg-primary text-white text-center">Admin Login</label>
                </div>
                <div class="form-group">
                    
                    <div class="col-sm-9">

                        
                        <asp:Login ID="Login1" runat="server" Style="width: 100%;" OnAuthenticate="ValidateUser">
                            <LayoutTemplate>
                                
                                    
                                        <label for="inputEmail3" class="col-sm-3 control-label">Email</label>
                                        <asp:TextBox CssClass="form-control col-sm-8 col-sm-offset-4" placeholder="Email" ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        <br>
                                        <label for="inputEmail3" class="col-sm-3 control-label">Password</label>
                                        <asp:TextBox CssClass="form-control col-sm-8 col-sm-offset-4" placeholder="password" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        <br><br><br>
                                <div class="col-md-6 col-sm-offset-6 text-center">
                                        <asp:Button CssClass="btn btn-success " ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1"></asp:Button>
                                        <br>
                                    </div>
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                   
                               
                            </LayoutTemplate>
                        </asp:Login>
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
