<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="familyescapes002.aspx.cs" Inherits="Travel_Agency.familyescapes002" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Family Escapes</title>

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
            <asp:ImageButton ID="dropdownMenu1" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" type="button" ImageUrl="img/down3.png" Width="35" Height="20"/>

         
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
                        <h2 class="intro-text text-center"><b>Something Old Something New ! ! ! </b>
                            <br />

                        </h2>
                        <hr>



                        <img class="img-responsive img-left rcorners002" src="img/pinnawala1.jpg" alt="">


                        <hr class="visible-xs">

                        <p>
                            <center><font size="3"> 
                          This is an itinerary specifically made to fit in your busy lifestyle. With all the fascinations and scenic wonders of Sri Lanka, make these eight days and seven nights a period that will never be forgotten.
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
                                    <center><img class="img-responsive img-left rcorners002 fancybox" src="img/thumb-map.jpg" data-big="img/maps/Something Old Something New.jpg" alt=""> </center>
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
                                    <h4 class="div123"><font color="white">ARRIVAL TRANSFER/ NEGOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                            You will be met &amp; assisted upon arrival at the International Airport and be transferred to Dambulla. 
                                        </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white">Overnight stay at <strong>Negombo</font></strong></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 02</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NEGOMBO / PINNAWALA / DAMBULLA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to 
Dambulla. En route visit the Elephant Orphanage in Pinnawala. This 
orphanage is the home for about 80 elephants, out of which some are baby
 elephants found abandoned or orphaned in the wild. They are being 
cared, fed and trained by the wild life authorities. The best time to 
visit is during the feeding times, when one will have the opportunity of
 seeing the baby elephants being bottle-fed. Also could accompany the 
elephants to a river close-by and see them having their daily bath.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Check in upon arrival at the 
hotel. Evening proceed to Minneriya for a memorable safari by Jeep in 
the Minneriya National Park and date with the wild in their natural 
surroundings.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">On Completion return to hotel<br>
                                        Overnight stay at <strong>Dambulla</strong></font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 03</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">DAMBULLA / SIGIRIYA/POLONNARUWA/ DAMBULLA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast proceed to 
Sigiroya and visit the 5th century Sigiriya rock fortress which is a 
world heritage site, built by King Kashyapa (477-495 AD). The ‘Lion 
Rock’ is a citadel of unusual beauty rising 200 meters from the scrub 
jungle. The rock was the innermost stronghold of the 70 hectare 
fortified town. A moat, rampart, and extensive gardens including the 
renowned water gardens ring the base of the rock Visit the 
world-renowned frescoes of the ‘Heavenly Maidens’ of Sigiriya, which are
 in a sheltered pocket of the rock approached by a spiral stairway. 
These frescoes are painted in earth pigments on plaster.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Thereafter   proceed to 
Polonnaruwa, which was the 2nd capital city of Sri Lanka, built in the 
11th and 12th centuries AD, and which is a world heritage site. Here you
 can see the ruins of the Royal Palace, the Gal Viharaya where 4 
splendid statues of the Buddha in ‘Upright’, ‘Sedentary’ and ‘Recumbent’
 postures carved out of rock, the Audience Hall, the Lotus Bath, king 
Parakramabahu’s statue, and the Parakrama Samudraya Lake built by King 
Parakramabahu  the great.  There are also monuments of famous places of 
worship such as the Shiva Temple, the Lankathilake, the Watadage, the 
Galpotha, the Kiri Vehera and the remains of a former Temple of the 
Tooth Relic.
                                        </font>
                                    </p>

                                    <div class="specialIntro div456">
                                        <font color="white">On completion return to hotel<br>
                                        Overnight stay at <strong>Dambulla</strong>.</font>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 04</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">DAMBULLA / MATALE / KANDY</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfatst visit 
Dambulla Rock Cave temple. Climb up to the temple, which was donated by 
king Walagambahu in the 1st century BC to Buddhist monks. Dambulla is a 
World Heritage site and is the most impressive of Sri Lanka’s cave 
temples. The complex of five caves with over 2000 sq. meters painted 
walls and the Ceiling is the largest area of paintings found in the 
world. These caves contain over 150 Images of the Buddha of which the 
largest is the colossal figure of the Buddha carved out of rock spanning
 14 meters.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Thereafter proceed to Kandy. 
En route visit a spice garden in Matale to see the different spices, 
which Sri Lanka is famous for. You will be introduced to different 
spices and shown how some of these spices are grown and processed
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Afternoon proceed on a city 
tour of Kandy. Kandy was the last capital of the Sri Lankan kings, and 
is a World Heritage Site. The name Kandy conjures visions of splendor 
and magnificence. Many of the legends, traditions and folklore are still
 lovingly kept alive. Drive around the Kandy Lake built by the last 
Sinhala king Sri Wickrama Rajasinghe in 1798. Visit the Kandy town and 
Bazaar, the arts &amp; crafts center, a gem museum, a lapidary and Batik
 factory.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Also visit the Temple of the 
Tooth Relic and thereafter proceed to an auditorium and witness a 
cultural show featuring traditional Sri Lankan dancing.
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight stay at Kandy</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 05</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">KANDY / NUWARAELIYA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast visit 
Peradeniya Botanical Gardens. This botanical garden was first built as a
 pleasure garden by a Sinhala king and was expanded by the British.  It 
is 147 acres in extent and provides an amazing variety of trees, plants 
and flowers.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Thereafter proceed to Nuwara 
Eliya en route visit a tea factory where the best tea in the world is 
produced. You will be told all about the process of manufacturing tea. 
You can also see how tea is graded. Taste a cup of pure Ceylon tea in 
the factory.
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        Evening proceed on a 
Sightseeing tour of Nuwara Eliya. This town situated at an elevation of 
1890 meters. This town was the most popular hill station of the British 
during their rule. You will see their influence as you pass through 
areas very much reminiscent of the countryside of England which has 
earned Nuwara Eliya the name “Little England”. This is also the very 
centre of the Tea Growing regions of the island. The golf club of Nuwara
 Eliya has an excellent 18 hole course.
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight stay at Nuwara Eliya.</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 06</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NUWARAELIYA / BERUWALA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast proceed to Beruwala. Check in upon arrival at the hotel &amp; rest of the day is free for leisure.
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight stay at Beruwala.</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 07</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">BERUWALA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast spend day at leisure on the beach. 
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight stay at Beruwala.</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 08</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">BERUWALA / DEPARTURE TRANSFER</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast leave in time to connect with departure flight.
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
