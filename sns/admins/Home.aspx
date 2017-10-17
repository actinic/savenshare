<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="sns.admins.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>admin</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/StyleSheet.css" rel="stylesheet" />
    <link href="../css/footer.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script language="C#" runat="server"></script>
    <style type="text/css">
        .glyphicon-adjust {
            width: 550px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
        <!--navigation bar-->
        <div class="navbar navbar-default navbar-static-top navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="main.aspx">
                        <img class="img-circle" alt="Brand" src="../sns.jpeg"/>
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
                        <li><a>Welcome, </a></li>
                        <li><a href="#"><asp:LoginName ID="LoginName2" runat="server" Font-Bold="true" /></a></li>
                        <li class="active"><a href="#">Sign Up</a></li>
                        <li><asp:LoginStatus ID="LoginStatus2" runat="server" /></li>
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

        <!-- form and grid-->
        <div class="jumbotron vertical-center">
        <div class="container">

            <div class="form-horizontal col-xs-4 col-xs-offset-4" runat="server">
                <div class="form-group">
                    <label class="col-md-12 bg-primary text-white text-center">Dashbord</label>
                </div>
                <div class="form-group">
                    <div class="col-md-3 col-md-offset-1">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">

                        <asp:TextBox ID="displayname" runat="server" CssClass="form-control" placeholder="DisplayName"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">

                        <asp:TextBox ID="pictype" runat="server" CssClass="form-control" placeholder="PicType"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">

                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="84px" />
                    </div>
                </div>
                <div>
                    <div class="row">
                        <asp:TextBox ID="search" runat="server" Width="246px"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </div>
                </div>
                <div class="glyphicon-adjust">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"  AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" PageSize="3" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:TemplateField HeaderText="pid">
                                <ItemTemplate>
                                    <asp:Label ID="pid" runat="server" Text='<%#Eval("pid") %>'>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="displayname">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("displayname") %>'>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDisplayName" runat="server" Text='<%#Eval("displayname") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="type">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("type") %>'>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddType" runat="server">
                                        <asp:ListItem Value="nature"></asp:ListItem>
                                        <asp:ListItem Value="beauty"></asp:ListItem>
                                        <asp:ListItem Value="logo"></asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:ImageField DataImageUrlField="picname"
                                dataimageurlformatstring="../admins/images/{0}"
                                ControlStyle-Width="100"
                                ControlStyle-Height = "100"
                                NullDisplayText="No image"
                                HeaderText="Photo"/>                        

                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:CommandField HeaderText="makePP" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </div>
            </div>

        </div>
    </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
