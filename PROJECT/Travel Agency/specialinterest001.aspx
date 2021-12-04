<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="specialinterest001.aspx.cs" Inherits="Travel_Agency.specialinterest001" %>

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
                        <h2 class="intro-text text-center"><b>Adventure & Camping ! ! ! </b>
                            <br />

                        </h2>
                        <hr>



                        <img class="img-responsive img-left rcorners002" src="img/special interest1.jpg" alt="">


                        <hr class="visible-xs">

                        <p>
                            <center><font size="3"> 
                          Let’s give Your rusted adrenaline glands a reason to pump up the system. Sri Lanka being a beloved recipient of Mother Nature’s love has many wonderful topographies and wild spots, to give you a moment of adventure, to spice up your Sri Lankan holiday.
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
                                    <center><img class="img-responsive img-left rcorners002 fancybox" src="img/thumb-map.jpg" data-big="img/maps/Adventure & Camping.jpg" alt=""> </center>
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
                                            On arrival in Sri Lanka you will be met and assisted by our Airport Representative, and transfer you into the fishing village of Negombo.
                                        </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                            If you have spare time, your chauffeur will introduce you to some of Negombo's curious sites such the Dutch churches, perhaps take a boat ride along the Dutch canals or enjoy the beach. 
                                        </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white">Dinner & Overnight Stay: Hotel in Negombo  </font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 02</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NEGOMBO – KITHULGALA </font></h4>
                                    <p>
                                        <font size="2">
                                            Kitulgala a small town perched on the hills that slope down to the flowing waters of the Kelani River. 
                                            The main attractions include white water rafting, trekking and the Keleni Forest Reserve a popular bird watching location.
                                         </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Dinner & Overnight Stay: Camping in Kitulgala</font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 03</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">KITHULGALA</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast at your campsite make your way to the Kelani River and enjoy a thrilling day of white water rafting, and water fall abseiling.
                                        </font>
                                    </p>

                                    <div class="specialIntro div456">
                                        <font color="white">Dinner & Overnight Stay: Camping in Kitulgala</font>
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
                                        After breakfast leave for Knuckles Forest Reserve. The Knuckles mountain range exists as a unique ecosystem separate 
                                            from the rest of the central hills. Covering a distance of about 12 miles Knuckles extends roughly from the northwest 
                                            to the southwest of Sri Lanka.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                        This mountain range offers a wonderful place for Bird watching, Trekking, Wildlife Photography, and Camping. 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white"> Overnight Stay: Camping in Knuckles</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 05</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">KNUCKLES – NUWARAELIYA - ELLA</font></h4>
                                    <p>
                                        <font size="2">
                                      After Breakfast leave for Ella. En route visit the heart of Tea Country, Nuwara Eliya and enjoy the sites and visit a Tea plantations and a Tea Factory.
                                            </font>
                                    </p>
                                    <p>
                                        <font size="2">
                                      Continue on to Ella a little village surrounded by high mountains and breathtaking vistas in the central hills of the country. 
                                            It is famous for the Ella Gap – a gap in the mountains where you can see all the way up to the ocean. It is also a base for 
                                            plenty of trekking expeditions to the surrounding countryside and offers plenty of beautiful scenery and waterfalls. 
                                            </font>
                                    </p>
                                    <div class="specialIntro div456"><font color="white">Overnight Stay: Camping at Ella Adventure site</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 06</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">ELLA ADVENTURE SITE </font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast enjoy a full day of adventure activities. Many adventure activities can be indulged in at the site such as Aerial Rope, Monkey rope, Slithering rope, Toddy tapping, etc...     
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight Stay: Camping at Ella Adventure site</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 07</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">ELLA</font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast, continue on a day activity and adventure.
                                            </font>
                                    </p>

                                    <div class="specialIntro div456"><font color="white">Overnight Stay: Camping at Ella Adventure site</font></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>




                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 08</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">ELLA – NEGOMBO</font></h4>
                                    <p>
                                        <font size="2">
                                        After breakfast leave for the fishing village of Negombo. If you have spare time, your chauffeur will introduce you to some 
                                            of Negombo's curious sites such the Dutch churches, perhaps take a boat ride along the Dutch canals or enjoy the beach.
                                            </font>
                                    </p>
                                    <div class="specialIntro div456">
                                        <font color="white">Overnight Stay: Hotel in Negombo </font>
                                    </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>



                            <div class="day">
                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <h4 class="dayNum div789"><font color="white">Day 09</font></h4>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                    <h4 class="div123"><font color="white">NEGOMBO – AIRPORT </font></h4>
                                    <p>
                                        <font size="2">
                                            After breakfast leave time in to connect with departure flight.
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
                        <p>Copyright &copy; Ekerald Tours 2021</p>
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
