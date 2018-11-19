<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexAdm.aspx.cs" Inherits="Loki.indexAdm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=0, user-scalable=no" charset="utf-8" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap-min.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="css/estilosLogin.css" />

    <title>Administrador</title>
</head>
<body class="is-preload">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mr-auto">
                <div class="text-center">
                    <header id="header">
                        <h2>Painel do Administrador Loki</h2>
                        <p>Selecione abaixo qual o tipo de cadastro a ser realizado:</p>
                        <br />
                        <br />
                        <br />
                    </header>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="col-md-10">
                    <a href="cadastroFilme.aspx">
                        <img src="images/filmes_admindex.png" class="img-fluid" />
                    </a>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>

            <div class="col-md-6">
                <a href="cadastroSerie.aspx">
                    <img src="images/series_admindex.png" class="img-fluid" />
                </a>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer id="footer">

        <ul class="copyright">
            <li>&copy; 2018.</li>
        </ul>
    </footer>

    <!-- Scripts -->
    <script src="assets/js/main.js"></script>
</body>
</html>
