<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroCliente.aspx.cs" Inherits="Loki.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
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
                <div class="text-center">
                    <img src="images/gravatar.png" class="avatarLogin img-thumbnail" alt="avatar" />
                    <h6>Trocar a foto do perfil...</h6>
                    <input type="file" class="text-center center-block file-upload" />
                </div>
                <br />
                <br />

                <form id="formDadosCliente" runat="server">
                    <div class="row">
                        <div class="col-sm-8">
                            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
                            <asp:TextBox ID="txtNome" runat="server" class="form-control" required="true"></asp:TextBox>
                        </div>
                        <br />
                        <div class="col-sm-3">
                            <asp:Label ID="lblCpf" runat="server" Text="Cpf:"></asp:Label>
                            <asp:TextBox ID="txtCpf" runat="server" class="form-control" required="true" MaxLength="11"></asp:TextBox>
                        </div>
                        <br />
                        <div class="col-sm-2">
                            <asp:Label ID="lblSituacao" runat="server" Text="Situação:"></asp:Label>
                            <asp:TextBox ID="txtSituacao" runat="server" class="form-control" required="true" MaxLength="1"></asp:TextBox>
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
                            <asp:TextBox ID="txtDdd" runat="server" class="form-control" required="true" MaxLength="11"></asp:TextBox>
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
                            <asp:TextBox ID="txtComplemento" runat="server" class="form-control" required="true" MaxLength="6"></asp:TextBox>
                        </div>
                        <br />

                    </div>

                    <br />
                    <br />
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="text-center">
                                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
                                <asp:Button ID="btnLimpar" runat="server" Text="Limpar" />
                            </div>
                        </div>
                    </div>
                </form>
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
</body>
</html>
