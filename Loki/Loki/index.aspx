<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Loki.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
<script src="../js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="../css/login.css" rel="stylesheet" />


<title></title>
</head>

<body>
    <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="nome" class="form-control" placeholder="Usuário" required autofocus  />
                <input type="password" id="senha" class="form-control" placeholder="Senha" required />
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me" /> Lembre-se de mim
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Entrar</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Esqueceu a senha?
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->
</body>

</html>
