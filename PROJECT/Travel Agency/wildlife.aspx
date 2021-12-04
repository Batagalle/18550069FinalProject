<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wildlife.aspx.cs" Inherits="Travel_Agency.wildlife" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Wild Life</title>

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

        .rcorners002 {            
            border-radius: 20px 20px 20px 20px;            
        }

        .rcorners003 {            
            border-radius: 50px 50px 0px 0px;            
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
        .auto-style1 {
            width: 25px;
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
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">My Account</asp:LinkButton>

                </li>
                <li>
                    <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Sign Out</asp:LinkButton>

                </li>
            </ul>
        </div>



        <div class="brand">Emerald Tours</div>
        <div class="address-bar">2nd floor, Orex city | #19, ja-Ela | Gampaha. Sri Lanka.</div>

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

                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">About</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Services</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Tours</asp:LinkButton>
                    </li>
                    <li>

                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Gallery</asp:LinkButton>
                    </li>
                         <li>

                        <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Feedback</asp:LinkButton>
                    </li> 
                    <li>

                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Contact</asp:LinkButton>
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
                        <h2 class="intro-text text-center"><b>Wild Life ! ! ! </b>
                            <br />

                        </h2>
                        <hr>



                        <img class="img-responsive img-left rcorners002" src="img/elephant.png" alt="">


                        <hr class="visible-xs">

                        <p>
                            <center><font size="3"> 
                           With a spectacular and splendid array of flora and fauna, Sri Lanka is recognized to posess one of the highest rates of biological endemism 
                                in the world. For an island just 65, 610 sq km or 25,332 sq.miles in size this island is packed with more than 91 species of terrestrial 
                                mammalians, 28 marine mammals and more than 430 species of bird in the country. Some of the largest like the Elephant, Blue Whale, Sloth Bear, 
                                Leopard inhabit the island and it’s seas. As a bio diversity hot spot some 17 mammals and 33 species of birds are endemic to Sri Lanka. 
                                In comparison to many other countries , Sri Lanka attaches great importance in protecting it’s wild that range from montane forests to tropical 
                                thorn scrub jungles totaling a land mass of 26.5 % in protected areas. Most of them have well established facilities for tourists and Emerald Tours vows to present an adventurous wildlife excursion you have never witnessed before.
                               </font></center>
                        </p>



                        <div class="form-group col-lg-12">
                        </div>

                    </div>
                </div>
            </div>


            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                                              
                        <hr>

                       
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="team-member">
                                    
                                        <img src="img/leopard.jpg" class="img-responsive rcorners003" alt="">                                    
                                        <center><h4>A Wild Tour</h4></center>
                                    
                                    <p class="text-muted">Eight days are definitely not enough for you to absorb all the thrills the wild life has to offer...</p>
                                </div>

                                <table class="center">
                                    <tr>
                                        <td>
                                            <h2>08</h2>
                                        </td>
                                        <td>
                                            <img src="img/day.png" class="img-responsive" alt="" width="75" height="75"></a>
                                        </td>
                                        <td class="auto-style1"></td>
                                        <td>
                                            <h2>07</h2>
                                        </td>
                                        <td>
                                            <img src="img/night.png" class="img-responsive" alt="" width="63" height="63"></a>
                                        </td>
                                        <td class="auto-style1"></td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="Read More" class="rundbtn btn btn-default" OnClick="Button2_Click" />
                                        </td>                                      
                                    </tr>
                                </table>                                                                
                            </div>



                            <div class="col-sm-4">
                                <div class="team-member">
                                    
                                        <img src="img/chick.jpg" class="img-responsive rcorners003" alt="">                                    
                                        <center><h4>Nature and Us</h4></center>
                                    
                                    <p class="text-muted">With a spectacular wildlife, exhilarating safari rides, and splendid array of flora and fauna, Sri Lanka has...</p>
                                </div>

                                <table class="center">
                                    <tr>
                                        <td>
                                            <h2>10</h2>
                                        </td>
                                        <td>
                                            <img src="img/day.png" class="img-responsive" alt="" width="75" height="75"></a>
                                        </td>
                                        <td class="auto-style1"></td>
                                        <td>
                                            <h2>09</h2>
                                        </td>
                                        <td>
                                            <img src="img/night.png" class="img-responsive" alt="" width="63" height="63"></a>
                                        </td>
                                        <td class="auto-style1"></td>
                                        <td>
                                            <asp:Button ID="Button3" runat="server" Text="Read More" class="rundbtn btn btn-default" OnClick="Button3_Click" />
                                        </td>                                      
                                    </tr>
                                </table>
                            </div>



                            <div class="col-sm-4">
                                <div class="team-member">
                                    
                                        <img src="img/wild.jpg" class="img-responsive rcorners003" alt="">                                    
                                        <center><h4>Let's Go Wild</h4></center>
                                    
                                    <p class="text-muted">With 12 per cent of the country designated for wildlife protection it is easy to get a taste of Sri Lankan wildlife...</p>
                                </div>

                                <table class="center">
                                    <tr>
                                        <td>
                                            <h2>15</h2>
                                        </td>
                                        <td>
                                            <img src="img/day.png" class="img-responsive" alt="" width="75" height="75"></a>
                                        </td>
                                        <td class="auto-style1"></td>
                                        <td>
                                            <h2>14</h2>
                                        </td>
                                        <td>
                                            <img src="img/night.png" class="img-responsive" alt="" width="63" height="63"></a>
                                        </td>
                                        <td class="auto-style1"></td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" Text="Read More" class="rundbtn btn btn-default" OnClick="Button4_Click" />
                                        </td>                                      
                                    </tr>
                                </table>
                            </div>
                           
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
                        <p>Copyright &copy; Emerald Tours 2015</p>
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
