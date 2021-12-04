<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tours.aspx.cs" Inherits="Travel_Agency.tours" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Inbound Tours</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <style>
        .rundbtn {
            border-radius: 200px;
        }


        .rcorners {          
            border-radius: 15px 50px 30px 5px;            
            padding: 20px;
            width: 550px;
            height: 368px;
        }

        .rcorners001 {          
            border-radius: 50px 50px 50px 50px;            
        }
    </style>

    <style>
        .table {
            border: 10px;
        }
    </style>

    <style>
        table.center {
            margin-left: auto;
            margin-right: auto;
        }
    </style>



</head>
<body>
    <form id="form1" runat="server">

        <div class="dropdown">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
            <asp:ImageButton ID="dropdownMenu1" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" type="button" ImageUrl="img/down3.png" Width="35" Height="20" />

        
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
        
                <li>
                    <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">My Account</asp:LinkButton>

                </li>
                <li>
                    <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Sign Out</asp:LinkButton>

                </li>
            </ul>
        </div>




        <div class="brand">Emerld Tours</div>
        <div class="address-bar">2nd floor, Orex City | #19, Ja-Ela | Gampaha. Sri Lanka.</div>

        <!-- Navigation -->
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                    <a class="navbar-brand" href="index.aspx">Emerald Tours</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>

                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Home</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">About</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Services</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Tours</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Gallery</asp:LinkButton>
                    </li>
                         <li>

                        <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click" >Feedback</asp:LinkButton>
                    </li> 
                    <li>

                        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Contact</asp:LinkButton>
                    </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>


        <div class="container">

            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center"><b>Inbound Tours ! ! ! </b>
                            <br />

                        </h2>
                        <hr>                                             

                        <hr class="visible-xs">
                        <p>
                            <br />
                            The 'resplendent island' or Sri Lanka, off the southern tip of India, was colonised by the Portuguese,
                             Dutch, and English. Colonial rule is still evident in the capital city's name, Colombo. 
                            Sinhalese and Tamil are Sri Lanka's two official languages, though English is widely used.
                             The culture is greatly influenced by Buddhist and Hindu traditions; the country currently has eight UNESCO World Heritage Sites.
                        </p>

                        <p>
                            <br />
                            There are very few places in the world where you can experience such a variety of countryside and climates: 
                            hot sandy beaches, cool hillside terrains, lush rainforests and elephant-filled national parks. From white-water rafting 
                            in Kitulgala to tea and temples in Kandy, wildlife safaris in Yala to surfing on the south coast: there is a place and pursuit to 
                            suit everyone on this beautiful island.
                        </p>

                        <p>
                            <br />
                            The proud recipient of Lonely Planet's best place to visit in 2013, Sri Lanka will surprise and delight. 
                            It is a country with a long and proud history. You'll be amazed at the diversity of landscapes, 
                            climates and things you can see and do within small travel distances.
                        </p>                     
                    

                    <div class="form-group col-lg-12">
                    </div>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <hr class="tagline-divider">


                        <table class="center">
                            <tr>
                                <td>
                                    <h2 class="intro-text text-center"><b>pick your holiday</b></h2>
                                </td>
                                <td>
                                    <img class="img-responsive center" src="img/pick.png" alt="" width="50" height="50">
                                </td>
                            </tr>
                        </table>


                        <hr class="tagline-divider">
                        <br />
                        <hr>

                        <div class="row">

                            <div class="col-sm-4">
                                <div class="team-member">
                                  
                                    <asp:ImageButton ID="ImageButton1" runat="server" src="img/family escapes.jpg" class="img-responsive rcorners001" alt="" OnClick="ImageButton1_Click"/>
                                       <center><h4><asp:Label ID="Label2" runat="server" Text="FAMILY ESCAPES" ForeColor="#0099FF"></asp:Label></h4></center>

                                    <p class="text-muted">To enjoy family holiday and for children of all ages, Sri Lanka offers you a number of options to choose from.</p>
                                </div>
                            </div>


                            <div class="col-sm-4">
                                <div class="team-member">

                                    <asp:ImageButton ID="ImageButton2" runat="server" src="img/wild life.jpg" class="img-responsive rcorners001" alt="" OnClick="ImageButton2_Click"/>
                                       <center><h4><asp:Label ID="Label3" runat="server" Text="WILD LIFE" ForeColor="#0099FF"></asp:Label></h4></center>

                                    <p class="text-muted">With a spectacular wildlife and splendid array of flora and fauna,Sri Lanka has one of the highest rates of biological endemism...</p>
                                </div>
                            </div>


                            <div class="col-sm-4">
                                <div class="team-member">

                                    <asp:ImageButton ID="ImageButton3" runat="server" src="img/special interest.jpg" class="img-responsive rcorners001" alt="" OnClick="ImageButton3_Click"/>
                                       <center><h4><asp:Label ID="Label4" runat="server" Text="SPECIAL INTEREST TOURS" ForeColor="#0099FF"></asp:Label></h4></center>

                                    <p class="text-muted">Whether You're sporty,arty or simply adventurous,Sri Lanka offers a diverse array of special interest tours across the island...</p>
                                </div>
                            </div>


                            <center><h2>OR</h2></center>
                            <br />

                            <table class="center">
                                <tr>
                                    <td>
                                        <a href="customizetour.aspx">
                                            <img src="img/settings.png" class="img-responsive" alt="" width="50" height="50"></a>
                                    </td>
                                    <td>
                                                                                                                    
                                        <h1><b><asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0099FF" OnClick="LinkButton1_Click">MAKE YOUR OWN TOUR</asp:LinkButton></b></h1>
                                    </td>
                                </tr>
                            </table>
                                                        
                        </div>

                        <hr>
                        <hr class="visible-xs">

                        <asp:Button ID="Button1" runat="server" Text="Back" class="rundbtn btn btn-default" OnClick="Button1_Click" />

                    </div>
                </div>
            </div>
        </div>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>Copyright © Emerald Tours 2021</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </form>

    


</body>
</html>
