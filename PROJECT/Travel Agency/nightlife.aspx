<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nightlife.aspx.cs" Inherits="Travel_Agency.nightlife" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Nightlife in Colombo</title>

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
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">My Account</asp:LinkButton>

                </li>
                <li>
                    <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Sign Out</asp:LinkButton>

                </li>
            </ul>
        </div>




        <div class="brand">Emerald Tours</div>
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
                        <h2 class="intro-text text-center"><b>Nightlife in Colombo ! ! ! </b>
                            <br />

                        </h2>
                        <hr>

                        <img class="img-responsive img-left rcorners" src="img/night-life-1.jpg" alt="">

                        <hr class="visible-xs">
                        <p>
                            <br />
                            As one of the most unique destinations in South Asia, Sri Lanka has a certain allure to it, attracting thousands of tourists all year round.
                             A tropical paradise known for its rolling hills of tea, crystal clear streams and cascading waterfalls, 
                            this island offers tourists a journey of a lifetime - perfectly suited for any type of travelling.
                             Prepare to capture stunning landscapes when you visit this charming island, paired with the humble hospitality of Lankan people. 
                        </p>

                        <p>
                            <br />
                            A visit to Sri Lanka is not complete until one has had a taste of the urban lifestyle of Colombo, undoubtedly a metropolis at heart. 
                            From shopping venues to dining hotspots, this city offers a range of activities - ideal for families and friends. At night however,
                             a transformation is seen as the city reinvents itself into a pulsating, after-dark entertainment arena, brimming with bars, nightclubs, 
                            casinos and restaurants.  
                        </p>

                        <p>
                            <br />
                            Coming alive with music, the bars and nightclubs in Colombo tend to bring in countless people, especially during Fridays and Saturdays.
                             Most clubs stay alive and throbbing into the wee hours of the morning, offering many a night to remember.
                             There are many nightclubs within the city limits, including Amuseum, Kama, Rhythm & Blues, Silk and The Library. 
                            The more mature clientèle tend to hang out at pubs where there are often live bands that perform.
                             The pubs in Colombo measure up to remarkable standards and are popular with most tourists. 
                        </p>

                        <p>
                            <br />
                            With an active nightlife, much of the after dark entertainment takes place around the Fort and Cinnamon Gardens area of the city.
                             Scouting the city for such places is quite easy, as Colombo by nature lives up to its reputation, 
                            offering a number of nightspots that cater to everyone who are looking to indulge in entertainment activities.
                        </p>



                        </P>
                    

                    <div class="form-group col-lg-12">
                    </div>

                    </div>
                </div>
            </div>



            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <hr class="tagline-divider">
                        <h1 class="intro-text text-center">For more details  </h1>
                        <hr class="tagline-divider">

                        <table class="center">
                            <tr>
                                <td>
                                    <h1 class="intro-text text-center"><a href="https://www.tripadvisor.com/Attractions-g293962-Activities-c20-t99-Colombo_Western_Province.html">About &nbsp<font size="6px"><b>Bars & Pubs </b></font> </h1>
                                </td>
                                <td>
                                    <img class="img-responsive img-right" src="img/beer.png" alt="" width="50" height="50">
                                </td>
                            </tr>
                       

                            <tr>
                                <td>
                                    <h1 class="intro-text text-center"><a href="https://www.tripadvisor.com/Attractions-g293962-Activities-c20-t99-Colombo_Western_Province.html">About &nbsp<font size="6px"><b>Nightclubs  </b></font> </h1>
                                </td>
                                <td>
                                    <img class="img-responsive img-right" src="img/dance.png" alt="" width="50" height="50">
                                </td>
                            </tr>

                        </table>

                        <br />
                      
                        <hr class="visible-xs">
                        <hr>

                        <asp:Button ID="Button1" runat="server" Text="Back" class="rundbtn btn btn-default" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>



        </div>




        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>Copyright &copy; EmeraldTours 2021</p>
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
