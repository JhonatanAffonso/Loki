<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroFilme.aspx.cs" Inherits="Loki.cadastroFilme" %>

<!DOCTYPE html>
<html lang="pt-br">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cadastrar Um Filme</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all" />
    <link href="css/estilos.css" rel="stylesheet" />
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all" />
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all" />
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all" />

    <!-- Bootstrap CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
</head>

<body class="animsition">
    <form id="formCadastroFilme" runat="server">
        <div class="page-wrapper">
            <!-- HEADER MOBILE-->
            <header class="header-mobile d-block d-lg-none">
                <div class="header-mobile__bar">
                    <div class="container-fluid">
                        <div class="header-mobile-inner">
                            <a class="logo" href="cadastroFilme.aspx">
                                <img src="images/icon/logoLoki.png" alt="CoolAdmin" />
                            </a>
                            <button class="hamburger hamburger--slider" type="button">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <nav class="navbar-mobile">
                    <div class="container-fluid">
                        <ul class="navbar-mobile__list list-unstyled">
                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-tachometer-alt"></i>Cadastros</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="cadastroFilme.aspx">Cadastrar Um Filme</a>
                                    </li>
                                    <li>
                                        <a href="cadastroSerie.aspx">Cadastrar Uma Série</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="chart.html">
                                    <i class="fas fa-check-square"></i>Cadastrar Gênero</a>

                            </li>

                            <li>
                                <a href="table.html">
                                    <i class="fas fa-table"></i>Lista de Clientes</a>
                            </li>

                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-desktop"></i>Sair</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- END HEADER MOBILE-->

            <!-- MENU SIDEBAR-->
            <aside class="menu-sidebar d-none d-lg-block bg-dark">
                <div class="logo bg-c1">
                    <a href="#">
                        <div class="logoLoki">
                            <img src="images/icon/logoLoki.png" alt="Loki" />
                        </div>
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-tachometer-alt"></i>Cadastro Catálogo</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="cadastroFilme.aspx">Cadastrar Um Filme</a>
                                    </li>
                                    <li>
                                        <a href="cadastroSerie.aspx">Cadastrar Uma Série</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="chart.html">
                                    <i class="fas fa-check-square"></i>Cadastrar Gênero</a>
                            </li>

                            <li>
                                <a href="table.html">
                                    <i class="fas fa-table"></i>Lista de Clientes</a>
                            </li>

                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-desktop"></i>
                                    <asp:LinkButton ID="btnSair" runat="server" OnClick="Sair_Click">Sair</asp:LinkButton></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END MENU SIDEBAR-->

            <!-- PAGE CONTAINER-->
            <div class="page-container">
                <!-- HEADER DESKTOP-->
                <header class="header-desktop">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap">

                                <div class="header-button">
                                    <div class="noti-wrap">
                                        <div class="noti__item js-item-menu">
                                            <i class="zmdi zmdi-comment-more"></i>
                                            <span class="quantity">1</span>
                                            <div class="mess-dropdown js-dropdown">
                                                <div class="mess__title">
                                                    <p>You have 2 news message</p>
                                                </div>
                                                <div class="mess__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                    </div>
                                                    <div class="content">
                                                        <h6>Michelle Moreno</h6>
                                                        <p>Have sent a photo</p>
                                                        <span class="time">3 min ago</span>
                                                    </div>
                                                </div>
                                                <div class="mess__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
                                                    </div>
                                                    <div class="content">
                                                        <h6>Diane Myers</h6>
                                                        <p>You are now connected on message</p>
                                                        <span class="time">Yesterday</span>
                                                    </div>
                                                </div>
                                                <div class="mess__footer">
                                                    <a href="#">View all messages</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="noti__item js-item-menu">
                                            <i class="zmdi zmdi-email"></i>
                                            <span class="quantity">1</span>
                                            <div class="email-dropdown js-dropdown">
                                                <div class="email__title">
                                                    <p>You have 3 New Emails</p>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, 3 min ago</span>
                                                    </div>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, Yesterday</span>
                                                    </div>
                                                </div>
                                                <div class="email__item">
                                                    <div class="image img-cir img-40">
                                                        <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                    </div>
                                                    <div class="content">
                                                        <p>Meeting about new dashboard...</p>
                                                        <span>Cynthia Harvey, April 12,,2018</span>
                                                    </div>
                                                </div>
                                                <div class="email__footer">
                                                    <a href="#">See all emails</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="noti__item js-item-menu">
                                            <i class="zmdi zmdi-notifications"></i>
                                            <span class="quantity">3</span>
                                            <div class="notifi-dropdown js-dropdown">
                                                <div class="notifi__title">
                                                    <p>You have 3 Notifications</p>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c1 img-cir img-40">
                                                        <i class="zmdi zmdi-email-open"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>You got a email notification</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c2 img-cir img-40">
                                                        <i class="zmdi zmdi-account-box"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>Your account has been blocked</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c3 img-cir img-40">
                                                        <i class="zmdi zmdi-file-text"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>You got a new file</p>
                                                        <span class="date">April 12, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__footer">
                                                    <a href="#">All notifications</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="account-wrap">
                                        <div class="account-item clearfix js-item-menu">
                                            <div class="image">
                                                <img src="images/icon/lokiMini.jpg" alt="Lockier" />
                                            </div>
                                            <div class="content">
                                                <a class="js-acc-btn" href="#"><% string usuario = (string)Session["Usuario"]; Response.Write(usuario);%> </a></a>
                                            </div>
                                            <div class="account-dropdown js-dropdown">
                                                <div class="info clearfix">
                                                    <div class="image">
                                                        <a href="#">
                                                            <img src="images/icon/lokiMini.jpg" alt="Lockier" />
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <h5 class="name">
                                                            <a href="#">
                                                                <% Response.Write("Bem vindo : " + usuario);%> </a>
                                                        </h5>
                                                        <%--conteudo--%>
                                                    </div>
                                                </div>
                                                <div class="account-dropdown__body">
                                                    <div class="account-dropdown__item">
                                                        <a href="#">
                                                            <i class="zmdi zmdi-account"></i>Perfil</a>
                                                    </div>
                                                    <div class="account-dropdown__item">
                                                        <a href="#">
                                                            <i class="zmdi zmdi-settings"></i>Configurações</a>
                                                    </div>

                                                </div>
                                                <div class="account-dropdown__footer">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-power"></i>Logout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <!-- HEADER DESKTOP-->



                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1">Estatísticas</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="row m-t-25">
                                <div class="col-sm-6 col-lg-4">
                                    <div class="overview-item overview-item--c1">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-shopping-cart"></i>
                                                </div>
                                                <div class="text">
                                                    <%-- Inicio Grid da contagem de filmes geral --%>
                                                    <asp:GridView ID="gvContarFilmesGeral" runat="server" AutoGenerateColumns="False" class="table table-sm contagem">
                                                        <Columns>
                                                            <asp:BoundField DataField="Qtd" Visible="True" ShowHeader="False">
                                                                <HeaderStyle BorderStyle="None" Height="0px" />
                                                                <ItemStyle BorderStyle="None" Font-Size="XX-Large" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                    <%-- Fim Grid da contagem de filmes geral --%>

                                                    <span>filme(s) cadastrados</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-4">
                                    <div class="overview-item overview-item--c2">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-calendar-note"></i>
                                                </div>
                                                <div class="text">
                                                    <%-- Inicio Grid da contagem de generos --%>
                                                    <asp:GridView ID="gvContarGenero" runat="server" AutoGenerateColumns="False" class="table table-sm contagem">
                                                        <Columns>
                                                            <asp:BoundField DataField="Qtd" Visible="True" ShowHeader="False">
                                                                <HeaderStyle BorderStyle="None" Height="0px" />
                                                                <ItemStyle BorderStyle="None" Font-Size="XX-Large" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                    <%-- Fim Grid da contagem de generos --%>
                                                    <span>gênero(s) cadastrados</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-4">
                                    <div class="overview-item overview-item--c3">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-account-o"></i>
                                                </div>
                                                <div class="text">
                                                    <%-- Inicio Grid da contagem de filmes geral --%>
                                                    <asp:GridView ID="gvContarClientesGeral" runat="server" AutoGenerateColumns="False" class="table table-sm contagem">
                                                        <Columns>
                                                            <asp:BoundField DataField="Qtd" Visible="True" ShowHeader="False">
                                                                <HeaderStyle BorderStyle="None" Height="0px" />
                                                                <ItemStyle BorderStyle="None" Font-Size="XX-Large" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                    <%-- Fim Grid da contagem de filmes geral --%>
                                                    <span>cliente(s) cadastrados</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1">Cadastrar Filme</h2>
                                    </div>
                                </div>
                            </div>
                            <br />

                           

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="au-card recent-report">
                                        <div class="au-card-inner">
                                            <h3 class="title-2">Insira os dados do Filme</h3>
                                            <br />
                                            <br />
                                            <%-- Inicio do formulário de cadastro--%>
                                            <div class="row">

                                                <div class="col-sm-2">
                                                    <asp:Label ID="lblTipoCatalogo" runat="server" Text="Situação:"></asp:Label>
                                                    <asp:DropDownList ID="dpTipoCatalogo" runat="server" class="form-control" required="true" MaxLength="1">
                                                        <asp:ListItem Selected="True">Selecione...</asp:ListItem>
                                                        <asp:ListItem Selected="False" Value="F">Filme</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-7">
                                                    <asp:Label ID="lblTituloFilme" runat="server" Text="Título do Filme:"></asp:Label>
                                                    <asp:TextBox ID="txtTituloFilme" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
                                                </div>
                                                <br />
                                                <div class="col-sm-3">
                                                    <asp:Label ID="lblAnoLancamento" runat="server" Text="Ano Lançamento:"></asp:Label>
                                                    <asp:TextBox ID="txtAnoLancamento" runat="server" class="form-control" required="true" MaxLength="11"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />

                                            <div class="row">

                                                <div class="col-sm-2">
                                                    <asp:Label ID="lblGeneroFilme" runat="server" Text="Gênero:"></asp:Label>
                                                    <asp:DropDownList ID="dpGeneroFilme" runat="server" class="form-control" required="true" MaxLength="1">
                                                        <asp:ListItem Selected="True">Selecione...</asp:ListItem>
                                                        <asp:ListItem Selected="False" Value="Acao">Ação</asp:ListItem>
                                                        <asp:ListItem Selected="False" Value="Drama">Drama</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-7">
                                                    <asp:Label ID="lblDirecaoFilme" runat="server" Text="Direção:"></asp:Label>
                                                    <asp:TextBox ID="txtDirecaoFilme" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
                                                </div>
                                                <br />
                                                <div class="col-sm-3">
                                                    <asp:Label ID="lblDuracao" runat="server" Text="Tempo do Filme:"></asp:Label>
                                                    <asp:TextBox ID="txtDuracao" runat="server" class="form-control" required="true" MaxLength="11"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />

                                            <div class="row">

                                                <div class="col-sm-5">
                                                    <img src="images/gravatar.png" class="avatarLogin img-thumbnail" alt="avatar" />
                                                    <h6>Enviar uma foto ...</h6>
                                                    <asp:FileUpload ID="FileUploadControl" runat="server" class="multi" AllowMultiple="True" />
                                                    <br />
                                                    <asp:Label runat="server" ID="StatusLabel" Text="" ForeColor="Red" />
                                                </div>

                                                <div class="col-sm-7">
                                                    <asp:Label ID="lblSinopseFilme" runat="server" Text="Sinopse:"></asp:Label>
                                                    <asp:TextBox ID="txtSinopseFilme" runat="server" class="form-control" required="true" MaxLength="60" TextMode="multiline" Columns="50" Rows="6"></asp:TextBox>

                                                </div>
                                            </div>

                                            <br />
                                            <br />

                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="text-center">
                                                        <asp:Button ID="btnLimpar" runat="server" Text="Limpar" class="btn btn-group-lg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" class="btn btn-group-lg" OnClick="btnCadastrar_Click" />
                                                    </div>
                                                </div>
                                            </div>

                                            <%-- Fim do formulário de cadastro--%>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-lg-9">
                                    <h2 class="title-1 m-b-25">Filmes Já Cadastrados</h2>
                                    <div class="overflowPersol">
                                        <div class="au-card au-card--bg-white au-card-top-countries m-b-40">
                                            <asp:GridView ID="gvListarFilmesGeral" runat="server" AutoGenerateColumns="False" class="table table-striped ">
                                                <Columns>
                                                    <asp:BoundField DataField="IdCatalogo" HeaderText="Id Catalogo" Visible="False" />
                                                    <asp:BoundField DataField="TipoCatalogo" HeaderText="Tipo de Catalogo" />
                                                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" />
                                                    <asp:BoundField DataField="Descricao" HeaderText="Descricao" />
                                                    <asp:BoundField DataField="F_Genero" HeaderText="Genero" />
                                                    <asp:BoundField DataField="Duracao" HeaderText="Duração" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <h2 class="title-1 m-b-25">Recentes</h2>
                                    <div class="au-card au-card--bg-violet au-card-top-countries m-b-40">
                                        <div class="au-card-inner">
                                            <div class="table-responsive">
                                                <asp:GridView ID="gvListarFilmesRecentes" runat="server" AutoGenerateColumns="False" class="table table-sm contagemDois">
                                                    <Columns>
                                                        <asp:BoundField DataField="Titulo" ShowHeader="False">
                                                            <HeaderStyle BorderStyle="None" Height="0px" />
                                                            <ItemStyle BorderStyle="None" Font-Size="XX-Large" />
                                                        </asp:BoundField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="copyright">
                                        <p>Copyright © 2018 Loki. Todos os direitos reservados. <a href="#">Loki</a>.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END MAIN CONTENT-->
                <!-- END PAGE CONTAINER-->
            </div>

        </div>

        <!-- Jquery JS-->
        <script src="vendor/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap JS-->
        <script src="vendor/bootstrap-4.1/popper.min.js"></script>
        <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
        <!-- Vendor JS       -->
        <script src="vendor/slick/slick.min.js">
        </script>
        <script src="vendor/wow/wow.min.js"></script>
        <script src="vendor/animsition/animsition.min.js"></script>
        <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
        </script>
        <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
        <script src="vendor/counter-up/jquery.counterup.min.js">
        </script>
        <script src="vendor/circle-progress/circle-progress.min.js"></script>
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="vendor/chartjs/Chart.bundle.min.js"></script>
        <script src="vendor/select2/select2.min.js">
        </script>

        <!-- Main JS-->
        <script src="js/main.js"></script>
        <script src="js/menuParallax.js"></script>
    </form>
</body>

</html>
<!-- end document-->

