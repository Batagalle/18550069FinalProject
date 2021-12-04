<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepw.aspx.cs" Inherits="Travel_Agency.changepw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emerald Tours - Change Password</title>

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
            height: 100%;
        }

            #bg img {
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                margin: auto;
                min-width: 50%;
                min-height: 50%;
            }
    </style>

    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">

        <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">                       
                        <h1 class="text-center">Change Password</h1>
                    </div>
                    <div class="modal-body">
                        <form class="form col-md-12 center-block">
                            <div class="form-group">
                                
                                <asp:ScriptManager runat="server" ID="sm">
                                </asp:ScriptManager>

                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>

                                        <center> 
                                            <asp:Label ID="Label2" runat="server" Text="Your User Name : " Font-Size="Large"></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="#CC0066"></asp:Label>
                                        </center>
                                        <br />                                        
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control input-lg" placeholder="Enter New Password" TextMode="Password" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        <br />
                                        </div>

                                    <div class="form-group">                                      
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control input-lg" placeholder="Re-Enter Password" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>

                                        <center><asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label></center>

                                    </div>
                                        <div class="form-group">

                                            <asp:Button ID="Button1" runat="server" Text="Change Password" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />

                                            <center>
                                            <asp:Button ID="Button2" runat="server" Text="Register" class="btn btn-primary btn-lg btn-block" OnClick="Button2_Click" Visible="False" />
                                            <asp:Button ID="Button3" runat="server" Text="Login" class="btn btn-primary btn-lg btn-block" OnClick="Button3_Click" Visible="False" />
                                           </center>
                                        </div>
                                              
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
            <img src="img/chngimg.jpg" alt="">
        </div>

    </form>
</body>
</html>
