<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Loki.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=0, user-scalable=no" charset="utf-8" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap-min.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="css/estilosLogin.css" />

    <title></title>
</head>
<body class="is-preload">
    <div class="container">
        <div class="row">
            <div class="col-md-6">

                <!-- Header -->
                <header id="header">
                    <h2>Bem vindo ao Loki</h2>
                    <p>Organize sua coleção de filmes, séries!!!</p>
                </header>
                <!-- Signup Form -->
                <div class="col-md-10">
                    <form id="form1" runat="server" class="signup-form">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuário:"></asp:Label>
                        <asp:TextBox ID="txtUsuario" runat="server" class="form-control"></asp:TextBox>
                        <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
                        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Entrar" class="btn-lg" />
                        <br />
                        <br />
                        <div id="remember" class="checkbox">
                            <label>
                                <input type="checkbox" value="remember-me" />
                                Lembre-se de mim /
                                <a href="#" class="forgot-password">Esqueceu a senha?  </a>
                                <br />
                            </label>

                             <label>
                                Não tem Cadastro?                            
                                <a href="cadastroCliente.aspx" class="forgot-password" target="_blank">Cadastre e aproveite =)  </a>
                                <br />
                            </label>

                        </div>
                    </form>
                </div>
            </div>

            <div class="col-md-6">
                <div class="divisaoImg">
                    <img src="images\MuralLoginOficial.png" class="imgLogin" alt="Mural Fotos Séries" />
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer id="footer">
        <ul class="icons">
            <li><a href="#" class="icon fa-twitter" title="Em Breve Disponível"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-instagram" title="Em Breve Disponível"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon fa-github" title="Em Breve Disponível"><span class="label">GitHub</span></a></li>
            <li><a href="#" class="icon fa-envelope-o" title="Em Breve Disponível"><span class="label">Email</span></a></li>
        </ul>
        <ul class="copyright">
            <li>&copy; 2018.</li>
        </ul>
    </footer>

    <!-- Scripts -->
    <script src="assets/js/main.js"></script>
</body>
</html>
