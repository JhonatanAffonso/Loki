<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfilUsuario.aspx.cs" Inherits="Loki.perfilTester" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Perfil Lockier</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesgeet" href="https://rawgit.com/creativetimofficial/material-kit/master/assets/css/material-kit.css" />
    <link rel="stylesheet" href="css/perfil.css" />

    <script src="js/perfil/perfil.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/perfil/bootstrapMaterialDesign.js"></script>
    <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
    <script src="js/perfil/bootstrap-material-design.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>
<body class="profile-page">
    <nav class="navbar navbar-color-on-scroll navbar-transparent    fixed-top  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">
        <div class="container">
            <div class="navbar-translate">
                <a class="navbar-brand" href="index.aspx">Perfil Lockier </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false">
                            <i class="material-icons">apps</i> Menu Principal
                      </a>
                        <div class="dropdown-menu dropdown-with-icons">
                            <a href="../index.html" class="dropdown-item">
                                <i class="material-icons">layers</i> All Components
                        </a>

                            <a href="#" class="dropdown-item">
                                <i class="material-icons">content_paste</i> Documentation
                        </a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0)">
                            <i class="material-icons">cloud_download</i> Logon
      					</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" target="_blank">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" target="_blank">
                            <i class="fa fa-facebook-square"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" target="_blank">
                            <i class="fa fa-instagram"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="page-header header-filter" data-parallax="true" style="background-image: url('images/fundoBlack.png');"></div>
    <div class="main main-raised">
        <div class="profile-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <div class="profile">
                            <div class="avatar">
                                <img src="images/loki.jpg" alt="Circle Image" class="img-raised rounded-circle img-fluid" />
                            </div>
                            <div class="name">
                                <h3 class="title">Loki Laufeyson</h3>
                                <h6>Deus</h6>
                                <a href="#pablo" class="btn btn-just-icon btn-link btn-dribbble"><i class="fa fa-dribbble"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-link btn-twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-link btn-pinterest"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="description text-center">
                    <p>Testando Estrutura Testando Estrutura Testando Estrutura Testando Estrutura Testando Estrutura Testando Estrutura Testando Estrutura Testando Estrutura Testando Estrutura </p>
                    <br />
                    <br />
                    <%-- Inicio Sessão do Usuário ----------------------------------------------- --%>

                    <form id="form1" runat="server">
                        <div>
                            <div>
                                <% string usuario = (string)Session["Usuario"];
                                    Response.Write("Bem Vindo: " + usuario); %>
                                <br />
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sair</asp:LinkButton><br />

                            </div>
                        </div>
                        <asp:Button ID="btnPagamento" runat="server" OnClick="btnPagamento_Click" Text="Pagamento" /><br />

                    </form>

                    <%-- Fim Sessão do Usuário ----------------------------------------------- --%>
                </div>




                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <div class="profile-tabs">
                            <ul class="nav nav-pills nav-pills-icons justify-content-center" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#studio" role="tab" data-toggle="tab">
                                        <i class="material-icons">camera</i>
                                        Séries
                                </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#works" role="tab" data-toggle="tab">
                                        <i class="material-icons">palette</i>
                                        Filmes
                                </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#favorite" role="tab" data-toggle="tab">
                                        <i class="material-icons">favorite</i>
                                        Favoritos
                                </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="tab-content tab-space">
                    <div class="tab-pane active text-center gallery" id="studio">
                        <div class="row">
                            <div class="col-md-3 ml-auto">
                                <img src="images/Ex02.jpg" class="rounded" />
                                <img src="images/Ex04.jpg" class="rounded" />
                            </div>
                            <div class="col-md-3 mr-auto">
                                <img src="images/Ex01.png" class="rounded" />
                                <img src="images/Ex03.jpg" class="rounded" />
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane text-center gallery" id="works">
                        <div class="row">
                            <div class="col-md-3 ml-auto">
                                <img src="images/velozes.jpg" class="rounded" />
                                <img src="images/velozes.jpg" class="rounded" />
                            </div>
                            <div class="col-md-3 mr-auto">
                                <img src="images/velozes.jpg" class="rounded" />
                                <img src="images/velozes.jpg" class="rounded" />
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane text-center gallery" id="favorite">
                        <div class="row">
                            <div class="col-md-3 ml-auto">
                                <img src="images/It.jpg" class="rounded" />
                                <img src="images/It.jpg" class="rounded" />
                            </div>
                            <div class="col-md-3 mr-auto">
                                <img src="images/It.jpg" class="rounded" />
                                <img src="images/It.jpg" class="rounded" /> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer text-center ">
        <p>... <a href="#">Loki @2018</a>...</p>
    </footer>

</body>
</html>
