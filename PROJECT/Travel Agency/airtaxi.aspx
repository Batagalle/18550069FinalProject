<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="airtaxi.aspx.cs" Inherits="Travel_Agency.airtaxi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Air Taxi</title>

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
                    
                        <div class="col-lg-12 text-center">
                            <img class="img-responsive img-border img-full" src="img/airtaxihd.jpg" alt="">
                            <h2>Air Taxi </h2>
                            <hr>
                            <br>

                            <p>
                                A way to save your travelling time, the experience of flying with a luxurious air taxi in Sri Lanka affords passengers a bird’s eye 
                                view of the stunning scenery below, whilst significantly reducing surface travel time to destinations across the country. 
                                We at Emerald tours take pleasure in assisting you with your air taxi arrangement in Sri Lanka.
                            </p>
                            <br />
                            <h4><strong>Features</strong></h4>

                            <ul>
                                <font size="4">
                                <li>Seating capacity for 15 passengers</li>
                                <li>Canadian manufactured De Havilland DHC – 6 Series 300 twin otter</li>
                                <li> All landings would be in water</li>
                                <li>2nd aircraft operational by April 2011</li>
                               </font>
                            </ul>
                            <br />

                            <h4><strong>Types of Flights Offered</strong></h4>

                            <ul>
                                <font size="4"> 
                                <li>Scheduled Flights</li>
                                <li>Scenic Flights</li>
                                <li> Charter Flights</li>
                                </font>
                            </ul>

                            <br />

                            <h4><strong>Scheduled Flights at Present</strong></h4>

                            <ul>
                                <font size="4"> 
                                <li>Bentota – On request (with stop en-route to Koggala)</li>
                                <li>Koggala – Daily</li>
                                <li> Dikwella – Daily</li>                                
                               </font>
                            </ul>
                            <br />


                            <h4><strong>Scenic Flights</strong></h4>

                            <ul>
                                <font size="4"> 
                                <li>Colombo – Saturday, Sunday & Public Holidays</li>
                                <li>Bentota/Koggala – On request</li>                                                             
                               </font>
                            </ul>
                            <br />

                            <h4><strong>Charter Flights</strong></h4>

                            Will be operated any day (from 1030-1800hrs) with 24 hrs prior notice to;

                            <ul>
                                <font size="4"> 
                                <li>Bentota (Bentota river)</li>
                                <li>Koggala (Koggala lagoon)</li>                                                             
                                <li>Dikwella (Mawella lagoon)</li>
                                <li>Tissamaharama (Tissa tank)</li>
                                <li>Kandy (Victoria & Polgolla)</li>
                                <li>Ampara (Kondavattavan tank)</li>
                                <li>Nuwara Eliya (Lake Gregory) – to be introduced soon</li>
                                <li>Dambulla (Ibbankatuwa tank) – to be introduced soon</li>
                                <li>Hatton (Castlereagh reservoir) – to be introduced soon</li>
                               </font>
                            </ul>
                            <br />

                        </div>



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
