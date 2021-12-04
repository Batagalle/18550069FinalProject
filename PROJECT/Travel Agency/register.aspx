<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Travel_Agency.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration </title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">

    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">


    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">




</head>
<body>
    <form id="form1" runat="server">



        <!-- Top menu -->
        <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <%--<a class="navbar-brand" href="index.html">Bootstrap Registration Form Template</a>--%>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>

                            <span class="li-text">Like us</span>
                            <a href="https://www.facebook.com/"></a>
                            <span class="li-social">
                                <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                            </span>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="li-text">Message us</span>
                            <a href="mailto:emeraldtours.pvtltd@gmail.com"></a>
                            <span class="li-social">                               
                                <a href="mailto:emeraldtours.pvtltd@gmail.comm"><i class="fa fa-envelope"></i></a>
                            </span>


                           
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 text">
                            <h1><strong>Emerald Tours</strong> Registration Form</h1>
                            <div class="description">
                                <p>
                                    <%--This is a free responsive registration form made with Bootstrap. 
	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            --%>

                                    <strong><font color="gray"> Register and make your journey as you want ! ! ! <br/> We'll give you the best of our services ! ! ! </font></strong>
                                </p>
                            </div>
                            <div class="top-big-link">
                              
                                <asp:Button ID="Button2" class="btn btn-link-1" runat="server" Text="Login" OnClick="Button2_Click" CausesValidation="False" />

                            </div>
                        </div>
                        <div class="col-sm-5 form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Sign up now</h3>
                                    <p>Fill in the form below to get instant access:</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-pencil"></i>
                                </div>
                            </div>
                            <div class="form-bottom">

                                <form role="form" action="" method="post" class="registration-form">

                                    <strong>Customer Details </strong>
                                    <br />



                                    
                                    <asp:ScriptManager runat="server" ID="sm">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                    
                                            <div class="form-group">

                                                <asp:TextBox ID="TextBox1" runat="server" name="form-first-name" placeholder="First name..." class="form-first-name form-control"></asp:TextBox>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your First Name !" ControlToValidate="TextBox1" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>

                                            </div>

                                            <div class="form-group">


                                                <asp:TextBox ID="TextBox2" runat="server" name="form-last-name" placeholder="Last name..." class="form-last-name form-control"></asp:TextBox>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Last Name !" ControlToValidate="TextBox2" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>

                                            </div>

                                            <div class="form-group">


                                                <asp:TextBox ID="TextBox3" runat="server" name="form-address" placeholder="Address..." class="form-address form-control"></asp:TextBox>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox3" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>

                                            </div>

                                         
                                            <div class="form-group">

                                                <asp:DropDownList ID="DropDownList1" runat="server" name="form-address" placeholder="Country..." class="form-address form-control" Height="50px" DataTextField="Country" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                         
                                                </asp:DropDownList>  
                                         
                                            </div>
                                                                                    
                                            <div class="form-group">


                                                <asp:TextBox ID="TextBox4" runat="server" name="form-mobile-number" placeholder="Mobile Number..." class="form-mobile-number form-control" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Your Country &amp; Mobile Number !" ControlToValidate="TextBox4" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>
                                                 <center><asp:Label ID="Label2" runat="server" Text="Please Enter  Valid Mobile Number !" Font-Italic="True" Font-Size="Smaller" ForeColor="Red" Visible="False"></asp:Label></center>
                                            </div>


                                            <div class="form-group">


                                                <asp:TextBox ID="TextBox6" runat="server" name="form-email" placeholder="Email..." class="form-email form-control"></asp:TextBox>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Email !" ControlToValidate="TextBox6" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>
                                                <center> <asp:RegularExpressionValidator runat="server" ErrorMessage="Please Enter Valid Email !" ControlToValidate="TextBox6" Display="Dynamic" Font-Italic="True" Font-Size="Smaller" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ID="RegularExpressionValidator1"></asp:RegularExpressionValidator> </center>
                                                <center><asp:Label ID="Label4" runat="server" Text="Email is already exist !" Visible="False" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:Label></center>
                                            </div>
                                            <%--<asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="TextBox" ErrorMessage="Value must be a whole number" />--%>
                                            <%--<asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="TextBox" ErrorMessage="Value must be a whole number between 0 and 400" />--%>
                                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" ValidationExpression="[aA-zZ]"></asp:RegularExpressionValidator>--%>
                                              <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator> "^[0-9*$]"--%>
                                            <br />
                                            <strong>Login Details </strong>
                                            <br />

                                            <div class="form-group">


                                                <asp:TextBox ID="TextBox7" runat="server" name="form-user-name" placeholder="User Name..." class="form-user-name form-control" OnTextChanged="TextBox7_TextChanged" AutoPostBack="True"></asp:TextBox>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Your User Name !" ControlToValidate="TextBox7" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>                                               
                                                <center><asp:Label ID="Label3" runat="server" Text="User name is already exist !" Visible="False" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:Label></center>
                                                
                                            </div>


                                            <div class="form-group">


                                                <asp:TextBox ID="TextBox8" runat="server" name="form-password" placeholder="Password..." class="form-password form-control" TextMode="Password" Height="50px"></asp:TextBox>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Your Password !" ControlToValidate="TextBox8" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>

                                            </div>


                                            <div class="form-group">


                                                <asp:TextBox ID="TextBox9" runat="server" name="form-re-enter-password" placeholder="Re-enter Password..." class="form-re-enter-password form-control" TextMode="Password" Height="50px"></asp:TextBox>
                                                <center><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Enter Your Password Again !" ControlToValidate="TextBox9" Display="Dynamic" Font-Bold="False" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator></center>
                                                <center><asp:CompareValidator runat="server" ErrorMessage="Please Re Enter Your Password Correctly !" ControlToCompare="TextBox8" ControlToValidate="TextBox9" Display="Dynamic" Font-Italic="True" Font-Size="Smaller" ID="CompareValidator1"></asp:CompareValidator></center>
                                            </div>



                                            <br />

                                          
                                            <asp:Button ID="Button3" runat="server" Text="Sign me up!" class="btn btn-link-1" OnClick="Button3_Click" />
                                            <asp:Button ID="Button4" runat="server" Text="Clear" class="btn btn-link-2" OnClick="Button4_Click" CausesValidation="False" />

                                                                                      
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </form>

    <!-- Javascript -->
    <script src="assets/js/jquery-1.11.1.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.backstretch.min.js"></script>
    <script src="assets/js/retina-1.1.0.min.js"></script>
    <script src="assets/js/scripts.js"></script>

    <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</body>
</html>
