<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminNew.aspx.cs" Inherits="Travel_Agency.adminNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Admin Account</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual1.css" rel="stylesheet">

    <%--<link href="css/stylish-portfolio.css" rel="stylesheet">--%>

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <%--< link href = "bootstrap-3.3.6-dist/css/bootstrap.min.css" rel = "stylesheet" / >  
    < script src = "Scripts/jquery-1.9.1.js" > < /script> 
    < script src = "bootstrap-3.3.6-dist/js/bootstrap.js" > < /script> 
       

    <script type="text/javascript">   
        $(document).ready(function () {

            $('#GridView1 > tbody > tr').each(function (index) {

                if ($(this).children('td:nth-child(3)').text() == "Standard Cars") {
                    $(this).children('td:nth-child(3)').css("background-color", "#33CC99");
                } else {
                    $(this).children('td:nth-child(3)').css("background-color", "#FFCC99");
                }

            });
        });
</script>  --%>


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
    </style>

    <style>
        table.center {
            margin-left: auto;
            margin-right: auto;
        }
                
        .auto-style9 {
            width: 119px;
        }

        .auto-style10 {
            width: 150px;
        }

        .auto-style15 {
            width: 426px;
            height: 60px;
        }

        .auto-style16 {
            height: 60px;
        }

        .auto-style17 {
            width: 30px;
        }

        .auto-style19 {
            width: 79px;
        }

        .auto-style20 {
            height: 60px;
            width: 79px;
        }

        .auto-style23 {
            width: 419px;
            height: 60px;
        }

        .auto-style24 {
            width: 419px;
        }
    </style>
   
    <style type="text/css">
        .paginationClass span {
            font-weight: bold;
        }
    </style>
   
    <style type="text/css">
        #menu-toggle {
            z-index: 1;
            position: fixed;
            top: 0;
            right: 0;
        }

        .toggle {
            margin: 5px 5px 0 0;
        }

        .call-to-action .btn {
            margin: 10px;
        }

        .btn-dark {
            border-radius: 0;
            color: #fff;
            background-color: rgba(0,0,0,0.4);
        }

            .btn-dark:hover,
            .btn-dark:focus,
            .btn-dark:active {
                color: #fff;
                background-color: rgba(0,0,0,0.7);
            }

        .auto-style25 {
            width: 216px;
        }

        .auto-style28 {
            height: 60px;
            width: 505px;
        }
        .auto-style29 {
            width: 40px;
        }
        .auto-style30 {
            width: 80px;
        }
        .auto-style31 {
            width: 233px;
        }
        </style>  
    
    
 <link href="css/bootstrap.min1.css" rel="stylesheet" >
<script src="js/bootstrap.min1.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ----------> 
   

</head>
<body>







    <form id="form1" runat="server">
      
     

        <nav class="navbar navbar-inverse sidebar" role="navigation">
    <div class="container-fluid" >
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Menu</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1"> 
			<ul class="nav navbar-nav">
				<%--<li class="active"><a href="#"><asp:Button ID="Button20" runat="server" Text="Home" BorderStyle="None" BackColor="Black" /><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>--%>
				<li class="active" ><a href="#"><asp:Button ID="Button16" runat="server" Text="Tours Details" BorderStyle="None" BackColor="Black" OnClick="Button16_Click" /><span style="font-size:16px;" ></span></a></li>
				<li class="active" ><a href="#"><asp:Button ID="Button19" runat="server" Text="Vehical Details" BorderStyle="None" BackColor="Black" OnClick="Button19_Click" /><span style="font-size:16px;"></span></a></li>
                <li class="active" ><a href="#"><asp:Button ID="Button21" runat="server" Text="Shopping Details" BorderStyle="None" BackColor="Black" OnClick="Button21_Click" /><span style="font-size:16px;" ></span></a></li>
                <li class="active" ><a href="#"><asp:Button ID="Button22" runat="server" Text="Feedbacks" BorderStyle="None" BackColor="Black" OnClick="Button22_Click" /><span style="font-size:16px;" ></span></a></li>
				<li class="active" ><a href="#"><asp:Button ID="Button23" runat="server" Text="Country Codes" BorderStyle="None" BackColor="Black" OnClick="Button23_Click" /><span style="font-size:16px;" ></span></a></li>
                <li class="active" ><a href="#"><asp:Button ID="Button20" runat="server" Text="Reports" BorderStyle="None" BackColor="Black" OnClick="Button20_Click" /><span style="font-size:16px;"></span></a></li>
                <li class="active" ><a href="#"><asp:Button ID="Button24" runat="server" Text="Sign Out" BorderStyle="None" BackColor="Black" OnClick="Button24_Click" /><span style="font-size:16px;" ></span></a></li>
                
               <%-- <li class="dropdown">
            
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>--%>
				<%--<li><a href="#">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li ><a href="#">Profil<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
				<%--<%--<li ><--%
                <%--a href="#">Messages<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>--%>
				<%--<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>--%>
			</ul>
		</div>
	</div>
