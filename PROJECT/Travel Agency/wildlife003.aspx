<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wildlife003.aspx.cs" Inherits="Travel_Agency.wildlife003" %>

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
                        <h2 class="intro-text text-center"><b>Let's Go Wild ! ! ! </b>
                            <br />

                        </h2>
                        <hr>

                        <img class="img-responsive img-left rcorners002" src="img/wildlife3.jpg" alt="">


                        <hr class="visible-xs">

                        <p>
                            <center><font size="3"> 
                          Protected areas in Sri Lanka accounts for 26.5 percent of total land mass, which is a high percentage for a country of the size of Sri Lanka in comparison to all of Asia and much of the World. 
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
                                    <center><img class="img-responsive img-left rcorners002 fancybox" src="img/thumb-map.jpg" data-big="img/maps/Let's Go Wild.jpg" alt=""> </center>
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
                                    <h4 class="div123"><font color="white">AIRPORT / NEGOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                            You will be met & assisted upon arrival at the International Airport and be transferred to Hotel in Negombo. 
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
                                    <h4 class="div123"><font color="white">NEGOMBO / ANURADHAPURA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast leave for Anuradhpura. Rest for the day. 
                                         </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight in Anuradhpura.</font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 03</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">ANURADHAPURA / WILPATTU / DAMBULLA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to Wilpattu for jeep safari. The unique feature of the Wilpattu National Park is the existence 
                                            of "Willus" (Natural lakes) - Natural, sand-rimmed water basins or depressions that fill with rainwater. 
                                            Nearly sixty lakes (Willu) and tanks are found spread throughout Wilpattu. Wilpattu is among the top national parks 
                                            world renowned for its Leopard population. 
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Thereafter leave for Dambulla  
                                        </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay in Dambulla</font>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 04</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">DAMBULLA/ MINNERIYA / DAMBULLA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast spend morning at leisure enjoying the nearby area.<br/>
                                        Thererafter proceed to Minneriya for Safari. Minneriya National Park is a dry season feeding ground for the elephant population 
                                        dwelling in forests of Matale, Polonnaruwa, and Trincomalee districts. Some reports account number of elephants to as high as 700. 
                                        Tourists visit Minneriya largely because of elephants, especially in dry season.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white"> Overnight stay in Dambulla</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 05</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">DAMBULLA / KANDY</font></h4>
                                    <p>
                                        <font size="2">
                                      After Breakfast leave for Kandy. En route visit a spice garden in Matale to see the different spices. 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white">Overnight stay in Kandy</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 06</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">KANDY / KNUCKELS / NUWARA ELIYA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast proceed to Knuckles Mountain range. The Knuckles Mountain range takes its name from a series of recumbent 
                                            folds and peaks in the west of the massif which resemble the knuckles of clenched fist when viewed from certain locations 
                                            in the Kandy District. At higher elevations there is a series of isolated cloud forests, harboring a variety of flora and fauna, 
                                            some of which cannot be found anywhere else in the world. Bird life abounds in this forest. Seventeen of the 23 endemic species 
                                            of Sri Lanka birds are found here among the 128 species recorded so far in this area.<br/>
                                            Thereafter leave for Nuwaraeliya.        
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight in Nuwaraeliya</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 07</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NUWARA ELIYA / HORTON PLAINS / NUWARAELIYA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast proceed to Horton Plains and commence walking inside the Park. Horton plains national park is undoubtedly 
                                            one of the world’s best nature reserves. The park is also home to a wide variety of flora and 24 species of mammal such as 
                                            elk, deer, giant squirrel, wild boar, wild hare, porcupine and leopard. For bird enthusiasts, 
                                            there 87 species (14 of which are endemic), including many migratory birds. The Plains also feature many interesting attractions 
                                            such as ‘Bakers Falls’, ‘Chimmini Pool’ and the famous ‘World’s End’. On completion return to hotel.
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight stay in Nuwara Eliya</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 08</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NUWARAELIYA / YALA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast leave for Yala. 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay in Yala </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 09</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">YALA / KUMANA / YALA SAFARI / YALA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to Kumana National Park in Sri Lanka is renowned for its avifauna, particularly its large flocks of migratory waterfowl and wading birds. 
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Evening proceed on an exciting Jeep safari in Yala. Yala National Park is the most visited and second largest national park 
                                            in Sri Lanka. The park is best known for its variety of wild animals. It is important for the conservation 
                                            of Sri Lankan Elephants and aquatic birds. It has also one of the highest leopard densities in the world.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight in Yala/ Tissamaharama </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 10</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">YALA / SINHARAJA </font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast leave for Sinharaja. Check into hotel and enjoy the rest of day at leisure. 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight stay in Sinharaja  </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 11</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">SINHARAJA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast trek to Sinharaja Rain Forest. A large rain forest south of Rathnapura, one of the best remaining in the Island. 
                                        Black Eagle, Mountain and Rufous-bellied Hawk-Eagles, Besra Sparrowhawk, Krested Goshawk, Pompadour Green Pigeon, Indian Cuckoo, 
                                        Red winged Crested (Chestnut-winged) Chuckoo, Ceylon frogmouth, Ceylon (Malabar) Trogon, 
                                        Brown –throated Spinetail Swift (Brown –backed Needletail), Edible-nest Swift(Indian Swiftlet), Lesser Yellow-naped Woodpecker, 
                                        Indian Blue Chat(Robin), Green and Large-billed Leaf Warblers, Scaly thrush, Layard’s (Brown-breasted)Flycatcher, Paradise Flycatcher, 
                                        Indian Scimitar Babbler, Gold – fronted Chloropsis , Ceylon Crested Drongo. Among other animals, vry likely to be seen 
                                        here are the endemic Purple-faced Leaf Monkey and the Giant Squirrel
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight stay in Sinharaja  </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 12</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">SINHARAJA / GALLE</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to Galle. 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight stay in Galle  </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 13</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">GALLE / MIRISSA / GALLE</font></h4>
                                    <p>
                                        <font size="2">
                                        Mornings take the boat from the Mirissa Fishery’s Harbor and go sea bird watching & Dolphine/ Whale watching
                                        Evenings, take a birding visit to nearby forest reserves or pamper your senses with signature treatments at the hotel spa.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight stay in Galle  </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 14</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">GALLE / COLOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast leave for Colombo. Evening at leisure. 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white"> Overnight stay at Cinnamon Lakeside – Colombo – 5* </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 15</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">COLOMBO / AIRPORT </font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast leave in time to connect with departure flight
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
                        <p>Copyright &copy; Emerald Tours 2015</p>
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
