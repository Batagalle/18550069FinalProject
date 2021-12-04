<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Travel_Agency.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login </title>

    <!-- Bootstrap Core CSS -->

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">

    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

    <style>
        #bg {
            position: fixed;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
        }

            #bg img {
                position: absolute;
                top: -472px;
                left: -549px;
                right: -408px;
                bottom: -804px;
                margin: auto;
                min-width: 50%;
                min-height: 50%;
            }

        .auto-style1 {
            width: 98px;
        }
    </style>

    <link href="css/styles.css" rel="stylesheet">

    <style>
        .rundbtn {
            border-radius: 200px;
        }


        .rcorners {
            border-radius: 15px 50px 30px 5px;
            padding: 20px;
            width: 1107px;
            height: 200px;
        }
    </style>

</head>



<body>
    <form id="form1" runat="server">



        <!--login modal-->

        <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">

                        <asp:ScriptManager runat="server" ID="sm">
                        </asp:ScriptManager>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>


                                <h1 class="text-center">
                                    <asp:Label ID="Label5" runat="server" Text="Do You Want To"></asp:Label>
                                </h1>


                                </div>
                    <div class="modal-body">
                        <form class="form col-md-12 center-block">
                            <div class="form-group">


                                <center>
                                            
                                        <asp:Button ID="Button5" runat="server" Text="Explore Our World ?" class="rundbtn btn btn-success" Font-Bold="True" Font-Size="X-Large" OnClick="Button5_Click"/>
                                        <br/>
                                        <asp:Label ID="Label6" runat="server" Text="OR" Font-Size="X-Large"></asp:Label>
                                        <br/>
                                        <asp:Button ID="Button6" runat="server" Text="Login Through Your Account ?" class="rundbtn btn btn-primary" Font-Bold="True" Font-Size="X-Large" OnClick="Button6_Click"/>
                                        
                                        </center>

                                <asp:TextBox ID="TextBox1" runat="server" class="form-control input-lg" placeholder="User Name" Visible="False"></asp:TextBox>
                                <br />

                            </div>
                            <div class="form-group">


                                <asp:TextBox ID="TextBox2" runat="server" class="form-control input-lg" placeholder="Password" TextMode="Password" Visible="False"></asp:TextBox>
                                <center><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></center>
                                <center><asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="Small" ForeColor="Red" Visible="False">Invalid User Name or Password !</asp:Label></center>

                            </div>
                            <div class="form-group">

                                <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" Visible="False" />

                                <span class="pull-left">
                                    <br />

                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="False">Forgot My UserName/Password</asp:LinkButton>
                                    <br />
                                </span>


                                <span class="pull-right">
                                    <br />

                                    <asp:Button ID="Button2" runat="server" Text="Register" class="btn btn-primary btn-sl btn-block" OnClick="Button2_Click" Visible="False" />
                                    <br />
                                </span>

                            </div>

                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <center><h3><asp:Label ID="Label3" runat="server" Text="Forgot Login ?" Visible="False"></asp:Label></h3></center>
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control input-lg" placeholder="Enter Your Email & Click OK" Visible="False"></asp:TextBox>


                            <center> <asp:RegularExpressionValidator runat="server" ErrorMessage="Please Enter Valid Email !" ControlToValidate="TextBox3" Display="Dynamic" Font-Italic="True" Font-Size="Smaller" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ID="RegularExpressionValidator1"></asp:RegularExpressionValidator> </center>
                            <center><asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label></center>

                            <br />
                            <center> 
                                   <asp:Button ID="Button4" runat="server" Text="CANCEL" class="rundbtn btn btn-default" Visible="False" OnClick="Button4_Click"/>
                                   &nbsp;&nbsp;&nbsp;
                                   <asp:Button ID="Button3" runat="server" Text="OK" class="rundbtn btn btn-default" Visible="False" OnClick="Button3_Click"/>                                   
                               </center>
                            </ContentTemplate>
                        </asp:UpdatePanel>
    </form>
    </div>




                    <div class="modal-footer">
                        <div class="col-md-12">
                        </div>
                    </div>


    </div>
            </div>
        </div>
        <!-- script references -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>


    <div id="bg">
        <img src="img/loginimg.jpg"  alt="">
    </div>

    </form>
</body>
</html>