</nav>
<div class="main">
<!-- Content Here -->


  <div class="dropdown">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
            <asp:ImageButton ID="dropdownMenu1" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" type="button" ImageUrl="img/down3.png" Width="35" Height="20" OnClick="dropdownMenu1_Click" />
            
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                 <li>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Reports</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="SignOut_btn" runat="server" OnClick="SignOut_btn_Click">Sign Out</asp:LinkButton>
                </li>
            </ul>
        </div>
                       

        <div class="brand">Emerald Tours</div>
        <div class="address-bar">
            2nd floor, Orex City | #19, Ja-Ela | Gampaha. Sri Lanka.<br />
            <h2><u><b>Admin Panel</b></u></h2>
        </div>
        
       

        <div class="container">

                    <asp:Panel ID="Panel1" runat="server">
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <center><h2><u>Tours Confirmation</u></h2></center>
                        <br />

                        <asp:ScriptManager runat="server" ID="sm">
                        </asp:ScriptManager>
                 
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>                              

                                <table>
                                    <tr>
                                        <td class="auto-style30">
                                            Tour Type :
                                        </td>
                                        <td class="auto-style31">
                                            <br />
                                            <asp:DropDownList ID="DropDownList3" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                                <asp:ListItem>Select Tour Type</asp:ListItem>
                                                <asp:ListItem>Fixed Tours</asp:ListItem>
                                                <asp:ListItem>Customize Tours</asp:ListItem>                                                
                                            </asp:DropDownList>     
                                            <br/><br/>                                        
                                        </td>
                                  
                                        <td class="auto-style30">
                                            Search By :
                                        </td>
                                        <td class="auto-style25">
                                            <br />
                                            <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                                <asp:ListItem>Select Search Type</asp:ListItem>
                                                <asp:ListItem>By Tour ID</asp:ListItem>
                                                <asp:ListItem>By User Name</asp:ListItem>
                                                <asp:ListItem>By Email</asp:ListItem>
                                                <asp:ListItem>Confirmed</asp:ListItem>
                                                <asp:ListItem>Not Confirmed</asp:ListItem>
                                            </asp:DropDownList>     
                                            <br/><br/>                                        
                                        </td>
                                                                         
                                        <td class="auto-style29"></td>
                                        <td class="auto-style25">                                           
                                            <asp:TextBox ID="TextBox14" runat="server" Width="300px" Enabled="False" Placeholder="Type Here ! ! !"></asp:TextBox>                                           
                                        </td>                                       
                                 
                                        <td class="auto-style29">
                                        </td>
                                        <td>        
                                            <asp:Button ID="Button15" runat="server" class="rundbtn btn btn-default" Text="Search" Width="100px" Enabled="False" OnClick="Button15_Click" />                                  
                                        </td>                                      
                                    </tr>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                    </tr>
                                    </table>                                 

                                <center><asp:Label ID="Label12" runat="server" Font-Size="Large" ForeColor="Red" Text="No Records Found ! ! !" Visible="False"></asp:Label></center>
                                <br />
                                <br />

                                <asp:GridView ID="GridView5" runat="server" CellPadding="0" Font-Size="Large" GridLines="None"
                                    HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" AutoGenerateColumns="False" OnRowDataBound="GridView5_RowDataBound" Visible="False">

                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>

                                                <input name="MyRadioButton" type="radio" value='<%# Eval("TID") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="tid" HeaderText="TID" />

                                        <asp:BoundField DataField="uname" HeaderText="User Name" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="main_category" HeaderText="Main Category" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="sub_category" HeaderText="Sub Category" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="duration" HeaderText="Duration" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>                                    

                                        <asp:BoundField DataField="travel_date" HeaderText="Travel Date" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="inquiry_date" HeaderText="Inquiry Date" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="budget" HeaderText="Budget" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="status" HeaderText="Confirmed (Y/N)" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                    </Columns>

                                    <PagerStyle BackColor="#CCCCCC" />

                                </asp:GridView>                                

                                <asp:GridView ID="GridView6" runat="server" CellPadding="0" Font-Size="Large" GridLines="None"
                                    HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" AutoGenerateColumns="False" OnRowDataBound="GridView2_RowDataBound" Visible="False" >

                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>

                                                <input name="MyRadioButton1" type="radio" value='<%# Eval("CTID") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="ctid" HeaderText="CTID" />

                                        <asp:BoundField DataField="uname" HeaderText="User Name" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="duration" HeaderText="Duration" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="group_size" HeaderText="Group Size" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>                                      

                                        <asp:BoundField DataField="travel_date" HeaderText="Travel Date" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="inquiry_date" HeaderText="Inquiry Date" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="act_budget" HeaderText="Actual Budget" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="status" HeaderText="Confirmed (Y/N)" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                    </Columns>

                                    <PagerStyle BackColor="#CCCCCC" />

                                </asp:GridView>
                                                               
                                <div>                                    
                                    <center><asp:Label ID="Label13" runat="server" ForeColor="Red" Visible="False"></asp:Label><br/><asp:Label ID="Label14" runat="server" ForeColor="Red" Visible="False"></asp:Label></center>
                                </div>

                                &nbsp;&nbsp;&nbsp;&nbsp;

                                <table class="table">
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" Text="Actual Budget (US $) :  " Visible="False"></asp:Label>
                                            &nbsp;
                                            <asp:TextBox ID="TextBox11" runat="server" Width="200px" placeholder="US $" AutoPostBack="True" Visible="False"></asp:TextBox><br/>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label16" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/refresh.png" Width="40" Height="40" OnClick="ImageButton1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style28">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Button ID="Button17" runat="server" Text="Confirmed" class="rundbtn btn btn-default" OnClick="Button17_Click" OnClientClick="return confirm(&quot;Do you want to Update this ?&quot;);" Visible="False" />
                                        </td>
                                        <td class="auto-style15">
                                            &nbsp;<asp:Button ID="Button18" runat="server" Text="Non-Confirmed" class="rundbtn btn btn-default" OnClientClick="return confirm(&quot;Do you want to Update this ?&quot;);" OnClick="Button18_Click" Visible="False" />
                                        </td>
                                    </tr>
                                </table>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                                             
                        <br />                      

                    </div>
                </div>
            </div>     
            
    </asp:Panel>
            
            
            
            
            
            <asp:Panel ID="Panel2" runat="server">

            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <center><h2><u>Vehicle Data</u></h2></center>
                        <br />

                        <h4>Insert a new vehicle</h4>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <table class="table">
                                    <tr>
                                        <td class="auto-style9">Vehicle Name :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="vname_tbox" runat="server" Width="200px"></asp:TextBox>
                                        </td>

                                        <td class="auto-style10">Type :
                                        </td>
                                        <td>                                       

                                            <asp:DropDownList ID="vtype_ddbox" runat="server" Width="200px">
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
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">Rate Per Day (US$) :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="rate_tbox" runat="server" Width="100px" placeholder="US$"></asp:TextBox>
                                        </td>

                                        <td class="auto-style10">Additional Charges (US$) :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="add_chr_tbox" runat="server" Width="100px" placeholder="US$"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>

                                        <td>
                                            <center><asp:Button ID="save_btn" Text="Save" runat="server" OnClick="save_btn_Click" Width="64px" class="rundbtn btn btn-default"/></center>
                                        </td>
                                    </tr>
                                </table>

                                <br />
                                <h4>Search a Vehicle</h4>

                                Vehicle Name :&nbsp;&nbsp;
                           
                                <asp:TextBox ID="searchVal_txt" runat="server" Width="200"></asp:TextBox>
                                &nbsp;&nbsp;                  
                                <asp:Button ID="search_btn" Text="Search" runat="server" OnClick="search_btn_Click" class="rundbtn btn btn-default" />

                                <br />
                                <br />
                                <center><asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Red" Text="No Records Found ! ! !" Visible="False"></asp:Label></center>
                                <br />
                                <br />

                                <asp:GridView ID="GridView1" runat="server" CellPadding="0" Font-Size="Large" GridLines="None"
                                    HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" AutoGenerateColumns="False"
                                    AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">

                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>

                                                <input name="MyRadioButton" type="radio" value='<%# Eval("VNO") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="vno" HeaderText="VNO" />

                                        <asp:BoundField DataField="vname" HeaderText="VEHICLE" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="vtype" HeaderText="TYPE" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="rate_per_day_US_$" HeaderText="RATE (US $)" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="excess_km_US_$" HeaderText="ADD.CHARGE (US $)" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="status" HeaderText="STATUS" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                    </Columns>

                                    <PagerStyle BackColor="#CCCCCC" />

                                </asp:GridView>

                                <div>
                                    <center><asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="False"></asp:Label></center>
                                    <center><asp:Label ID="Label1" runat="server" Text="text" ForeColor="Red" Visible="False"></asp:Label></center>
                                </div>

                                <table>
                                    <tr>
                                        <td class="auto-style20">
                                            <asp:Button ID="Button1" runat="server" Text="Edit" class="rundbtn btn btn-default" OnClick="Button1_Click" />
                                        </td>
                                        <td class="auto-style15">
                                            <asp:Button ID="Button2" runat="server" Text="Remove" class="rundbtn btn btn-default" OnClick="Button2_Click " OnClientClick="return confirm(&quot;Are you sure you want to remove this ?&quot;);" />                                            
                                        </td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="215px" Height="30px" placeholder="VEHICLE NAME" Visible="False"></asp:TextBox>
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td class="auto-style16">                                           
                                            <asp:DropDownList ID="DropDownList1" runat="server" Width="215px" Height="30px" Visible="False">
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
                                    </tr>

                                    <tr>
                                        <td class="auto-style20">                                           
                                        </td>
                                        <td class="auto-style16">  
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                            <asp:DropDownList ID="DropDownList4" Width="215px" Height="30px" Visible="False" runat="server">
                                                <asp:ListItem>-Select Status-</asp:ListItem>
                                                <asp:ListItem>Available</asp:ListItem>
                                                <asp:ListItem>Not Available</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox3" runat="server" Width="215px" Height="30px" placeholder="RATE PER DAY" Visible="False"></asp:TextBox>
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox4" runat="server" Width="215px" Height="30px" placeholder="ADD.CHARGE FOR EXCESS 1KM" Visible="False"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style19"></td>
                                        <td></td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button3" runat="server" Text="Update" class="rundbtn btn btn-default" OnClick="Button3_Click" Visible="False" />
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button4" runat="server" Text="Cancel" class="rundbtn btn btn-default" OnClick="Button4_Click" Visible="False" />
                                        </td>
                                    </tr>
                                </table>


                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="form-group col-lg-12">
                        </div>
                    </div>
                </div>
            </div>




                </asp:Panel>

            <asp:Panel ID="Panel3" runat="server">

            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <center><h2><u>Shopping Data</u></h2></center>
                        <br />

                        <h4>Insert a New Shopping Complex</h4>

                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>


                                <table class="table">
                                    <tr>
                                        <td class="auto-style9">Place Name : 
                                        </td>
                                        <td>
                                            <asp:TextBox ID="place_tbox" runat="server" Width="290px"></asp:TextBox>
                                        </td>

                                        <td class="auto-style10">Address : 
                                        </td>
                                        <td>
                                            <asp:TextBox ID="add_tbox" runat="server" Width="290px"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style9">URL address :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="url_tbox" runat="server" Font-Bold="True" ForeColor="Red" Width="290px"></asp:TextBox>
                                        </td>

                                        <td class="auto-style10">Description :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="des_tbox" runat="server" TextMode="MultiLine" Width="290px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <center><asp:Button ID="SaveShopping_btn" Text="Save" runat="server" OnClick="SaveShopping_btn_Click" class="rundbtn btn btn-default"/></center>
                                        </td>
                                    </tr>
                                </table>

                                <br />

                                <h4>Shopping Complexes</h4>
                                <br />
                                <center><asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Red" Text="No Records Found ! ! !" Visible="False"></asp:Label></center>


                                <asp:GridView ID="GridView2" runat="server" CellPadding="0" Font-Size="Large" GridLines="None"
                                    HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" AutoGenerateColumns="False"
                                    AllowPaging="True" OnPageIndexChanging="GridView2_PageIndexChanging" OnRowDataBound="GridView2_RowDataBound" PageSize="5" OnRowCreated="GridView2_RowCreated1">

                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>

                                                <input name="MyRadioButton1" type="radio" value='<%# Eval("SNO") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:BoundField DataField="sno" HeaderText="SNO" />
                                        <asp:BoundField DataField="place" HeaderText="PLACE" />
                                        <asp:BoundField DataField="description" HeaderText="DESCRIPTION" />
                                        <asp:BoundField DataField="address" HeaderText="ADDRESS" />
                                        <asp:BoundField DataField="url" HeaderText="URL" />

                                    </Columns>

                                    <PagerStyle BackColor="#CCCCCC" />

                                </asp:GridView>

                                <div>
                                    <center><asp:Label ID="Label4" runat="server" Text="text" ForeColor="Red" Visible="False"></asp:Label></center>
                                </div>


                                <table>
                                    <tr>
                                        <td class="auto-style20">
                                            <asp:Button ID="Button5" runat="server" Text="Edit" class="rundbtn btn btn-default" OnClick="Button5_Click" />
                                        </td>
                                        <td class="auto-style23">
                                            <asp:Button ID="Button6" runat="server" Text="Remove" class="rundbtn btn btn-default" OnClick="Button6_Click" OnClientClick="return confirm(&quot;Are you sure you want to remove this ?&quot;);" />                                          
                                        </td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox2" runat="server" Width="301px" Height="30px" placeholder="PLACE" Visible="False"></asp:TextBox>
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox7" runat="server" Width="301px" Height="30px" placeholder="ADDRESS" Visible="False"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style20">                                         
                                        </td>
                                        <td class="auto-style23">                                            
                                        </td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox5" runat="server" Width="301px" Height="30px" placeholder="URL" ForeColor="#3333FF" Visible="False"></asp:TextBox>
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox6" runat="server" Width="301px" Height="75px" placeholder="DESCRIPTION" TextMode="MultiLine" Visible="False"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style19"></td>
                                        <td class="auto-style24"></td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button7" runat="server" Text="Update" class="rundbtn btn btn-default" OnClick="Button7_Click" Visible="False" />
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button8" runat="server" Text="Cancel" class="rundbtn btn btn-default" OnClick="Button8_Click" Visible="False" />
                                        </td>
                                    </tr>
                                </table>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="form-group col-lg-12">
                        </div>
                    </div>
                </div>
            </div>
                </asp:Panel>

            <asp:Panel ID="Panel4" runat="server">

            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <center><h2><u>User Feedback Data</u></h2></center>
                        <br />
                        <center><asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Red" Text="No Records Found ! ! !" Visible="False"></asp:Label></center>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                                <asp:GridView ID="GridView3" runat="server" CellPadding="0" Font-Size="Large" GridLines="None" HorizontalAlign="Center" Style="margin-left: 0px"
                                    Width="1115px" Class="table" OnRowDataBound="GridView3_RowDataBound" AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="fno"
                                    OnRowDeleting="GridView3_RowDeleting" OnPageIndexChanging="GridView3_PageIndexChanging" OnRowCreated="GridView3_RowCreated">

                                    <Columns>
                                        <asp:BoundField DataField="fno" HeaderText="FNO" />
                                        <asp:BoundField DataField="uname" HeaderText="USER NAME" />
                                        <asp:BoundField DataField="country" HeaderText="COUNTRY" />

                                         <asp:BoundField DataField="date" HeaderText="DATE" DataFormatString="{0:d}" />                                     

                                        <asp:BoundField DataField="fdbk" HeaderText="FEEDBACK" />

                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>
                                                <asp:Button ID="deleteButton" runat="server" CommandName="Delete" Text="Remove"
                                                    OnClientClick="return confirm('Are you sure you want to remove this ?');"
                                                    ControlStyle-Width="97%" ControlStyle-CssClass="rundbtn btn btn-default" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>

                                    <PagerStyle BackColor="#CCCCCC" />

                                </asp:GridView>

                            </ContentTemplate>
                                                    
                        </asp:UpdatePanel>

                        <div class="form-group col-lg-12">
                        </div>

                    </div>
                </div>
            </div>
            </asp:Panel>

            <asp:Panel ID="Panel5" runat="server">
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <center><h2><u>Country Codes Data</u></h2></center>
                        <br />

                        <h4>Insert a New Country Code</h4>

                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>

                                <table class="table">
                                    <tr>
                                        <td class="auto-style9">Country Name : 
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" Width="290px"></asp:TextBox>
                                        </td>

                                        <td class="auto-style10">Code : 
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox9" runat="server" Width="290px"></asp:TextBox>
                                        </td>
                                    </tr>                                  

                                    <tr>
                                        <td>
                                            <center><asp:Button ID="Button9" Text="Save" runat="server" class="rundbtn btn btn-default" OnClick="Button9_Click"/></center>
                                        </td>
                                    </tr>
                                </table>

                                <br />
                                <h4>Search Country</h4>

                                Country Name :&nbsp;&nbsp;
                           
                                <asp:TextBox ID="TextBox10" runat="server" Width="200"></asp:TextBox>
                                &nbsp;&nbsp;                  
                                <asp:Button ID="Button14" Text="Search" runat="server" class="rundbtn btn btn-default" OnClick="Button14_Click" />

                                <br />
                                <br />
                                <center><asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="Red" Text="No Records Found ! ! !" Visible="False"></asp:Label></center>
                                <br />

                                <h4>
                                    <asp:Label ID="Label11" runat="server" Text="Country Codes"></asp:Label></h4>
                                <br />
                                <center><asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Red" Text="No Records Found ! ! !" Visible="False"></asp:Label></center>

                                <asp:GridView ID="GridView4" runat="server" CellPadding="0" Font-Size="Large" GridLines="None"
                                    HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" AutoGenerateColumns="False"
                                    AllowPaging="True" OnPageIndexChanging="GridView4_PageIndexChanging" OnRowDataBound="GridView4_RowDataBound" PageSize="5" OnRowCreated="GridView4_RowCreated">

                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>

                                                <input name="MyRadioButton2" type="radio" value='<%# Eval("CCNO") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                      
                                        <asp:BoundField DataField="ccno" HeaderText="CCNO" />
                                        <asp:BoundField DataField="country" HeaderText="COUNTRY" />
                                        <asp:BoundField DataField="code" HeaderText="CODE" />

                                    </Columns>                                  

                                    <PagerStyle BackColor="#CCCCCC" />

                                </asp:GridView>

                                <div>
                                    <center><asp:Label ID="Label9" runat="server" Text="text" ForeColor="Red" Visible="False"></asp:Label></center>
                                </div>

                                <table>
                                    <tr>
                                        <td class="auto-style20">
                                            <asp:Button ID="Button10" runat="server" Text="Edit" class="rundbtn btn btn-default" OnClick="Button10_Click" />
                                        </td>
                                        <td class="auto-style23">
                                            <asp:Button ID="Button11" runat="server" Text="Remove" class="rundbtn btn btn-default" OnClientClick="return confirm(&quot;Are you sure you want to remove this ?&quot;);" OnClick="Button11_Click" />                                           
                                        </td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox12" runat="server" Width="301px" Height="30px" placeholder="COUNTRY NAME" Visible="False"></asp:TextBox>
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td class="auto-style16">
                                            <asp:TextBox ID="TextBox13" runat="server" Width="301px" Height="30px" placeholder="CODE" Visible="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td class="auto-style19"></td>
                                        <td class="auto-style24"></td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button12" runat="server" Text="Update" class="rundbtn btn btn-default" Visible="False" OnClick="Button12_Click" />
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button13" runat="server" Text="Cancel" class="rundbtn btn btn-default" Visible="False" OnClick="Button13_Click" />
                                        </td>
                                    </tr>
                                </table>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="form-group col-lg-12">
                        </div>
                    </div>
                </div>
            </div>
            </asp:Panel>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>




</div>




      
       
    </form>
</body>
</html>
