<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="Travel_Agency.gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Gallery</title>

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
            width: 1107px;
            height: 200px;
        }

        .imgspacebottom {           
            margin-bottom: 21px; /*to have the space under the image*/
        }

        .imgspaceup {
            margin-top: 76px; /*to have the space above the image*/
            /*margin-bottom: 32px;*/ /*to have the space under the image*/
        }
    </style>


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

    <!-- for one by one images in this page -->
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
        .auto-style1 {
            width: 579px;
        }
        .auto-style2 {
            width: 668px;
        }
        .auto-style3 {
            width: 284px
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
                      
                        <h2 class="intro-text text-center">Hello <asp:Label ID="Label2" runat="server" Text="Traveller"></asp:Label> &nbsp;! ! !
                            <br />
                            <br />
                            <strong>See The Paradise from Here ! ! !</strong>
                        </h2>
                        <hr>
                        <hr class="visible-xs">

                        <table>
                            <tr>
                                <td class="auto-style2" >
                                    <asp:Image ID="Image1" runat="server" class="img-responsive img-left fancybox rcorners002" src="img/gallery/2.jpg" Width="614px" Height="367px" alt="" />
                               
                                </td>

                                <td class="auto-style3">
                                    <asp:Image ID="Image2" runat="server" class="img-responsive img-left imgspacebottom fancybox rcorners002" src="img/gallery/1.jpg" Width="274px" Height="173px" alt="" />
                                    <asp:Image ID="Image3" runat="server" class="img-responsive img-left fancybox rcorners002" src="img/gallery/3.jpg" Width="272px" Height="173px" alt="" />
                                </td>

                                <td class="auto-style4">
                                    <asp:Image ID="Image4" runat="server" class="img-responsive img-left imgspacebottom fancybox rcorners002" src="img/gallery/4.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image5" runat="server" class="img-responsive img-left fancybox rcorners002" src="img/gallery/5.jpg" Width="250" Height="173" alt="" />
                                </td>
                            </tr>

                            <tr>
                                <td >
                                    <asp:Image ID="Image6" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/6.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image7" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/7.jpg" Width="329px" Height="173px" alt="" />
                                </td>

                                <td >
                                    <asp:Image ID="Image8" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/8.jpg" Width="250" Height="173" alt="" />
                                </td>
                                <td>
                                    <asp:Image ID="Image9" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/9.jpg" Width="250" Height="173" alt="" />
                                </td>
                            </tr>
                        </table>

                        <br />

                        <table>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Image ID="Image10" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/10.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image11" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/11.jpg" Width="250" Height="173" alt="" />
                                    <br />
                                    <asp:Image ID="Image12" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/12.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image13" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/13.jpg" Width="250" Height="173" alt="" />
                                </td>

                                <td class="auto-style2">
                                    <asp:Image ID="Image14" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/14.jpg" Width="530" Height="367" alt="" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Image ID="Image15" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/15.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image16" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/16.jpg" Width="250" Height="173" alt="" />
                                </td>
                                <td class="auto-style2">
                                    <asp:Image ID="Image17" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/17.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image18" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/18.jpg" Width="250" Height="173" alt="" />
                                </td>
                            </tr>
                        </table>

                        <br />

                        <table>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Image ID="Image19" runat="server" class="img-responsive img-left fancybox rcorners002" src="img/gallery/19.jpg" Width="520px" Height="368px" alt="" />
                                </td>

                                <td class="auto-style3">
                                    <asp:Image ID="Image20" runat="server" class="img-responsive img-left imgspacebottom fancybox rcorners002" src="img/gallery/20.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image21" runat="server" class="img-responsive img-left fancybox rcorners002" src="img/gallery/21.jpg" Width="250" Height="173" alt="" />

                                </td>

                                <td>
                                    <asp:Image ID="Image22" runat="server" class="img-responsive img-left imgspacebottom fancybox rcorners002" src="img/gallery/22.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image23" runat="server" class="img-responsive img-left fancybox rcorners002" src="img/gallery/23.jpg" Width="250" Height="173" alt="" />

                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style1">
                                    <asp:Image ID="Image24" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/24.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image25" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/25.jpg" Width="250" Height="173" alt="" />
                                </td>

                                <td class="auto-style3">
                                    <asp:Image ID="Image26" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/26.jpg" Width="250" Height="173" alt="" />
                                </td>
                                <td>
                                    <asp:Image ID="Image27" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/27.jpg" Width="308px" Height="261px" alt="" />
                                </td>
                            </tr>
                        </table>

                        <br />

                        <table>
                            <tr>
                                <td>
                                    <asp:Image ID="Image28" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/28.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image29" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/29.jpg" Width="250" Height="173" alt="" />
                                    <br />
                                    <asp:Image ID="Image30" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/30.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image31" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/31.jpg" Width="250" Height="173" alt="" />
                                </td>

                                <td>
                                    <asp:Image ID="Image32" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/32.jpg" Width="530" Height="367" alt="" />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Image ID="Image33" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/33.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image34" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/34.jpg" Width="250" Height="173" alt="" />
                                </td>
                                <td>
                                    <asp:Image ID="Image35" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/35.jpg" Width="250" Height="173" alt="" />
                                    <asp:Image ID="Image36" runat="server" class="img-responsive img-left imgspaceup fancybox rcorners002" src="img/gallery/36.jpg" Width="250" Height="173" alt="" />
                                </td>
                            </tr>
                        </table>

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
    

        <!-- for one by one images in this page -->

        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.pack.min.js"></script>
        <script type="text/javascript">
            $(function ($) {
                var addToAll = false;
                var gallery = true;
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

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
