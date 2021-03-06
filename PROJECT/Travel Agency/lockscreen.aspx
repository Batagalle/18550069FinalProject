<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lockscreen.aspx.cs" Inherits="Travel_Agency.lockscreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Admin Lock Screen</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body onload="getTime()">
    <form id="form1" runat="server">
   

        <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  	<div class="container">
	  	
	  		<div id="showtime"></div>
	  			<div class="col-lg-4 col-lg-offset-4">
	  				<div class="lock-screen">
		  				<%--<h2><a data-toggle="modal" href="#myModal"><i class="fa fa-lock"></i></a></h2>--%>

                          <%--<h2><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/lock1.png" width="65" Height="65" data-toggle="modal" href="#myModal"/></h2>--%>

                          <a data-toggle="modal" href="#myModal"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/lock1.png" width="65" Height="65"/></a>
		  				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UNLOCK</p>
                         
		  				
				          <!-- Modal -->
				          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
				              <div class="modal-dialog">
				                  <div class="modal-content">
				                      <div class="modal-header">
				                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>                                        
				                          <h4 class="modal-title">Welcome Back</h4>
				                      </div>
				                      <div class="modal-body">
				                          <p class="centered"><img class="img-circle" width="80" src="img/ui-sam.jpg"></p>
				                          <%--<input type="password" name="password" placeholder="Password" autocomplete="off" class="form-control placeholder-no-fix">--%>
                                          <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" placeholder="Password" class="form-control placeholder-no-fix"></asp:TextBox>
                                          <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
				
				                      </div>
				                      <div class="modal-footer centered">
				                          <%--<button data-dismiss="modal" class="btn btn-theme04" type="button">Cancel</button>
				                          <button class="btn btn-theme03" type="button">Login</button>--%>

                                          <asp:Button ID="Button1" runat="server" Text="Cancel" data-dismiss="modal" class="btn btn-theme04"/>
                                          <asp:Button ID="Button2" runat="server" Text="Login" class="btn btn-theme03" OnClick="Button2_Click" />

				                      </div>
				                  </div>
				              </div>
				          </div>
				          <!-- modal -->
		  				
		  				
	  				</div><! --/lock-screen -->
	  			</div><!-- /col-lg-4 -->
	  	
	  	</div><!-- /container -->

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("img/login-bg.jpg", { speed: 500 });
    </script>

    <script>
        function getTime() {
            var today = new Date();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();
            // add a zero in front of numbers<10
            m = checkTime(m);
            s = checkTime(s);
            document.getElementById('showtime').innerHTML = h + ":" + m + ":" + s;
            t = setTimeout(function () { getTime() }, 500);
        }

        function checkTime(i) {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    </script>


    </form>
</body>
</html>
