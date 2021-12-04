<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report_types.aspx.cs" Inherits="Travel_Agency.reports.report_types" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - Select Report</title>

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

        .auto-style1 {
            width: 58px
        }
        .auto-style2 {
            width: 387px
        }

        </style>
 
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="dropdown">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00"></asp:Label>
            <asp:ImageButton ID="dropdownMenu1" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" type="button" ImageUrl="img/down3.png" Width="35" Height="20" />
        
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
               
                <li>
                    <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Sign Out</asp:LinkButton>

                </li>
            </ul>
        </div>   

        <div class="container">
         
            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <table>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/bk1.png" width="35" Height="35" OnClick="ImageButton1_Click"/>
                                </td>
                                <td>
                
                                    <center><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><asp:Label ID="Label25" runat="server" Text="Report Generator"></asp:Label></u></h2></center>
                                </td>
                            </tr>
                        </table>
                
                        <br />

                        <table>
                            <tr>
                                <td>
                                    <h4>Select Report Type</h4>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Image ID="Image1" runat="server" ImageUrl="img/select_report.png" Width="40" Height="40" />
                                </td>
                            </tr>
                        </table>
                        <br/><br/>


                        <table class="table">
                            <tr>
                                <td class="auto-style1">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button1" runat="server" Text="Monthly Income Report (Fixed Tours)" class="rundbtn btn btn-default" width="400" OnClick="Button1_Click" />
                               </td>

                                 <td class="auto-style1">
                                     <asp:Image ID="Image3" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Monthly Income Report (Customize Tours)" class="rundbtn btn btn-default" width="400" OnClick="Button2_Click" />
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style1">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button3" runat="server" Text="Monthly Income Report (Vehicle)" class="rundbtn btn btn-default" width="400" OnClick="Button3_Click" />
                                </td>

                                 <td class="auto-style1">
                                     <asp:Image ID="Image5" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" Text="Monthly Income Report (By Country)" class="rundbtn btn btn-default" width="400" OnClick="Button4_Click" />
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style1">
                                    <asp:Image ID="Image6" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button5" runat="server" Text="Current Expect Income Report (Fixed Tours)" class="rundbtn btn btn-default" width="400" OnClick="Button5_Click" />
                                </td>

                                 <td class="auto-style1">
                                     <asp:Image ID="Image7" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td>
                                    <asp:Button ID="Button6" runat="server" Text="Current Expect Income Report (Customize Tours)" class="rundbtn btn btn-default" width="400" OnClick="Button6_Click" />
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style1">
                                    <asp:Image ID="Image8" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button7" runat="server" Text="Current Inquiries Report (Fixed Tours)" class="rundbtn btn btn-default" width="400" OnClick="Button7_Click" />
                                </td>

                                 <td class="auto-style1">
                                     <asp:Image ID="Image9" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td>
                                    <asp:Button ID="Button8" runat="server" Text="Current Inquiries Report (Customize Tours)" class="rundbtn btn btn-default" width="400" OnClick="Button8_Click" />
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style1">
                                    <asp:Image ID="Image10" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button9" runat="server" Text="Vehicle Report" class="rundbtn btn btn-default" width="400" OnClick="Button9_Click" />
                                </td>

                                 <td class="auto-style1">
                                     <asp:Image ID="Image11" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td>
                                    <asp:Button ID="Button10" runat="server" Text="Customer Feedback Report" class="rundbtn btn btn-default" width="400" OnClick="Button10_Click" />
                                </td>
                            </tr>

                            <tr>
                                 <td class="auto-style1">
                                     <asp:Image ID="Image12" runat="server" ImageUrl="img/report.png" Width="40" Height="40" />
                                </td>
                                <td>
                                    <asp:Button ID="Button11" runat="server" Text="Registered Members (Count By Country) Report" class="rundbtn btn btn-default" width="400" OnClick="Button11_Click" />
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>
            </div>



        </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </form>
</body>
</html>
