<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="specialinterest003.aspx.cs" Inherits="Travel_Agency.specialinterest003" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Special Interest Tours</title>

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
    </style>


    <style>
        .div123 {            
            padding: 5px 20px;
            background: #467BF7;
            width: 900px;
            border-radius: 25px;
        }

        .div456 {            
            padding: 5px 20px;
            background: #89ABFA;
            width: 900px;
            border-radius: 25px;
        }

        .div789 {            
            padding: 5px 20px;
            background: #3862C6;
            width: 900px;
            border-radius: 25px;
        }
    </style>
    
    <link rel="stylesheet" type="text/css" media="screen" href="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.css" />
    <style type="text/css">
        a.fancybox img {
            border: none;
            box-shadow: 0 1px 7px rgba(0,0,0,0.6);
            -o-transform: scale(1,1);
            -ms-transform: scale(1,1);
            -moz-transform: scale(1,1);
            -webkit-transform: scale(1,1);
            transform: scale(1,1);
            -o-transition: all 0.2s ease-in-out;
            -ms-transition: all 0.2s ease-in-out;
            -moz-transition: all 0.2s ease-in-out;
            -webkit-transition: all 0.2s ease-in-out;
            transition: all 0.2s ease-in-out;
        }

        a.fancybox:hover img {
            position: relative;
            z-index: 999;
            -o-transform: scale(1.03,1.03);
            -ms-transform: scale(1.03,1.03);
            -moz-transform: scale(1.03,1.03);
            -webkit-transform: scale(1.03,1.03);
            transform: scale(1.03,1.03);
        }
    </style>
     

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

    <script type="text/javascript" language="javascript">
        $(function () {
            $("#<%=TextBox1.ClientID %>").datepicker({
                showOn: "button",
                buttonImage: "img/calender.png",
                buttonImageOnly: true,
                buttonText: "Select date"
            });
        });
    </script>
 
