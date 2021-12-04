<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customizetour.aspx.cs" Inherits="Travel_Agency.customizetour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Customize Your Tour</title>

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






    





    <%--page load--%>
     <script type="text/javascript" src="js/jquery1.min.js"></script> 
    <script type="text/javascript">
        function ShowProgress() {
            setTimeout(function () {
                var modal = $('<div />');
                modal.addClass("modal");
                $('body').append(modal);
                var loading = $(".loading");
                loading.show();
                var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
                var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
                loading.css({ top: top, left: left });
            }, 200);
        }
        $('form').live("submit", function () {
            ShowProgress();
        });
</script>


<%--page load--%>
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

        .rcorners004 {            
            border-radius: 25px 25px 25px 25px;            
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

        .auto-style2 {
            width: 75px;
        }
    </style>

    <style>
        .mycheckbox input[type="checkbox"] {
            margin-right: 10px;
            text-align: center;
        }
    </style>

    <%--<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
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
     --%>
<%--   

  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
      
   <script>
       $(document).ready(function () {
           $('#TextBox1').datepicker({
               dateFormat: 'dd/mm/yy'
           });
       });
</script>--%>




   
</head>
<body>
    <form id="form1" runat="server">


        <div class="dropdown">
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
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



          <%-- <div class="dropdown">
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
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
        </div>--%>




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
                        <h1 class="intro-text text-center"><b><font size="6px">Plan your trip ! ! !</font></b>
                            <br />
                        </h1>
                        <hr>

                        <h4>Select your choices and fill all the Steps Below</h4>

                        <h3>Step 1 : <u>YOUR Interests</u></h3>
                        <br />
                        
                        <asp:ScriptManager runat="server" ID="sm">
                        </asp:ScriptManager>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/cuz_img/Pristine.jpg" class="img-responsive rcorners004" OnClick="ImageButton1_Click" />
                                            <center><asp:CheckBox ID="CheckBox1" runat="server" Text="PRISTINE" CssClass="mycheckbox" AutoPostBack="True" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>
                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img/cuz_img/Heritage.jpg" class="img-responsive rcorners004" OnClick="ImageButton2_Click" />
                                            <center><asp:CheckBox ID="CheckBox2" runat="server" Text="HERITAGE" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>
                                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="img/cuz_img/Thrills.jpg" class="img-responsive rcorners004" OnClick="ImageButton3_Click" />
                                            <center><asp:CheckBox ID="CheckBox3" runat="server" Text="THRILLS" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>
                                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="img/cuz_img/Wild.jpg" class="img-responsive rcorners004" OnClick="ImageButton4_Click" />
                                            <center><asp:CheckBox ID="CheckBox4" runat="server" Text="WILD" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>
                                    </tr>
                                </table>

                                <br />
                                <center> <asp:Label ID="Label1" runat="server" Text="Please Select Your Interests ! ! ! " Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                <br />

                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="img/cuz_img/Bliss.jpg" class="img-responsive rcorners004" OnClick="ImageButton5_Click" />
                                            <center><asp:CheckBox ID="CheckBox5" runat="server" Text="BLISS" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>
                                            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="img/cuz_img/Scenic.jpg" class="img-responsive rcorners004" OnClick="ImageButton6_Click" />
                                            <center><asp:CheckBox ID="CheckBox6" runat="server" Text="SCENIC" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>
                                            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="img/cuz_img/Essence.jpg" class="img-responsive rcorners004" OnClick="ImageButton7_Click" />
                                            <center><asp:CheckBox ID="CheckBox7" runat="server" Text="ESSENCE" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>
                                            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="img/cuz_img/Festive.jpg" class="img-responsive rcorners004" OnClick="ImageButton8_Click" />
                                            <center><asp:CheckBox ID="CheckBox8" runat="server" Text="FESTIVE" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>
                                    </tr>
                                </table>
                                <br />

                                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="32px" Visible="False"></asp:ListBox>
                                
                                                             

                                <h3>Step 2 : <u>YOUR BUDGET</u></h3>
                                <br />

                                <table class="center">
                                    <tr>
                                        <td>

                                            <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="img/cuz_img/499.png" class="img-responsive rcorners004" OnClick="ImageButton9_Click" />
                                            <center><asp:CheckBox ID="CheckBox9" runat="server" Text="UPTO $499 per person " CssClass="mycheckbox" Enabled="False" ></asp:CheckBox></center>

                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>

                                            <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="img/cuz_img/999.png" class="img-responsive rcorners004" OnClick="ImageButton10_Click" />
                                            <center><asp:CheckBox ID="CheckBox10" runat="server" Text="UPTO $999 per person " CssClass="mycheckbox" Enabled="False" ></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>

                                            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="img/cuz_img/1499.png" class="img-responsive rcorners004" OnClick="ImageButton11_Click" />
                                            <center><asp:CheckBox ID="CheckBox11" runat="server" Text="UPTO $1499 per person " CssClass="mycheckbox" Enabled="False" ></asp:CheckBox></center>
                                        </td>

                                    </tr>
                                </table>

                                <br />

                                <center> <asp:Label ID="Label8" runat="server" Text="Please Select Your Budget ! ! ! " Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                <br />

                                <table class="center">
                                    <tr>
                                        <td>

                                            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="img/cuz_img/1999.png" class="img-responsive rcorners004" OnClick="ImageButton12_Click" />
                                            <center><asp:CheckBox ID="CheckBox12" runat="server" Text="UPTO $1999 per person " CssClass="mycheckbox" Enabled="False" ></asp:CheckBox></center>
                                        </td>


                                        <td class="auto-style2"></td>


                                        <td>

                                            <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="img/cuz_img/2499.png" class="img-responsive rcorners004" OnClick="ImageButton13_Click" />
                                            <center><asp:CheckBox ID="CheckBox13" runat="server" Text="UPTO $2499 per person " CssClass="mycheckbox" Enabled="False" ></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>

                                            <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="img/cuz_img/3000.png" class="img-responsive rcorners004" OnClick="ImageButton14_Click" />
                                            <center><asp:CheckBox ID="CheckBox14" runat="server" Text="UPTO $3000 or More per person " CssClass="mycheckbox" Enabled="False" ></asp:CheckBox></center>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                               

                                <h3>Step 3 : <u>YOUR ACCOMMODATION</u></h3>
                                <br />

                                <table class="center">
                                    <tr>
                                        <td>

                                            <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="img/cuz_img/homestay.png" class="img-responsive rcorners004" OnClick="ImageButton15_Click" />
                                            <center><asp:CheckBox ID="CheckBox15" runat="server" Text="HOME STAYS" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>

                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>

                                            <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="img/cuz_img/heritage.png" class="img-responsive rcorners004" OnClick="ImageButton16_Click" />
                                            <center><asp:CheckBox ID="CheckBox16" runat="server" Text="BUDGET ACCOMMODATION" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>

                                            <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="img/cuz_img/3star.png" class="img-responsive rcorners004" OnClick="ImageButton17_Click" />
                                            <center><asp:CheckBox ID="CheckBox17" runat="server" Text="STANDARD HOTELS (2* & 3*)" CssClass="mycheckbox" Enabled="False" ></asp:CheckBox></center>
                                        </td>

                                    </tr>
                                </table>

                                <br />
                            
                                <center> <asp:Label ID="Label9" runat="server" Text="Please Select Your Accommodation ! ! ! " Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                <br />

                                <table class="center">
                                    <tr>
                                        <td>

                                            <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="img/cuz_img/resort.png" class="img-responsive rcorners004" OnClick="ImageButton18_Click" />
                                            <center><asp:CheckBox ID="CheckBox18" runat="server" Text="DULUXE HOTELS (3* & 4*)" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>


                                        <td class="auto-style2"></td>


                                        <td>

                                            <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="img/cuz_img/5star.png" class="img-responsive rcorners004" OnClick="ImageButton19_Click" />
                                            <center><asp:CheckBox ID="CheckBox19" runat="server" Text="SUPERIOR HOTELS (4* & 5*)" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>

                                        <td class="auto-style2"></td>

                                        <td>

                                            <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="img/cuz_img/boutiq.png" class="img-responsive rcorners004" OnClick="ImageButton20_Click" />
                                            <center><asp:CheckBox ID="CheckBox20" runat="server" Text="BOUTIQUE HOTELS" CssClass="mycheckbox" Enabled="False"></asp:CheckBox></center>
                                        </td>
                                    </tr>
                                </table>
                                <br />

                              
                                <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" Height="34px" Visible="False"></asp:ListBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>


                        <h3>Step 4 : <u>YOUR TRIP DETAILS</u></h3>
                        <br />

                        <center>
                           
                            <div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" name="form-Date-of-travel" TextMode="Date" placeholder="Date of travel- From" class="form-last-name form-control" Width="500px" ReadOnly="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </div>

                           
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>  
                           
                                     <div class="form-group">
                               
                              <asp:TextBox ID="TextBox6" runat="server" name="form-Date-of-travel" TextMode="Date" placeholder="Date of travel -To" class="form-last-name form-control"  Width="500px" ReadOnly="False" OnTextChanged="TextBox6_TextChanged" AutoPostBack="True"></asp:TextBox>
                            </div>
                                
                            <br/>

                           <%-- <div class="form-group">--%>
                                <asp:TextBox ID="TextBox5" runat="server" name="form-Group-size" placeholder="Duration (Days)..." class="form-last-name form-control" Width="500px" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged" ></asp:TextBox>
                                <asp:Label ID="Label10" runat="server" ForeColor="Fuchsia" Visible="False"></asp:Label>                                                                
                            <%--</div>--%>
                            <%--<br/>--%>

                           

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
                                <asp:TextBox ID="TextBox4" runat="server" name="form-Enter-Recaptcha" placeholder="Enter Recaptcha..." class="form-last-name form-control" Width="200px" AutoPostBack="True"></asp:TextBox>
                                
                                <asp:ImageButton ID="ImageButton21" runat="server" Enabled="False" ImageUrl="img\captcha\cap1.jpg"></asp:ImageButton>
                                <br />
                                <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="Medium" ForeColor="#3333FF" Visible="False"></asp:Label>
                                <br/><asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                           
                                <center> <asp:Label ID="Label7" runat="server" Text="Please Select Your Interests ! ! ! " Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                <center> <asp:Label ID="Label11" runat="server" Text="Please Select Your Budget ! ! ! " Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                <center> <asp:Label ID="Label12" runat="server" Text="Please Select Your Accommodation ! ! ! " Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                <br/>
                                <asp:Button ID="Button3" runat="server" Text="Submit" class="rundbtn btn btn-default" BackColor="#ff5050" ForeColor="#ffffff" OnClick="Button3_Click" />                                
                            </div>                                    
                          </center>

                                                      
                            </ContentTemplate>
                        </asp:UpdatePanel>                       

                            <asp:Button ID="Button1" runat="server" Text="Back" class="rundbtn btn btn-default" OnClick="Button1_Click" />

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

                    
         <script src="js/bootstrap.min.js"></script>

    </form>
</body>
</html>
