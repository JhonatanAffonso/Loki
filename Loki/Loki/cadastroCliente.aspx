<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroCliente.aspx.cs" Inherits="Loki.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>


<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10"><h2>Perfil do Usuário</h2></div>
    	<div class="col-sm-2"><a href="/users" class="pull-right"><img title="Imagem do Perfil" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar" /> 
        <h6>Trocar a foto do perfil...</h6>
        <input type="file" class="text-center center-block file-upload" />
      </div><br />

               
          <div class="panel panel-default">
            <div class="panel-heading">Site <i class="fa fa-link fa-1x"></i></div>
          </div>
          
          
          <ul class="list-group">
            <li class="list-group-item text-muted">Atividades <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Compartilhamentos</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Curtidas</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Postagens</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Seguidores</strong></span> 78</li>
          </ul> 
               
          <div class="panel panel-default">
            <div class="panel-heading">Midias Sociais</div>
            <div class="panel-body">
            	<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
            </div>
          </div>
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
 

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">

                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>Nome</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="nome completo" title="insira seu nome completo.">
                          </div>
                      </div>
                    
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Telefone</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="insira seu número de celular" title="insira seu número de celular.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>E-mail</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="nome@email.com" title="insira seu e-mail.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Endereço</h4></label>
                              <input type="email" class="form-control" id="location" placeholder="insira sua cidade" title="insira sua cidade">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Senha</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="senha" title="insira sua senha.">
                          </div>
                      </div>
    
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Salvar</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Limpar</button>
                            </div>
                      </div>
              	</form>
              
              <hr>
              
             </div><!--/tab-pane-->
            
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->


</body>
</html>
