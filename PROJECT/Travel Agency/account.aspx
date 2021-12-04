<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="Travel_Agency.account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerald Tours - User Account</title>

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
    </style>

    <style>
        table.center {
            margin-left: auto;
            margin-right: auto;
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
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Change Password</asp:LinkButton>
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
                        <h2 class="intro-text text-center">Hello <strong>
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        </strong>! ! !                            
                        </h2>
                        <hr>
                        <hr class="visible-xs">

                        <h2><u>Your Tours</u></h2>
                        <br />

                        <asp:ScriptManager runat="server" ID="sm">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>


                                <asp:GridView ID="GridView1" runat="server" CellPadding="0" Font-Size="Medium" GridLines="None" HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" OnRowDataBound="GridView1_RowDataBound" PageSize="15" AutoGenerateColumns="False">

                                    <Columns>

                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>
                                                <input name="MyRadioButton" type="radio" value='<%# string.Concat(Eval("SUB CATEGORY"), " ", Eval("TID")) %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="TID" HeaderText="TID" />

                                        <asp:BoundField DataField="MAIN CATEGORY" HeaderText="MAIN CATEGORY" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="SUB CATEGORY" HeaderText="SUB CATEGORY" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="TRAVEL DATE" HeaderText="TRAVEL DATE" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="GROUP SIZE" HeaderText="GROUP SIZE" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="DURATION" HeaderText="DURATION" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="BUDGET (US $)" HeaderText="BUDGET (US $)" ItemStyle-Width="100"></asp:BoundField>

                                        <asp:BoundField DataField="INQUIRY DATE" HeaderText="INQUIRY DATE" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Confirmed ? (Y/N)" HeaderText="Confirmed ? (Y/N)" ItemStyle-Width="120"></asp:BoundField>

                                        <asp:BoundField DataField="VEHICLE NAME" HeaderText="VEHICLE NAME" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                    </Columns>
                                </asp:GridView>


                                <div align="right">

                                    <center> <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                    <br />
                                    <center> <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Fuchsia" Visible="False"></asp:Label> </center>

                                    <center><asp:Label runat="server" Text="If You Want to Add Or Update A Vehicle, Please Remember Relevant Travel Date With Sub Category. . .<br/>Please Contact Us, If You Want To Change a Vehicle When Your Trip Confirmed ! ! ! " Font-Size="Medium" ForeColor="#CC0000"></asp:Label></center>

                                    <center><asp:Button ID="Button6" runat="server" class="rundbtn btn btn-default" Text="Vehicle List" OnClick="Button6_Click" /></center>

                                    <asp:Button ID="Button1" runat="server" class="rundbtn btn btn-default" Text="INFO" OnClick="Button1_Click" />

                                    <asp:Button ID="Button8" runat="server" class="rundbtn btn btn-default" Text="REMOVE VEHICLE" OnClick="Button8_Click" OnClientClick='return confirm("Are you sure you want to remove this vehicle from this trip ?");' />

                                    <asp:Button ID="Button2" runat="server" class="rundbtn btn btn-default" Text="DELETE" OnClick="Button2_Click" OnClientClick='return confirm("Are you sure you want to delete this ?");' />
                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="form-group col-lg-12">
                        </div>

                    </div>
                </div>
            </div>


            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <h2><u>Your CUSTOMIZE Tours</u></h2>
                                <br />

                                <asp:GridView ID="GridView2" runat="server" CellPadding="0" Font-Size="Medium" GridLines="None" HorizontalAlign="Center" Style="margin-left: 0px" Width="1115px" Class="table" OnRowDataBound="GridView2_RowDataBound" PageSize="15" AutoGenerateColumns="False">

                                    <Columns>

                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>

                                                <input name="MyRadioButton1" type="radio" value='<%# Eval("CTID") %>' />

                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:BoundField DataField="CTID" HeaderText="CTID" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="INTERESTS" HeaderText="INTERESTS" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="ACCOMMODATION" HeaderText="ACCOMMODATION" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="TRAVEL DATE" HeaderText="TRAVEL DATE" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                          <asp:BoundField DataField="END DATE" HeaderText="END DATE" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="GROUP SIZE" HeaderText="GROUP SIZE" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="DURATION" HeaderText="DURATION" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="BUDGET (PER PERSON)" HeaderText="BUDGET (PER PERSON)" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="INQUIRY DATE" HeaderText="INQUIRY DATE" ControlStyle-Width="97%" DataFormatString="{0:d}">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Confirmed ? (Y/N)" HeaderText="Confirmed ? (Y/N)" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="VEHICLE NAME" HeaderText="VEHICLE NAME" ControlStyle-Width="97%">
                                            <ControlStyle Width="97%" />
                                        </asp:BoundField>

                                    </Columns>


                                </asp:GridView>

                                <div align="right">
                                    <center> <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label> </center>
                                    <br />
                                    <center> <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Fuchsia" Visible="False"></asp:Label> </center>

                                    <center><asp:Label runat="server" Text="If You Want to Add Or Update A Vehicle, Please Remember Relevant Travel Date With Tour ID (CTID). . .<br/>Please Contact Us, If You Want To Change a Vehicle When Your Trip Confirmed ! ! !  " Font-Size="Medium" ForeColor="#CC0000"></asp:Label></center>

                                    <center><asp:Button ID="Button7" runat="server" class="rundbtn btn btn-default" Text="Vehicle List" OnClick="Button7_Click" /></center>

                                    <asp:Button ID="Button9" runat="server" class="rundbtn btn btn-default" Text="REMOVE VEHICLE" OnClick="Button9_Click" OnClientClick='return confirm("Are you sure you want to remove this vehicle from this trip ?");' />

                                    <asp:Button ID="Button3" runat="server" class="rundbtn btn btn-default" Text="DELETE" OnClick="Button3_Click" OnClientClick='return confirm("Are you sure you want to delete this ?");' />

                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="form-group col-lg-12">
                        </div>

                    </div>
                </div>
            </div>


            <div class="row">
                <div class="box">
                    <div class="col-lg-12">

                        <h2><u>feedbacks</u></h2>

                        <center>
                            <h3>
                                <strong>Your Feedbacks Are Welcome . . .</strong>
                            </h3>
                            <p>
                                <font color="gray">
                                   Since we consider you as a valued customer,<br/>we highly appreciate your feedbacks.<br/>
                                Feel free to convey your suggestions or complaints which will guide us<br/>
                                to make our services more friendly and customer oriented.
                                    </font>
                            </p>
                        </center>
                        <br />



                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>


                                <center>
                        <asp:TextBox ID="TextBox1" runat="server" Height="148px" TextMode="MultiLine" Width="463px" placeholder="Feedbacks..." class="form-first-name form-control"></asp:TextBox>
                          <br/>
                            <asp:Button ID="Button4" class="rundbtn btn btn-default" runat="server" Text="Post" OnClick="Button4_Click" OnClientClick="return confirm(&quot;Do you want to post this feedback ?&quot;);" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button5" class="rundbtn btn btn-default" runat="server" Text="Clear" OnClick="Button5_Click"></asp:Button>
                        </center>

                            </ContentTemplate>
                        </asp:UpdatePanel>

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


        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>


    </form>
</body>
</html>
