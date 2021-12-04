<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report_dly_cus_fdbk.aspx.cs" Inherits="Travel_Agency.report_dly_cus_fdbk" %>

<%@ Register TagPrefix="cc1" Namespace="ControlFreak" Assembly="ExportPanel" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Daily Customer Feedback Report</title>

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
            width: 58px;
        }

        .auto-style2 {
            width: 50px;
            height: 50px;
        }

        .auto-style3 {
            height: 50px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">

        <div class="dropdown">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CCCC00" Visible="False"></asp:Label>
           
            <br/>
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
                                 
                                    <center><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><asp:Label ID="Label14" runat="server" Text="Daily Customer Feedback Report"></asp:Label></u></h2></center>
                                </td>
                            </tr>
                        </table>

                        
                        <br />

                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div>
                            <br />
                            <br />

                            <table>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label5" runat="server" Text="Feedback Details  :  "></asp:Label>
                                    </td>
                                    <td class="auto-style3">&nbsp;
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem>Daily</asp:ListItem>
                                            <asp:ListItem>By Country</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label7" runat="server" Text="Country  :  " Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style3">&nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList2" runat="server" Width="250px" Visible="False">
                                            <asp:ListItem>Select Country. . .</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>


                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Generate Report" class="rundbtn btn btn-default" OnClick="Button1_Click" />
                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>
                                        <center>
                                        <asp:Label ID="Label13" runat="server" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label>
                                        </center>
                                    </td>
                                </tr>
                            </table>




                            <br />
                           

                            <cc1:ExportPanel ID="ExportPanel1" runat="server" BorderStyle="Solid">
                                <center>
                <h3>Emerald tours<br />#19, Orex city, ja-ela, gampaha. Sri Lanka</h3></center>
                
                                    
                <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label12" runat="server" Text="" Font-Bold="True" Font-Size="Medium"></asp:Label><br/><br />
                                <center>
                <h4>
                  
                    <asp:Label ID="Label10" runat="server" Text="Daily" Visible="False"></asp:Label>&nbsp;Customer Feedback Report&nbsp;<asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                    <br/>
                    <asp:Label ID="Label9" runat="server" Text="As At" Visible="False"></asp:Label>
&nbsp;

                    <asp:Label ID="date_lbl" runat="server" Visible="False"></asp:Label></h4>
                <br />
                                       
                    <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label>                
                

                <asp:GridView ID="GridView1" runat="server" DataTextField="country" AppendDataBoundItems="True" AutoPostBack="True" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="2" Width="900px" Class="table" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False">
                  <Columns>
                    <asp:BoundField DataField="User Name" HeaderText="User Name" ItemStyle-Width="50px" />
                    <asp:BoundField DataField="Country" HeaderText="Country" ItemStyle-Width="250px"/>
                    <asp:BoundField DataField="E-mail" HeaderText="E-mail" ItemStyle-Width="150px"/>
                    <asp:BoundField DataField="Feedback" HeaderText="Feedback" />
                </Columns>               
                </asp:GridView>

                 <asp:GridView ID="GridView2" runat="server" DataTextField="country" AppendDataBoundItems="True" AutoPostBack="True" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="2" Width="900px" Class="table" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False">
                  <Columns>
                    <asp:BoundField DataField="User Name" HeaderText="User Name" ItemStyle-Width="50px" />                    
                    <asp:BoundField DataField="E-mail" HeaderText="E-mail" ItemStyle-Width="150px"/>
                      <asp:BoundField DataField="Date" HeaderText="Date" ItemStyle-Width="250px" DataFormatString="{0:d}"/>
                    <asp:BoundField DataField="Feedback" HeaderText="Feedback" />
                </Columns>               
                </asp:GridView>

                <br /><br />
                    <table>
                      <tr>                       
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="...................................................................." Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style1"></td>                      
                           <td>
                               <asp:Label ID="Label2" runat="server" Text="...................................................................." Visible="False"></asp:Label>
                           </td>
                        </tr>
                         <tr>                        
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Prepared By" Visible="False"></asp:Label>
                        </td>


                        <td class="auto-style1"></td>                       

                         <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Checked By" Visible="False"></asp:Label> 
                        </td>
                        </tr>

                </table>
            </center>
                            </cc1:ExportPanel>
                        </div>
                        <br />

                        <div>
                            <center>

                             <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">--%>
                                <%--<asp:ListItem Value="HTML" Selected="True" style="margin-right:20px">HTML</asp:ListItem>--%>
                               <%-- <asp:ListItem Value="Excel" style="margin-right:20px">Excel</asp:ListItem>
                                <asp:ListItem Value="Word" style="margin-right:20px">Pdf</asp:ListItem>--%>
                                <%--<asp:ListItem Value="Powerpoint" style="margin-right:20px">Powerpoint</asp:ListItem>--%>
                                <%--<asp:ListItem Value="WordPerfect" style="margin-right:20px">WordPerfect</asp:ListItem>--%>                                
                       <%--     </asp:RadioButtonList>--%>

                            </center>
                            <br />
                            <center>
                            <asp:Button ID="Export_btn" runat="server" OnClick="Export_btn_Click" Text="Export to Exel" class="rundbtn btn btn-default" />                                                                                                                    
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Export to Pdf" class="rundbtn btn btn-default"/>                                                                                                                     
                            </center>
                        </div>

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
