<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Travel_Agency._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours</title>

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
            width: 1107px;
            height: 200px;
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
        <div class="address-bar">2nd floor, Orex City | #19, Ja-Ela | Gampaha. Sri Lanka..</div>

    

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
                    <div class="col-lg-12 text-center">
                        <div id="carousel-example-generic" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators hidden-xs">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="6"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="7"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="8"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="9"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">                               

                                <div class="item active">
                                    <img class="img-responsive img-full" src="img/slide-1.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-2.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-3.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-4.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-5.jpeg" alt="">
                                </div>                                
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-6.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-8.jpg" alt="">
                                </div>
                                 <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-7.jpeg" alt="">
                                </div>
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-9.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="img-responsive img-full" src="img/slide-10.jpg" alt="">
                                </div>
                                                                                              
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="icon-next"></span>
                            </a>
                        </div>
                        <h2 class="brand-before">
                            <small>Welcome to</small>
                        </h2>
                        <h1 class="brand-name">Emerald Tours</h1>
                        <hr class="tagline-divider">

                    </div>
                </div>
            </div>


            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                       
                        <h2 class="intro-text text-center">Hello <asp:Label ID="Label3" runat="server" Text="Traveller"></asp:Label> ! ! !
                            <br />
                            <br />
                            <strong>Welcome to the world of Emerald Tours ! ! !</strong>
                        </h2>
                        <hr>
 
                        <img class="img-responsive img-left" src="img/intro-pic.png" width="250" height="250" alt="">
                        <hr class="visible-xs">
                        <p>
                            <br />
                            <strong>We’re honoured to have you visit our page; let us offer you a personalised holiday experience that’ll leave you with ample memories fit for a lifetime. With the best tour operators assisting us, we assure you of the best service at all times.</strong>
                        </p>

                        <br />
                        <p>

                            <asp:Label ID="Label2" runat="server" Text="PICK UP YOU'R TOUR, SIGN IN FROM HERE ! ! !" ForeColor="Red"></asp:Label>
                            <br />

                            <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="REGISTER" Width="120px" OnClick="Button1_Click" />
                            &nbsp;&nbsp;
                        <asp:Button ID="Button2" class="btn btn-default" runat="server" Text="LOGIN" Width="120px" OnClick="Button2_Click" />

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
                        <center><font size="10"><strong>Smiles & Surprises await you...</strong></font> </center>
                        <hr>

                        <div class="image">
                            <img class="img-responsive rcorners" src="img/image3.jpg" width="1107" height="200" alt="">
                        </div>

                        <p>
                            Boasting unparalleled levels of hospitality,
                            <br />
                            We’re thrilled to invite you to the serendipitous island of Sri Lanka.<asp:Button ID="Button3" runat="server" class="btn btn-default pull-right" Text="View Sri lankan Tours" OnClick="Button3_Click" /><%--<a href="http://www.brownstours.lk/inbound-tours.php" class="pull-right bold">View Sri lankan Tours</a>--%><br />
                            You are assured of spending an indulgent time with a heady blend of cultures...
                        </p>

                        <br />
                        <br />
                        <hr>

                        <center>
                            <p>Come with us to savour the freshest colours, freshest tastes & the freshest spirits as we welcome you to your freshest holiday experience ever. Travel destinations have been explored and spoken about, yet it takes true professional tour operators in Sri Lanka to take you beyond the surface of commercialized travelling into the deepest essence of a holiday! We at Emerald Tours; a professional body among Tour Operators in Sri Lanka, are passionate about revitalizing your spirits and to give you the freshest holiday experience at whatever destination you choose.</p>
                        </center>

                        <center>
                            <p>A tour operator is never a one that works with the mind, but a one that drills the very soul to explore how, when and where a human could feel relaxed and entertained at the same time. Our experience for the past 44 years as one of the leading tour operators in Sri Lanka has brought us to the forefront in the leisure sector. We are proud to have won the hearts of many generations in creating exceptional Inbound Tours (Sri Lankan Holidays).</p>
                        </center>

                        <hr>

                        <div>
                            <br />
                            <font size="5"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shopping in colombo</b>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <b>Dining in colombo</b>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <b>Nightlife in colombo</b></font>
                            <br />
                            <br />
                            <br />

                            <div class="container">
                                <div class="row">
                                </div>
                                <div class="row">


                                    <div class="col-sm-4">
                                        <div class="team-member">
                                            <img src="img/colombo-shopping.jpg" class="img-responsive img-circle" alt="">


                                            <p class="text-muted">For the first-time traveller,Colombo has much to offer as Sri Lanka premier metropolis.Drawing together a combination of culture, modernity and tradition </p>

                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" class="rundbtn btn btn-default" runat="server" Text="GO" OnClick="Button4_Click" />

                                        </div>
                                    </div>



                                    <div class="col-sm-4">
                                        <div class="team-member">

                                            <img src="img/dining.jpg" class="img-responsive img-circle" alt="">


                                            <p class="text-muted">Reflecting the multicultural setting of this tropical island, Colombo has over the years become a hub for mouthwatering global cuisine.</p>

                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                                            <asp:Button ID="Button5" class="rundbtn btn btn-default" runat="server" Text="GO" OnClick="Button5_Click" />
                                        </div>
                                    </div>



                                    <div class="col-sm-4">
                                        <div class="team-member">
                                            <img src="img/night-life.jpg" class="img-responsive img-circle" alt="">


                                            <p class="text-muted">
                                                As one of the most unique destinations in South Asia, Sri Lanka has a certain allure
                                                <br />
                                                to it, attracting thousands of tourists all year round.
                                            </p>

                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                                            <asp:Button ID="Button6" class="rundbtn btn btn-default" runat="server" Text="GO" OnClick="Button6_Click" />
                                        </div>
                                    </div>

                                </div>
                
                            </div>
                        </div>
                
                    </div>

                </div>
            </div>
        </div>




        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>Emerald Tours (Private) Limited</strong>
                    </h2>
                    <hr>

                    <h2 class="intro-text text-center">2nd floor, orex city, #19, ja-ela, gampaha. Sri Lanka.<h2>


                        <br />
                        <h2 class="intro-text text-center"><strong>talk to us</strong> </h2>

                        <h3 class="intro-text text-center">Hotline : 011-1234567   
                            <br />
                            <br />
                            Fax     :  +94 112 345678
                            <br />
                            <br />
                            Email   :&nbsp;emeraldtours.pvtltd@gmail<a href="mailto:emeraldtours.pvtltd@gmail.com">.com</a>
                        </h3>

                </div>
            </div>
        </div>

        </div>
    <!-- /.container -->

        <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Emerald Tours 2021</p>
                </div>
            </div>
        </div>
    </footer>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Script to Activate the Carousel -->
        <script>
            $('.carousel').carousel({
                interval: 5000 //changes the speed
            })
        </script>


       
    </form>

</body>
</html>
