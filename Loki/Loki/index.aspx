<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Loki.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss" />
    <script src="../js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <link href="../css/login.css" rel="stylesheet" />
    <title>Desenvolvimento Aberto - Login</title>
</head>
<body>
    <div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <span id="reauth-email" class="reauth-email"></span>
            <h4>Bem Vindo ao Loki</h4>
            <h4>Login:</h4>
            <form id="form1" runat="server" class="form-signin">
                <div>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuário:"></asp:Label>
                    <asp:TextBox ID="txtUsuario" runat="server" class="form-control"></asp:TextBox>

                    <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" class="form-control"></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Entrar" />
                    <div id="remember" class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me" />
                            Lembre-se de mim
                            <br />
                            <a href="#" class="forgot-password">Esqueceu a senha?  </a>
                        </label>
                    </div>
                </div>
            </form>
            <!-- /form -->
        </div>
        <!-- /card-container -->
    </div>
    <!-- /container -->
</body>
</html>
