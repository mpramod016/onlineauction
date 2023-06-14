<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Auction</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }

        .carousel-inner img {
            width: 100%; 
            margin: auto;
            min-height: 200px;
        }
        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }
    </style>
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Online Auction</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="HomePage.aspx">Home</a></li>
                            <li><a href="AboutPage.aspx">About</a></li>
                            <li><a href="LoginPage.aspx">Login</a></li>
                            <li  class="active"><a href="RegistrationPage.aspx">Registration</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container">
                <h1 class="well">Registration For Online Auction</h1>
                    <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
                                 <div class="form-group">
                                    <label>Username</label>
                                     <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="Enter username Here.."></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required." ForeColor="Red" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <label>First Name</label>
                                        <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control" placeholder="Enter First Name Here.."></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required." ForeColor="Red" ControlToValidate="txtfirstname"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <label>Last Name</label>
                                        <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control" placeholder="Enter Last Name Here.."></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required." ForeColor="Red" ControlToValidate="txtlastname"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 form-group">
                                        <label>Email</label>
                                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter Email Here.." ></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="remail" runat="server"
                                            ControlToValidate="txtemail" ErrorMessage="Invail id email"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-sm-4 form-group">
                                        <label>Mobile</label>
                                        <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" placeholder="Enter Mobile Here.."></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="txtmobile" ErrorMessage="enter your mobile number." ForeColor="Red"
                                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-sm-4 form-group">
                                        <label>Gender</label>
                                        <asp:DropDownList ID="GenderDropDown" runat="server" CssClass="form-control">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" placeholder="Enter Address Here." Height="100" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required." ForeColor="Red" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 form-group">
                                        <label>Password</label>
                                        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" placeholder="Enter passwrd Here" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter passeord" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <label>confirm password</label>
                                          <asp:TextBox ID="txtconfirmpassword" runat="server" CssClass="form-control" placeholder="Enter confirm password Here.." TextMode="Password"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Confirm passeord" ControlToValidate="txtconfirmpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                </div>
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit"  
                                     CssClass="btn btn-lg btn-info btn-block" onclick="btnsubmit_Click1"/> 
                            </div>

                    </div>
                    <br />
                    <br />
            </div>
        </div>
        <hr />
          <footer class="container-fluid text-center">
                <p>
                    <h1> Online Auction</h1>
                </p>
            </footer>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
