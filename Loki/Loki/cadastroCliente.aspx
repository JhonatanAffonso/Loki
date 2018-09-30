<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroCliente.aspx.cs" Inherits="Loki.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/estilos.css" />
    <script src="js/bootstrap.min.js"></script>
    <title>Cadastro de Perfil</title>
</head>
<body> 


    <div class="container-fluid">
        <%-- Menu Superior--%>
        <div class="row">
            <div class="col-sm-12">
                ...Menu Superior
                <div class="text-right">
                   <%-- <% string usuario = (string)Session["Usuario"];
                    Response.Write("Você está logado como: " + usuario);  %>--%>

                  <%-- Encerra a sessão atual
                 Session.Abandon();  --%>

                </div>
            </div>
        </div>

        <%-- Linha do Título--%>
        <div class="row">
            <div class="col-sm-12">
                <div class="text-center">
                    <h2>Perfil do Usuário</h2>
                    <br />
                    <br />
                </div>
            </div>
        </div>



        <%-- Menu Lateral--%>
        <div class="row">
            <div class="col-sm-3">
                ...Localização do Menu Lateral
            </div>

            <%-- Divisão Foto do Perfil--%>


            <%-- Divisão Preenchimento dos Dados--%>
            <div class="col-sm-7">
                <form id="formDadosCliente" runat="server">

                <div class="text-center">
                    <img src="images/gravatar.png" class="avatarLogin img-thumbnail" alt="avatar" />
                    <h6>Enviar uma foto ...</h6>
                   <%-- <input type="file" class="text-center center-block file-upload" /> que eu tinha feito antes --%>
                     <asp:FileUpload ID="FileUploadControl" runat="server" class="multi" AllowMultiple="True" />
                    <br />
                                        <asp:Label runat="server" id="StatusLabel" text=""  ForeColor="Red" />
                    <br />
                     <%--<asp:Button ID="btnUpload" runat="server" Text="     Carregar Fotos     "
                        onclick="btnUpload_Click" BackColor="#CC0000" BorderColor="#CC0000" Font-Bold="True" ForeColor="White" />  --%>
                </div>
                <br />
                <br />

                
                    <div class="row">
                        <div class="col-sm-7">
                            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
                            <asp:TextBox ID="txtNome" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
                        </div>
                        <br />
                        <div class="col-sm-3">
                            <asp:Label ID="lblCpf" runat="server" Text="Cpf:"></asp:Label>
                            <asp:TextBox ID="txtCpf" runat="server" class="form-control" required="true" MaxLength="11"></asp:TextBox>
                        </div>
                        <br />
                        <div class="col-sm-2">
                            <asp:Label ID="lblSituacao" runat="server" Text="Situação:"></asp:Label>
                            <asp:DropDownList ID="DpSituacao" runat="server" class="form-control" required="true" MaxLength="1">
                                <asp:ListItem Selected="True">Selecione...</asp:ListItem>
                                <asp:ListItem Selected="False" Value="A">Ativo</asp:ListItem>
                                <asp:ListItem Selected="False" Value="I">Inativo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-sm-7">
                            <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2">@exemplo.com</span>
                            </div>
                        </div>
                        <br />
                        <div class="col-sm-2">
                            <asp:Label ID="lblDdd" runat="server" Text="DDD:"></asp:Label>
                            <asp:TextBox ID="txtDdd" runat="server" class="form-control" required="true" MaxLength="2"></asp:TextBox>
                        </div>
                        <br />

                        <div class="col-sm-3">
                            <asp:Label ID="lblTelefone" runat="server" Text="Telefone:"></asp:Label>
                            <asp:TextBox ID="txtTelefone" runat="server" class="form-control" required="true" MaxLength="11"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-sm-2">
                            <asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label>
                            <asp:TextBox ID="txtEstado" runat="server" class="form-control" required="true" MaxLength="2"></asp:TextBox>

                        </div>
                        <br />
                        <div class="col-sm-6">
                            <asp:Label ID="lblCidade" runat="server" Text="Cidade:"></asp:Label>
                            <asp:TextBox ID="txtCidade" runat="server" class="form-control" required="true" MaxLength="30"></asp:TextBox>
                        </div>
                        <br />
                        <div class="col-sm-4">
                            <asp:Label ID="lblCep" runat="server" Text="Cep:"></asp:Label>
                            <asp:TextBox ID="txtCep" runat="server" class="form-control" required="true" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-sm-7">
                            <asp:Label ID="lblEndereco" runat="server" Text="Endereço:"></asp:Label>
                            <asp:TextBox ID="txtEndereco" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
                        </div>
                        <br />
                        <div class="col-sm-2">
                            <asp:Label ID="lblNumero" runat="server" Text="Número:"></asp:Label>
                            <asp:TextBox ID="txtNumero" runat="server" class="form-control" required="true" MaxLength="6"></asp:TextBox>
                        </div>
                        <br />
                        <div class="col-sm-3">
                            <asp:Label ID="lblComplemento" runat="server" Text="Complemento:"></asp:Label>
                            <asp:TextBox ID="txtComplemento" runat="server" class="form-control" required="true" MaxLength="20"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    
                        <div class="row">
                            <div class="col-sm-4">
                                <asp:Label ID="lblUsuario" runat="server" Text="Usuário: "></asp:Label>
                                <asp:TextBox ID="txtUsuario" runat="server" class="form-control" required="true" MaxLength="60" Leave="txtUsuario_Leave"></asp:TextBox>
                               <ul>
                                   <li>O Usuário pode ter até 12 caracteres</li>
                               </ul>
                            </div>
                            <br />
                            <div class="col-sm-4">
                                <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
                                <asp:TextBox ID="txtSenha"  runat="server" class="form-control" required="true" MaxLength="8" TextMode="Password"></asp:TextBox>
                            </div>                        
                    </div>

                    <br />
                    <br />
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="text-center">
                                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
                                <asp:Button ID="btnLimpar" runat="server" Text="Limpar" OnClick="btnLimpar_Click" />                                
                            </div>
                        </div>
                    </div>

                    <asp:HiddenField ID="hdfIdPessoa" runat="server" />
                </form>
            </div>
        </div>
    </div>

    <br />
    <br />
    <!-- Footer -->
    <footer class="page-footer font-small teal pt-4">

        <!-- Footer Text -->
        <div class="container-fluid text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-6 mt-md-0 mt-3">

                    <!-- Content -->
                    <h5 class="text-uppercase font-weight-bold">Footer text 1</h5>
                    <p>Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo,</p>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none pb-3">

                <!-- Grid column -->
                <div class="col-md-6 mb-md-0 mb-3">

                    <!-- Content -->
                    <h5 class="text-uppercase font-weight-bold">Footer text 2</h5>
                    <p>Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, Exemplo, </p>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Text -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">
            © 2018 Copyright:
      <a href="#">Loki.com.br</a>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->

</body>
</html>
