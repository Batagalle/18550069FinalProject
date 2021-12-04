<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dining.aspx.cs" Inherits="Travel_Agency.dining" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Dining in Colombo</title>

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

        img.center {
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
                        <h2 class="intro-text text-center"><b>Dining in Colombo ! ! ! </b>
                            <br />

                        </h2>
                        <hr>

                        <img class="img-responsive img-left rcorners" src="img/dining_2.jpg" alt="">

                        <hr class="visible-xs">
                        <p>
                            <br />
                            Reflecting the multicultural setting of this tropical island, Colombo has over the years become a hub for mouthwatering global cuisine.
                             Within a small and eminently accessible urban sprawl, are an astonishing number of elegant, chic, exotic and simple dining venues,
                             offering travellers a taste of not just Sri Lankan cuisine, but also vibrant flavours of its neighbouring countries such as India, China,
                             Singapore and Thailand, as well as continental cuisine. 
                        </p>

                        <p>
                            <br />
                            Adding an exciting chapter to your experience in Sri Lanka, the cuisine in this charming island is unlike any other. Owing to colonial influences, 
                            and its social fabric sewn from a multi-ethnic community, the local gastronomic delights are a blend of local spices, organic ingredients and 
                            abundant use of coconut milk. Connoisseurs from around the world often visit this tear-shaped island, as there is much to discover with 
                            a number of newly established hotels and restaurants emerging every year. 
                        </p>

                        <p>
                            <br />
                            With a diversity of flavours ranging from sweet and spicy to sour and pungent, prepare to tantalize your taste buds at any restaurant in Colombo, 
                            either at an upscale venue or at a street shop on Galle Road. If you prefer fine-dining,
                             some of the popular restaurants are The Bavarian German Restaurant and Pub, The Gallery Cafe, Semondu and Tintagel. 
                            For a more laid-back, sophisticated setting, choose among much-loved restaurants such as The Cricket Club Cafe, Park Street Mews, Sugar 41,
                             Ministry of Crab, Colombo Fort Cafe or Bayleaf. Be sure to venture out into the streets of Colombo for a taste of Sri Lankan street food - a favourite pastime among travellers. 
                        </p>

                        <p>
                            <br />
                            The wide variety of cuisine makes dining in Sri Lanka a unique experience in itself,
                             bringing about a transformation of everyday meals into something spicy and exciting,
                             perfectly suited for gourmets who lay a great store by discovering good food. 
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

                        <h1 class="intro-text text-center"><a href="http://theculturetrip.com/asia/sri-lanka/articles/colombo-calling-the-10-best-restaurants-in-the-sri-lankan-capital/?utm_source=emails&utm_medium=external&utm_campaign=19062014colomborestaurants"><font size="6px"><b>The 10 Best Restaurants </b>in the Sri Lanka </font></a></h1>
                        <h2 class="intro-text text-center"><a href="https://www.tripadvisor.com/Restaurants-g293962-Colombo_Western_Province.html"><font size="6px"><b>For More Details</b> </font>Visit www.tripadvisor.com </a></h2>

                        <img class="img-responsive center" src="img/plate1.png" alt="" width="50" height="50">

                        <hr class="tagline-divider">
                        <br />

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
