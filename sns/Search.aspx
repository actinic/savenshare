<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="sns.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>search</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/bootstrap-social.css" rel="stylesheet"/>
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <!--navigation bar-->
        <div class="navbar navbar-default navbar-static-top navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="main.aspx">
                        <img class="img-circle" alt="Brand" src="sns.jpeg"/>
                    </a>
                    <a href="main.aspx" class="navbar-brand"><span class="label label-info">Save and Share</span></a>
                    <!--for responsive in small screen -->
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navHeaderCollapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="#">Sign Up</a></li>
                        <li><a href="admins/Login.aspx">Login</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Recent Uploads <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">All</a></li>
                                <li><a href="#">Your circle</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Specific</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- pictures -->
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
            Width="100%" BorderStyle="Solid" BorderWidth="5px" BackColor="White" BorderColor="White" CellPadding="0" CellSpacing="5" Font-Bold="True" Font-Italic="False" Font-Names="Arial Black" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="#999966" GridLines="Both" ShowFooter="False" ShowHeader="False">

            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("displayname") %>' Font-Bold="True" Font-Size="1.2em" ForeColor="Navy" /><br />
                <a href="<%# ResolveUrl(String.Format("~/admins/images/"+ Eval("picname"), Container.DataItem)) %>"><asp:Image ID="Image1" CssClass="img-responsive" runat="server" Width="400px" Height="300px" ImageUrl='<%# "~/admins/images/" + Eval("picname") %>' /></a>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("type") %>' Font-Bold="True" Font-Size="0.7em" ForeColor="Navy" /><br />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
</asp:DataList>

        <!--footer-->
        <footer id="myFooter">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <h5>Get started</h5>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Sign up</a></li>
                            <li><a href="#">Downloads</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h5>About us</h5>
                        <ul>
                            <li><a href="#">Company Information</a></li>
                            <li><a href="#">Contact us</a></li>
                            <li><a href="#">Reviews</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h5>Support</h5>
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Help desk</a></li>
                            <li><a href="#">Forums</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h5>Legal</h5>
                        <ul>
                            <li><a href="#">Terms of Service</a></li>
                            <li><a href="#">Terms of Use</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
                <!-- Here we use the Google Embed API to show Google Maps. -->
                <!-- In order for this to work in your project you will need to generate a unique API key.  
            <iframe id="map-container" frameborder="0" style="border:0"
                src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJOwg_06VPwokRYv534QaPC8g&key=AIzaSyBdJm9Amm4KALkKlZObWn40dcpRyH119zg" >
            </iframe>
            -->
            </div>
            
            <div class="footer-copyright text-right">
                <p>© 2017 Copyright Text </p>
            </div>
        </footer>
    </form>
</body>
</html>
