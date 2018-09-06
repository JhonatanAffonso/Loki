<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Loki.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Loki</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">
        <!-- Header -->
        <header id="header">
            <h2>Bem vindo ao Loki</h2>
            <p>Organize sua coleção de filmes, séries!!!</p>

        </header>
        <section>
            <form id="form1" runat="server" class="form-signin">
                <div>
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
                            Lembre-se de mim
                                            <br />
                            <a href="#" class="forgot-password">Esqueceu a senha?  </a>
                            <br />
                        </label>
                    </div>
                </div>
            </form>
        </section>
   
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