</head>
<body>
    <form id="form1" runat="server">

        <div class="dropdown">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
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
                    <a class="navbar-brand" href="index.aspx">emerald Tours</a>
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
                        <h2 class="intro-text text-center"><b>Archaeological Tour ! ! ! </b>
                            <br />

                        </h2>
                        <hr>



                        <img class="img-responsive img-left rcorners002" src="img/special interest3.jpg" alt="">


                        <hr class="visible-xs">

                        <p>
                            <center><font size="3"> 
                            Sri Lanka is known for its marvellous history and heritage, where great kings, brave hearts and creative souls done wonders during the Sri Lankan time line.
                               </font></center>
                        </p>
                        <p>
                            <center><font size="3"> 
                            Later the Portuguese, Dutch and the British left traces of their colonial rule which will intrigue and mesmerize you.
                               </font></center>
                        </p>
                        <br />
                        <br />

                        <table>
                            <tr>
                                <td>
                                    <h4>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" Text="Site Map"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <center><img class="img-responsive img-left rcorners002 fancybox" src="img/thumb-map.jpg" data-big="img/maps/Archaeological Tour.jpg" alt=""> </center>
                                </td>
                                <td>
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img/dwnld.png" Width="75px" Height="75px" Enabled="False" />                                                                        
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Download PDF" class="rundbtn btn btn-default" OnClick="Button2_Click" />                                    
                                </td>
                            </tr>
                        </table>
                        <hr />

                        <div class="form-group col-lg-12">
                        </div>


                        <div class="tourIte">
                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 01</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">AIRPORT - NEGOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                            Arrival at Colombo International Airport will be met by a representative and transfer to Negombo
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            Check in at the hotel
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            Afternoon visit the Dutch Fort, Dutch Church and go for a boat ride in the Hamilton Dutch canal and visit some of the old Churches in Negombo.
                                        </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white">Overnight stay in Negombo </font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 02</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NEGOMBO - COLOMBO - NEGOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast leave for Colombo, visiting Kelaniya Buddhist Temple on the way. Visit Wolvendaal Dutch Church, 
                                            remains of Portuguese & Dutch fortifications in the Fort area, Kayman's Gate and the flight of steps at the Commercial Bank Building, 
                                            the Dutch Period Museum, the Dutch Hospital and other sites.
                                         </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            Thereafter visit the National Museum.
                                         </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            After visiting Gotami Vihara (Borella) to see the use of modern art forms (cubism) in Buddhist Paintings.
                                         </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            On completion return to Negombo
                                         </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay in Negombo</font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 03</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NEGOMBO - ANURADHAPURA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast leave for Anuradhapura via Giriulla, Narammala & Kurunegala.
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Visit Dambadeniya, the Capital of Sri Lanka from 1232 A.D. - 1282 A.D. See the remains of the Moat, Walls, 
                                        Palace & other buildings of the Fort. Visit Wijayasundararama Temple to see the well preserved Temple of the Sacred Tooth Relic, 
                                        the murals, Dagaba, Sacred Bo-tree etc.At Kurunegala visit Ibbagala Temple and see the rock-cut Foot-Print of the Buddha, 
                                        constructed as a replica of the foot print at the Temple at Adam's Peak, to satisfy the desire of the mother of the King. 
                                        Visit "Maligawa" premises and see the remains of the Palace etc. of the Kurunegala Kingdom (1293 - 1341 A.D.)
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternoon proceed to Padeniya (Puttalam road). Visit the Temple - to see beautiful Kandy period murals, wood carvings 
                                        and a rare "Welipilla" - a raised plinth covered with sand used for teaching the alphabet to novices and pupils.
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Visit Yapahuwa (capital for 12 years 1272-1284 A.D.) Fortress to see murals, moats & walls, Tooth Relic Temple and the 
                                        exquisitely carved staircase. Also visit the Haththikuchcha Temple at Rajangane to see the remains of a Monastry complex. 
                                        Then leave for Anuradhapura.
                                        </font>
                                    </p>

                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay at Anuradhapura</font>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 04</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">KITHULGALA - KNUCKLES</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast visit Abayagiriya Monastery complex, Jetavanarama Monastery complex and Archaeologists.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternoon see the monuments at Anuradhapura including the Old Stone Bridge, Western Monasteries, Asokaramaya, 
                                        Alms Hall at Abayagiriya, the Museum, Royal Palace, (old) Temple of the Tooth Relic, Vessagiriya caves, Sacred Bo-Tree, 
                                        Ruwanveliseya, Isurumuniya, Jetawanaramaya, Abhayagiriya and the Thuparama Dagabas
                                            </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white"> Overnight stay at Anuradhapura</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 05</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">ANURADHAPURA - MIHINTALE - POLONNARUWA - GIRITALE</font></h4>
                                    <p>
                                        <font size="2">
                                      After breakfast proceed to Minintale - the “Cradle of Buddhism in Sri Lanka”, Climb 1840 steps and see the Ambastala Dagaba, 
                                      Aradhana gala, Maha Thupa, Kantaka Cetiya, Naga & Kaludiya Pokuna, Indikatu Seya, the old Hospital etc. Then proceed to Habarana. 
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                      Afternoon proceed to Polonnaruwa. See the monuments including the Royal Palace & Audience Halls of King Parakramabahu I (1153 - 1186 A.D) 
                                      and King Nissankamalla (1187-1196). Thuparama, Vata-da-ge, Heta-da-ge, Pabalu Vehera, Siva Devala, Menik Dagaba, Rankot Vehera, 
                                      Baddhasimaprasada, Lankatilaka, Gal Vihara - to see the 4 rock-cut Buddha statues, Tivanka Image House - beautiful 12th C.A.D. 
                                      murals on the walls etc. and the old Hospital where surgical instruments were found.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">
                                            Then visit "Pothgul Vehera" and Parakrama statue.<br/>
                                            Overnight stay at Girithale

                                        </font>

                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 06</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">GIRITALE - SIGIRIYA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast leave for Sigiriya. On the way proceed to Medirigiriya to see the most beautiful Circular 
                                            Relic House (Vata-da-ge) in the island - a unique design of Sinhala architects; two shrine rooms in ruins with 
                                            their statues and the remains of an old hospital.        
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            Afternoon visit and Climb the Sigiriya - the “Fortress in the Sky” and see the remains of the Palace on the summit, 
                                            Lion-staircase, Sigiri Graffiti (5th -13th C.A.D.) the Mirror Wall, Paintings of the Damsels-Light coloured (Vijjulatha) and 
                                            Dark coloured (Meghalatha) in "fresco-en-secco" and the beautifully designed Pleasure Garden (Water garden, boulder garden), 
                                            the caves with pre-Christian inscriptions, remains of inner & outer fortifications.        
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            Also visit Pidurangala Temple. See the caves with inscriptions, old statue, ponds, remains of dagabas on the top of the rock, 
                                            a pillared hall and a large stupa, supposed to be the cremation site of King Kassapa. (477-495 A.D.)       
                                            </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white">Overnight stay at Sigiriya</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 07</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">SIGIRIYA - DAMBULLA - SIGIRIYA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast proceed to Avukana via Kekirawa. Visit Vijithapura Temple and see the large number of ruins there. 
                                            See the beautiful 46 ft. high standing Buddha at Avukana (5th C.A.D) and proceed to Resvehera Temple via Negampaha. 
                                            See the standing statue in high-relief in a niche of the rock, the shrine room with paintings, 
                                            and large reclining Buddha statue and several caves with inscriptions from pre-Christian time. After proceed to Dambulla.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            Afternoon visit the Dambulla Cave Temple. (5 caves) dating from 1st C.B.C. to 18th C.A.D. These Temples 
                                            contains the largest painted surface of 22,000 sq .ft. of Buddhist murals, large number of Buddha statues (more than 130), 
                                            statues of Gods and Kings in the caves.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            Then proceed to Ibbankatuwa a "Megalithic" Burial site, spread in an area of more than 10 acres. See more than 10 graves excavated and conserved.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">
                                            On completion return to Sigiriya<br/>
                                            Overnight stay at Sigiriya
                                        </font>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 08</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">SIGIRIYA - KANDY</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to Kandy. On the way visit Gedige Temple at Nalanda. 
                                        At Matale visit the Alu-Vihara Temple where the doctrine of the Buddha was caused to writing in the 1st C.B.C for the first time. 
                                        See the caves with paintings and the method used for writing on Ola-leaf books. Visit a Spice Gardens in Matale where you can 
                                        get the Herbal Oils & Medicines.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternoon visit the Royal Palace of Kandy (now a museum), Vishnu Devala, Natha Devala, Audience Hall, 
                                        other buildings used by the Queens and Ministers. Visit the Temple of the Tooth Relic in the evening to witness the "Pooja" (offerings). 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay at Kandy </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 09</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">KANDY - NUWARA ELIYA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to visit the Craftsmen's Village at Nattarampotha - 'Kalapuraya' to 
                                        see various craftsmen at work, and also to buy items they produce. See the Galmaduwa Temple, 
                                        a unique Buddhist Temple in the architecture of a Hindu Temple, Degaldoruwa, the best example for 
                                        the Kandyan style of paintings in a cave Temple and Medawala Temple - a small temple on pillars. 
                                        The entire structure is of wood and inside, the walls and the ceilings are painted with Buddhist stories.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternoon leave for Nuwara Eliya. On the way visit the Temple at Gadaladeniya - Hindu architecture used by a South Indian Craftsman. 
                                        See the beautiful carvings of Dancers, Drummers and Musicians, Siva Nataraja and Krishna.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Lankatilaka Temple in Sinhala architecture and Embekke a “gem” in wood carving.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        See Ramboda Falls (329 ft. high) and a Tea factory & Tea Plantation on the way to Nuwara EliyaEvening visit the Market, 
                                        Victoria Park and drive round the Lake.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight stay at Nuwaraeliya  </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 10</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NUWARA ELIYA - TISSAMAHARAMA </font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to Tissa via Ella - Wellawaya. Visit the quaint little Sita Kovil at Seetha Eliya, 
                                        Dowa Temple at Bandrawela and see the monument at Randeniwela to commemorate the battle King Senerath (1604 - 1635 A.D.) won 
                                        with a Portuguese army of 700 soldiers and 13,000 mercenaries. Visit Buduruwagala to see the tallest rock-cut Buddha statue (51 ft.) 
                                        dating to 8th C.A.D. and 6 other statues of Mahayana Buddhists carved on a rock. 
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternoon leave for Buttala. Visit Maligawila to see the only free-standing Buddha statue in the world; Dambegoda to see the 25 ft. 
                                        Bodhisathva Avalokiteswara statue, Demata-mal-Viharaya (3rd C.B.C) Temple and then leave for Tissa via Kataragama. At Kataragama 
                                        visit Kiri-Vehera and Kataragama Devala Complex.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight stay at Tissamaharama   </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 11</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">TISSAMAHARAMA - YALA - GALLE</font></h4>
                                    <p>
                                        <font size="2">
                                        Early morning proceed to visit Yala National Park by Jeep, to see wild animals including Elephants, Deer, 
                                        Sambhur, Crocodile, Wild Boar, Wild Buffalo, other animals and large number of bird species. 
                                        At Tissa see the Sandagiriya, Yatala and Menik Dagabas and at Ambalantota, Ussangoda pre-historic open air habitation
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        After breakfast leave to visit Wevurukannala Temple (largest Buddha statue in the Island) Mulkirigala Buddhist 
                                        Temple (5 caves) Matara Dutch Fort, Weligama statue etc.Then leave for Galle. On the way see the Temple at Dondra 
                                        and the remains of the Old Vishnu Devala that existed before 9th C.A.D.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay at Galle   </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 12</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">GALLE - COLOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to visit the Galle Dutch Fort, one of the best preserved Forts in Sri Lanka. 
                                        Galle Fort is a "World Heritage Site". See the Zwart, Akesloot, Aeloes, Aurora, Neptune, Triton, Sun, Moon, 
                                        Star and other Bastians of the Dutch Fort and also visit the private museum.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternooon leave for Colombo. Visit Kalutara Dagaba on the way then leave for Bulathsinghala via Neboda & Mahagama.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Visit "Pahiyangala" Temple where pre-historic man had lived in a cave more than 30,000 years ago, and in the 
                                        5th C.A.D. a Chinese Traveller "Fa-Hsien" lived in the same cave. See various stratas in which, skeletal ramains, 
                                        Lithi Facts, micro-liths, Zoo-facts and food remains were found. Then return to Colombo via Ingiriya.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight stay at Colombo  </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 13</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">COLOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed for the discussion with Archaeologists. Listen to a lecture on other archaeological sites in Sri Lanka.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternoon free for shopping
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay at Colombo </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 14</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">COLOMBO - AIRPORT </font></h4>
                                    <p>
                                        <font size="2">
                                                After breakfast transferred to Colombo International Airport for Departure
                                            </font>
                                    </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>

                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Back" class="rundbtn btn btn-default" OnClick="Button1_Click" />              
               
                            <h2 class="text-center"><u><asp:Label ID="Label8" runat="server" Text="You can Inquire Now for this Tour"></asp:Label></u></h2>
                            <br />

                            <center>
                           
                            <div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" name="form-Date-of-travel" placeholder="Date of travel..." class="form-last-name form-control" Width="500px" ReadOnly="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </div>
                                                 
                            <asp:ScriptManager runat="server" ID="sm">
                            </asp:ScriptManager>

                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>                                                 

                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" runat="server" name="form-Group-size" placeholder="Group Size..." class="form-last-name form-control" Width="500px" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server" ForeColor="Fuchsia" Visible="False"></asp:Label> <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#9900FF" Visible="False"></asp:Label>
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                                
                            </div>
                            <br/>

                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" runat="server" name="form-Other-Details" placeholder="Other Details..." class="form-last-name form-control" TextMode="MultiLine" Width="500px" Rows="5"></asp:TextBox>
                            </div>
                            <br/>

                            <div class="form-group">
                                <asp:TextBox ID="TextBox4" runat="server" name="form-Enter-Recaptcha" placeholder="Enter captcha..." class="form-last-name form-control" Width="200px" AutoPostBack="True"></asp:TextBox>
                                
                                <asp:ImageButton ID="ImageButton1" runat="server" Enabled="False" ImageUrl="img\captcha\cap1.jpg"></asp:ImageButton>
                                <br />
                                <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="Medium" ForeColor="#3333FF" Visible="False"></asp:Label>
                                <br/><asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br/>
                                <asp:Button ID="Button3" runat="server" Text="Submit" class="rundbtn btn btn-default" BackColor="#ff5050" ForeColor="#ffffff" OnClick="Button3_Click"/>
                                
                            </div>                                    
                          </center>
                                                           
                                </ContentTemplate>
                            </asp:UpdatePanel>
                                                         
                        </div>

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
                
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.pack.min.js"></script>
        <script type="text/javascript">
            $(function ($) {
                var addToAll = false;
                var gallery = false;
                var titlePosition = 'inside';
                $(addToAll ? 'img' : 'img.fancybox').each(function () {
                    var $this = $(this);
                    var title = $this.attr('title');
                    var src = $this.attr('data-big') || $this.attr('src');
                    var a = $('<a href="#" class="fancybox"></a>').attr('href', src).attr('title', title);
                    $this.wrap(a);
                });

                if (gallery)
                    $('a.fancybox').attr('rel', 'fancyboxgallery');
                $('a.fancybox').fancybox({
                    titlePosition: titlePosition
                });
            });
            $.noConflict();
</script>

    </form>
</body>
</html>
