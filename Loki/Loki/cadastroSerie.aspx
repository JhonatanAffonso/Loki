<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroSerie.aspx.cs" Inherits="Loki.cadastroSerie" %>

<!DOCTYPE html>
<html lang="pt-br">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cadastrar Um Filme</title>

    <link href="css/font-face.css" rel="stylesheet" media="all" />
    <link href="css/estilos.css" rel="stylesheet" />
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all" />
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all" />
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all" />
    <link href="css/bootstrap.min.css" rel="stylesheet" media="all">
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="css/theme.css" rel="stylesheet" media="all">
</head>

<body class="animsition">
    <form id="formCadastroSerie" runat="server">
        <div class="page-wrapper">
            <!-- Inicio Header Mobile-->
            <% string usuario = (string)Session["Usuario"]; %>

            <header class="header-mobile d-block d-lg-none">
                <div class="header-mobile__bar">
                    <div class="container-fluid">
                        <div class="header-mobile-inner">
                            <a href="indexAdm.aspx">
                                <img src="images/icon/logoLokiMini.png" alt="CoolAdmin" />
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
                                <a href="cadastrarGenero.aspx">
                                    <i class="fas fa-check-square"></i>Cadastrar Gênero</a>

                            </li>

                            <li>
                                <a href="listaCliente.aspx">
                                    <i class="fas fa-table"></i>Lista de Clientes</a>
                            </li>

                            <li class="has-sub">
                                <a class="js-arrow" href="listaFuncionario.aspx">
                                    <i class="fas fa-desktop"></i>Lista de Funcionário</a>
                            </li>

                            <li class="has-sub">
                                <asp:LinkButton ID="btnSair2" runat="server" OnClick="Sair_Click">Sair</asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Fim Header Mobile-->

            <!-- Inicio Menu Sidebar-->
            <aside class="menu-sidebar d-none d-lg-block bg-dark">
                <div class="logo bg-c1">
                    <a href="indexAdm.aspx">
                        <div class="logoLoki">
                            <img src="images/icon/logoLoki.png" class="img-fluid" />
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
                                <a href="cadastrarGenero.aspx">
                                    <i class="fas fa-check-square"></i>Cadastrar Gênero</a>

                            </li>

                            <li>
                                <a href="listaCliente.aspx">
                                    <i class="fas fa-table"></i>Lista de Clientes</a>
                            </li>

                            <li class="has-sub">
                                <a class="js-arrow" href="listaFuncionario.aspx">
                                    <i class="fas fa-desktop"></i>Lista de Funcionário</a>
                            </li>

                            <li class="has-sub">
                                <asp:LinkButton ID="btnSair" runat="server" OnClick="Sair_Click">Sair</asp:LinkButton>
                            </li>

                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- Fim Menu Sidebar-->

            <!-- Inicio Container-->
            <div class="page-container">
                <!-- Inicio Header Desktop-->
                <header class="header-desktop">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap">
                                <div class="form-header">
                                    <i>Seu catalogador de filmes e séries!</i>
                                </div>
                                <div class="header-button">
                                    <div class="noti-wrap">
                                        <div class="noti__item js-item-menu">
                                            <i class="zmdi zmdi-comment-more"></i>
                                            <%--<span class="quantity">1</span>--%>
                                            <div class="mess-dropdown js-dropdown">
                                                <div class="mess__title">
                                                    <p>Você tem uma nova mensagem</p>
                                                </div>
                                                <div class="mess__item">
                                                    Favor realizar o ajuste do seu ponto.
                                                </div>
                                                <div class="mess__footer">
                                                    <a href="#">Todas as mensagens</a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="noti__item js-item-menu">
                                            <i class="zmdi zmdi-notifications"></i>
                                            <%--<span class="quantity"> 1 </span>--%>
                                            <div class="notifi-dropdown js-dropdown">
                                                <div class="notifi__title">
                                                    <p>Você tem novas notificações</p>
                                                </div>
                                                <div class="notifi__item">
                                                    <div class="bg-c1 img-cir img-40">
                                                        <i class="zmdi zmdi-email-open"></i>
                                                    </div>
                                                    <div class="content">
                                                        <p>Notificação de novo e-mail</p>
                                                        <span class="date">17 de Novembro, 2018 06:50</span>
                                                    </div>
                                                </div>
                                                <div class="notifi__footer">
                                                    <a href="#">Todas as Notificações</a>
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
                                                <a class="js-acc-btn" href="#"><% Response.Write(usuario);%> </a>
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
                                                        <a href="perfilUsuario.aspx" target="_blank">
                                                            <i class="zmdi zmdi-account"></i>Perfil</a>
                                                    </div>
                                                </div>
                                                <div class="account-dropdown__footer">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Sair_Click">Sair</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <!-- Fim Header desktop-->



                <!-- Inicio Content-->
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
                                <div class="col-sm-6 col-lg-3">
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

                                <div class="col-sm-6 col-lg-3">
                                    <div class="overview-item overview-item--c4">
                                        <div class="overview__inner">
                                            <div class="overview-box clearfix">
                                                <div class="icon">
                                                    <i class="zmdi zmdi-calendar-note"></i>
                                                </div>
                                                <div class="text">
                                                    <%-- Inicio Grid da contagem de séries geral --%>
                                                    <asp:GridView ID="gvContarSeriesGeral" runat="server" AutoGenerateColumns="False" class="table table-sm contagem">
                                                        <Columns>
                                                            <asp:BoundField DataField="Qtd" Visible="True" ShowHeader="False">
                                                                <HeaderStyle BorderStyle="None" Height="0px" />
                                                                <ItemStyle BorderStyle="None" Font-Size="XX-Large" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                    <%-- Fim Grid da contagem de séries geral --%>
                                                    <span>série(s) cadastradas</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-sm-6 col-lg-3">
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
                                <div class="col-sm-6 col-lg-3">
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
                                        <h2 class="title-1">Cadastrar Série</h2>
                                    </div>
                                </div>
                            </div>
                            <br />



                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="au-card recent-report">
                                        <div class="au-card-inner">
                                            <h3 class="title-2">Insira os dados da Série</h3>
                                            <br />
                                            <div>
                                                <i>Modo de Cadastrar:<br />
                                                    • Insira todos os dados da série e clique no botão cadastrar.<br />
                                                    • Após a confirmação de cadastro insira os dados da temporada e capitulos abaixo na página.
                                                </i>
                                            </div>
                                            <br />
                                            <br />
                                            <%-- Inicio do formulário de cadastro--%>
                                            <div class="row">

                                                <div class="col-sm-2">
                                                    <asp:Label ID="lblTipoCatalogo" runat="server" Text="Situação:"></asp:Label>
                                                    <asp:DropDownList ID="dpTipoCatalogo" runat="server" class="form-control" required="true" MaxLength="1">
                                                        <asp:ListItem Selected="True">Selecione...</asp:ListItem>
                                                        <asp:ListItem Selected="False" Value="S">Série</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-7">
                                                    <asp:Label ID="lblTituloSerie" runat="server" Text="Título da Série:"></asp:Label>
                                                    <asp:TextBox ID="txtTituloSerie" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
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
                                                    <asp:Label ID="lblGeneroSerie" runat="server" Text="Gênero:"></asp:Label>
                                                    <asp:DropDownList ID="dpGeneroSerie" runat="server" class="form-control" required="true">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-7">
                                                    <asp:Label ID="lblDirecaoSerie" runat="server" Text="Direção:"></asp:Label>
                                                    <asp:TextBox ID="txtDirecaoSerie" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
                                                </div>
                                                <br />
                                                <div class="col-sm-3">
                                                    <asp:Label ID="lblDuracao" runat="server" Text="Tempo do Série:"></asp:Label>
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
                                                    <asp:Label ID="lblSinopseSerie" runat="server" Text="Sinopse:"></asp:Label>
                                                    <asp:TextBox ID="txtSinopseSerie" runat="server" class="form-control" required="true" MaxLength="60" TextMode="multiline" Columns="50" Rows="6"></asp:TextBox>

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
                                <div class="col-lg-12">
                                    <div class="au-card recent-report">
                                        <div class="au-card-inner">
                                            <h3 class="title-2">Insira os dados das Temporadas e Capítulos</h3><br /><br />
                                            <div id="modalpopup">
                                                <iframe id="iframeTempCap" name="iframe1" src="cadastroCapitulosSerie.aspx" width="100%" scrolling="true" frameborder="0" height="450px"></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-lg-9">
                                    <h2 class="title-1 m-b-25">Séries Já Cadastradas</h2>
                                    <div class="overflowPersol">
                                        <div class="au-card au-card--bg-white au-card-top-countries m-b-40">
                                            <asp:GridView ID="gvListarSeriesGeral" runat="server" AutoGenerateColumns="False" class="table table-striped ">
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
                                                <asp:GridView ID="gvListarSeriesRecentes" runat="server" AutoGenerateColumns="False" class="table table-sm contagemDois">
                                                    <Columns>
                                                        <asp:BoundField DataField="Titulo" HeaderText="Séries Recentes" ShowHeader="False">
                                                            <HeaderStyle BorderStyle="None" Height="0px" Font-Size="Medium" />
                                                            <ItemStyle Font-Size="Medium" CssClass="contagemDoisBorda" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="DataInsercao" Visible="False" />
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
                <!-- Fim content-->
                <!-- Fim Container-->
            </div>

        </div>

        <script src="vendor/jquery-3.2.1.min.js"></script>
        <script src="vendor/bootstrap-4.1/popper.min.js"></script>
        <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
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

        <script src="js/main.js"></script>
        <script src="js/menuParallax.js"></script>
    </form>
</body>

</html>
