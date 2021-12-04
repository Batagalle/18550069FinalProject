<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Travel_Agency.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - About</title>

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

</head>
<body>
    <form id="form1" runat="server">

        <div class="dropdown">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
            <asp:ImageButton ID="dropdownMenu1" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" type="button" ImageUrl="img/down3.png" Width="35" Height="20" />

            <span class="caret"></span>
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

                        <h2 class="intro-text text-center"><b>The Freshest Concept</b></h2>
                        
                    <hr>
                    </div>
                    <div class="col-md-6">
                        <img class="img-responsive img-border-left" src="img/emerald.png" alt="">
                    </div>
                    <div class="col-md-6">

                        <p>
                            "Our ethos is based on offering the freshest travel experience possible, and this is reflected in our tag line - “the freshest experience in travel”.
                            <br />
                            <br />
                            As a travel company that is both committed and organized, we hope to provide you with a tailor-made travel adventure that is unlike any other.
                            <br />
                            <br />
                            The inspiration of this unique concept comes from the national flower of Sri Lanka, which is the Blue Water Lily or the Nil Manel."
                        </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>




            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">About
                        <strong>Emerald Tours</strong>
                        </h2>
                        <hr>
                    </div>
                    <center><p>Having been imbued with a sense of service that is professional and honest, 
                        Emerald Tours has been in the business of offering bespoke tours for discerning tourists for over 10 years. 
                        The many years that have been spent in serving a global clientèle has helped Emerald Tours to make a name for itself in the tourism sphere. 
                        </p> </center>
                    <br />
                    <br />
                    <center><h4 class="intro-text text-center">Please visit us at our conveniently located office at</h4> 
                    <h2>2nd floor, Orex City , #19, JA-ELA, Gampaha</h2></center>

                    <div class="clearfix"></div>
                </div>
            </div>


            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">About
                        <strong>Inbound Travel</strong>
                        </h2>
                        <hr>
                    </div>
                    <center><p>We treasure offering a superlative service, and this is why we are focused in ensuring all our clients have a satisfactory experience. 
                        While we do offer an array of services, Emerald Tours specialises in in-bound travel to Sri Lanka and the Maldives. As part of our service portfolio, 
                        which is branded as “Holiday Sri Lanka”, we offer round tours, accommodation options, transfers, and other services within Sri Lanka for 
                        both local and international travellers. </p> </center>
                    <br />

                    <br />
                    <center><p>With a dedicated team that has been nurtured with international exposure, we assure our clients of a satisfactory experience 
                    that is sure to be memorable. </p> </center>

                    <br />

                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>Services</strong>
                    </h2>
                    <hr>

                    <center><p>We take pride in building up the array of services throughout the years. <br/> Today, in Sri Lanka , we are well-versed in 
                    offering transfers, accommodation, from standard category to boutique and up market luxury hotels, excursions, handling of cruises, round tours, 
                    adventure and nature tours, MICE, beach stays, special meet and greet service & special interest tours, crafted to the specified need of clients.<br/> 
                    </p></center>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>



        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>Emerald Tours (pvt)Ltd</strong>
                    </h2>
                    <hr>

                    <h2 class="intro-text text-center">2nd floor, orex city, #19, ja-ela, gampaha. Sri Lanka.<h2>


                        <br />
                        <h2 class="intro-text text-center"><strong>talk to us</strong> </h2>

                        <h3 class="intro-text text-center">Hotline : 011-2940349   
                            <br />
                            <br />
                            Fax : +94 112 572307
                            <br />
                            <br />
                            Email   :&nbsp;<a href="mailto:emeraldtours.pvtltd@gmail.com">emeraldtours.pvtltd@gmail.com</a>
                        </h3>
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

    </form>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>
