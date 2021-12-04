<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="helicopter.aspx.cs" Inherits="Travel_Agency.Helicopter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Helicopter</title>

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
            padding: 20px;
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
                      

                        <div class="col-lg-12 text-center">
                            <img class="img-responsive img-border img-full" src="img/Helicopterhd.jpg" alt="">
                            <h2>Helicopter </h2>
                            <hr>
                            <br>


                            <p>
                                Dip your toes in the sands of your private beach. Gaze across our verdant tea country from your colonial tea – planter’s bungalow or relax in 
                                the luxurious surroundings of your hotel or villa, all within an hour of your arrival in Sri Lanka. Deccan Aviation’s luxury services, 
                                featuring the very latest Bell Ranger Helicopters, allow the discerning long distance traveler to create superlative tour plans, 
                                without the need for lengthy journeys by road.
                            </p>
                            <br />
                            <p>Discover how our helicopters allow you to see more of Sri Lanka than a journey on the road – enabling visitors to enjoy the varied beauty of our perfumed land.</p>

                            <br />


                            <ul>
                                <font size="4"> <li>Adams peek at sunrise!</li>
                                <li>A day at the beach!</li>
                                <li> Fly above the waves!</li>
                                <li>Fly over the 8th wonder of the world!</li></font>
                            </ul>

                            <br />
                            <h4><strong>General Notes</strong></h4>
                            <hr>


                            <p>* Names, passport numbers & nationality of passengers are required prior to flying (please email)</p>
                            <p>* Upon confirmation of a booking no refund will be made</p>
                            <p>* All passengers are insured</p>
                            <p>
                                * The carrier reserves the right to delay, extend, reschedule or cancel a flight for operational reasons – bad weather, 
                                VIP movements or other similar situations beyond the immediate control of the carrier. 
                                Carrier shall not, in any circumstances whatsoever be liable or responsible in respect to any inaccuracy, misdescription, 
                                detention, delay, loss, damage, sickness, additional expenses or injury, and of whatever kind occurring to any passenger, 
                                property, or baggage at any time.
                            </p>



                            <hr>
                        </div>

                        <hr class="visible-xs">

                        <asp:Button ID="Button2" runat="server" Text="Back" class="rundbtn btn btn-default" OnClick="Button2_Click" />

                        <div class="form-group col-lg-12">
                        </div>

                    </div>
                </div>
            </div>
        </div>

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


    </form>
</body>
</html>
