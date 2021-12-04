<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vehicle.aspx.cs" Inherits="Travel_Agency.vehicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

   

    <title>Emerald Tours - Vehicle</title>

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

    <style>
        .framecl {
            border-radius: 200px;
            border-color: darkcyan;
        }    
    </style>


</head>
<body>
    <form id="form1" runat="server">

        <div class="dropdown">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
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
                            <img class="img-responsive img-border img-full" src="img/carhd.jpg" alt="">
                            <h2>Chauffeur Driven </h2>
                            <hr>
                            <br>


                            <p>
                                Getting around in the commercial hub of Colombo can be done with ease but can be quite a culture shock to those traversing Sri Lankan roads 
                                for the first time. Amidst the traffics and small roads, the local taxi service commonly known as “Tuk-tuks” is the best way to get around 
                                within Colombo city limits. The local bus service in the might be quite an experience by it self; as jam packed as sardine tins during rush hour, 
                                it might not be the most comfortable option to opt for. The local train or bus service can access the rest of the country, but it will only 
                                take you so far. Hiring your own vehicle with chauffeur is best way to explore the island, allowing you to explore places off the beaten track. 
                                We can arrange a vehicle suitable for your journey and requirement be it a car, van, 4WD, or bus. We at Emerald Tours offer some of the best rates 
                                talk to us and we will make sure you reach every destination with ease.
                            </p>
                            <br />
                            <p>
                                Holidays can be expensive, but with the right assistance you can enjoy a fabulous holiday without having to spend more than you should. We at 
                                Emerald Tours offer some of the most unbeatable vehicle rates, tell us what your requirement is and we arrange the most suitable vehicle for you.
                            </p>


                            <br />
                            <h4><strong>Terms & Conditions</strong></h4>

                            <ul>
                                <font size="4">
                                <li>You must order a suitable vehicle size for the number of passengers & luggage. Emerald Tours cannot guarantee to carry excessive luggage. Please note that a child, no matter what age, counts as one passenger.</li><br/>
                                <li>Govt. Tax/Vat: All the rates above are inclusive of Tax/Vat.If expressway is taken $ 3 for up to 9 seats, $ 6 for vehicles with more than 9 seats & $ 12 for more than 33 seats charges will apply for the full length of the expressway (Kottawa-Galle).</li><br/>
                                <li>Booking/ Payments: You can make a confirmed booking via e-mail and make payments on arrival. We may ask for a token advance prior to arrival during peak season.We accepts cash (LKR/USD/EUR/GBP), Master Card or Visa (Credit Card payments only at our Emerald Tours office.</li><br/>
                                <li>Currency: All rates quoted are in US Dollars.</li><br/>
                                    <li>Service Guarantee: 24/7 Substitute Vehicle / Driver in case of requirement.Emerald Tours licensed by the Sri Lanka Tourist Board.</li><br/>
                                    <li>Fuel: Provided</li><br/>
                                    <li>For overnight stays of the driver: In case that the hotels, you are staying does not have drivers quarters you will have to pay US $ 13 directly to the driver (Car/Van) to arrange his own accommodation. If it’s a mini coach or a large coach you will have to pay US $ 16 for the driver & the coach assistant.</li><br/>
                                    <li>Mileage/Time Calculation: Our garage to garage Basis in Colombo-05. Mileage is calculated on a cumulative basis for the hire i.e. 700km for 7 days. The number of days of hire are calculated on a ‘calendar day’ basis and not on 24 hour cycles.</li><br/>
                                    <li>Air port pickup / Drop (If required): Our driver will meet your flight carrying your name board at the Air port and be at your service as require. (Airport Charges Airport including parking & pager fees: US$ 5 for Vans/SUV US$ 4 for Cars). The mileages and time calculation will be on a garage to garage basis in Colombo.</li><br/>
                                    <li>Optional Extras:Child Car Seats, Road Maps,Mobile Sim Cards, Cool Boxes etc. are available on request.</li><br/>
                                    <li>Insurance (Included): All vehicles comprehensively (Properly) insured to cover the Driver, All Passengers, the Vehicle and third party damage with ‘Car Rental Fleet’ cover.</li><br/>
                                    <li>Validity of Rates: The information rates, terms and conditions on this page are subject to change as per changes in the local rules, regulations.</li><br/>
                                    <li>Cancellation: If you need to cancel your booking, please contact Emerald Tours as soon as possible. If you cancel a booking after the vehicle has been dispatched then a charge may be incurred; the charge will be based on the distance/time that the allocated driver has travelled/spent prior to the point of cancellation.</li><br/>
                               </font>
                            </ul>
                            <br />

                        </div>

                        <div class="form-group col-lg-12">
                        </div>

                    </div>
                </div>
            </div>


            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <hr class="tagline-divider">


                        <table class="center">
                            <tr>
                                <td>
                                    <h2 class="intro-text text-center"><b>VEHICLES WHICH YOU CAN PICK UP </b></h2>
                                </td>
                                <td>
                                    <img class="img-responsive center" src="img/pickcar.png" alt="" width="50" height="50">
                                </td>
                            </tr>
                        </table>




                        <hr class="tagline-divider">
                        <br />
                        <hr>

                        <asp:ScriptManager runat="server" ID="sm">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <table class="center">
                                    <tr>
                                        <td>
                                            <h5 color="gray">Search :</h5>
                                        </td>
                                        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="328px" class="framecl"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Text="Search" class="rundbtn btn btn-default" OnClick="Button10_Click" />
                                        </td>
                                    </tr>
                                </table>

                                <br />

                                <table class="center">
                                    <tr>
                                        <td height="50">
                                            <asp:Button ID="Button1" runat="server" Text="Standard Cars" class="rundbtn btn btn-default" Width="147px" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:Button ID="Button3" runat="server" Text="Premium Cars" class="rundbtn btn btn-default" Width="147px" OnClick="Button3_Click" />&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" Text="Luxury Cars" class="rundbtn btn btn-default" Width="147px" OnClick="Button4_Click" />&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:Button ID="Button5" runat="server" Text="4 WD Vehicles" class="rundbtn btn btn-default" Width="147px" OnClick="Button5_Click" />&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Button ID="Button6" runat="server" Text="Standard Vans" class="rundbtn btn btn-default" Width="147px" OnClick="Button6_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button7" runat="server" Text="Premium Vans" class="rundbtn btn btn-default" Width="147px" OnClick="Button7_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button8" runat="server" Text="Mini Coaches" class="rundbtn btn btn-default" Width="147px" OnClick="Button8_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button9" runat="server" Text="Luxury Busses" class="rundbtn btn btn-default" Width="147px" OnClick="Button9_Click" />
                                        </td>

                                    </tr>

                                </table>

                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" CellPadding="0" Font-Size="Large" GridLines="None" HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" OnRowDataBound="GridView1_RowDataBound">
                                </asp:GridView>

                                <center> <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                                   <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                </center>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                                                            
                        <br />
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                                        
                                <center><h3> <asp:Label ID="Label6" runat="server" Text="Do You want to Pick up a Vehicle for Your Trip ? ? ?"></asp:Label></h3></center>
                                <table class="table">
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label7" runat="server" Text="Vehicle Type :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                <asp:ListItem>Select Type</asp:ListItem>
                                                <asp:ListItem>Standard Cars</asp:ListItem>
                                                <asp:ListItem>Premium Cars</asp:ListItem>
                                                <asp:ListItem>Luxury Cars</asp:ListItem>
                                                <asp:ListItem>4 WD Vehicles</asp:ListItem>
                                                <asp:ListItem>Standard Vans</asp:ListItem>
                                                <asp:ListItem>Premium Vans</asp:ListItem>
                                                <asp:ListItem>Mini Coaches</asp:ListItem>
                                                <asp:ListItem>Luxury Busses</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>

                                        <td class="auto-style10">
                                            <asp:Label ID="Label8" runat="server" Text="Vehicle Name :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server" Width="300px" Enabled="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9"><b>
                                            <asp:Label ID="Label10" runat="server" Text="Which Tour Type Do You Want to Add Vehicle :"></asp:Label></b>

                                        </td>
                                        <td>                                           
                                            <asp:DropDownList ID="DropDownList5" runat="server" Width="300px" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                                                <asp:ListItem>Select Tour Type</asp:ListItem>
                                                <asp:ListItem>Fixed Tour</asp:ListItem>
                                                <asp:ListItem>Customize Tour</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Please fill all the data . . ." Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label9" runat="server" Text="Fixed Tours :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" runat="server" Width="300px" Enabled="False" AppendDataBoundItems="True">
                                                <asp:ListItem Text="Select Tour" Value="" />   
                                            </asp:DropDownList>
                                        </td>

                                        <td class="auto-style10">
                                            <asp:Label ID="Label11" runat="server" Text="Customize Tours :"></asp:Label>
                                        </td>
                                        <td>
                    
                                            <asp:DropDownList ID="DropDownList4" runat="server" Width="300px" Enabled="False" AppendDataBoundItems="True">
                                                <asp:ListItem Text="Select Tour (Travel Date, Tour ID)" Value="" />   
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td>
                                            <asp:Button ID="save_btn" Text="Add" runat="server" OnClick="save_btn_Click" Width="64px" class="rundbtn btn btn-default" />
                                        </td>
                                        <td><asp:Label ID="Label12" runat="server" Text="No Any Inquiries...<br/>All Trips Are Confirmed ! ! !" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label></td>
                                        <td></td>
                                        <td><asp:Label ID="Label13" runat="server" Text="No Any Inquiries...<br/>All Trips Are Confirmed ! ! !" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label></td>

                                    </tr>
                                </table>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <hr>
                        <hr class="visible-xs">
                        &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Back" class="rundbtn btn btn-default" OnClick="Button2_Click" />

                    </div>
                </div>
            </div>

        </div>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>
                        Copyright &copy; Emerald Tours 2015         
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
