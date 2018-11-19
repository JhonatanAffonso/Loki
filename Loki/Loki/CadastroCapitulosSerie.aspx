<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCapitulosSerie.aspx.cs" Inherits="Loki.CadastroCapitulosSerie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="all" />
</head>
<body>
    <form id="formCadastroItensSerie" runat="server">
        <% string usuario = (string)Session["Usuario"]; %>

        <div class="row">
            <div class="col-sm-6">
                <asp:Label ID="lblSerie" runat="server" Text="Série:"></asp:Label>
                <asp:DropDownList ID="ddlSerie" runat="server" class="form-control" required="true">
                </asp:DropDownList>
            </div>

            <div class="col-sm-3">
                <asp:Label ID="lblTemporada" runat="server" Text="Temporada:"></asp:Label>
                <asp:TextBox ID="txtTemporada" runat="server" class="form-control" required="true" MaxLength="2"></asp:TextBox>
            </div>

            <div class="col-sm-3">
                <asp:Label ID="lblCapitulo" runat="server" Text="Capítulo:"></asp:Label>
                <asp:TextBox ID="txtCapitulo" runat="server" class="form-control" required="true" MaxLength="2"></asp:TextBox>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-8">
                <asp:Label ID="lblTituloCapitulo" runat="server" Text="Titulo do Capítulo:"></asp:Label>
                <asp:TextBox ID="txtTituloCapitulo" runat="server" class="form-control" required="true" MaxLength="60"></asp:TextBox>
            </div>

            <div class="col-sm-2">
                <asp:Label ID="lblDuracao" runat="server" Text="Duração:"></asp:Label>
                <asp:TextBox ID="txtDuracao" runat="server" class="form-control" required="true"></asp:TextBox>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-8">
                <asp:Label ID="lblSinopseCapitulo" runat="server" Text="Sinopse:"></asp:Label>
                <asp:TextBox ID="txtSinopseCapitulo" runat="server" class="form-control" required="true" MaxLength="60" TextMode="multiline" Columns="50" Rows="6"></asp:TextBox>

            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-12">
                <div class="text-center">
                    <asp:Button ID="btnLimpar" runat="server" Text="Limpar" class="btn btn-group-lg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" class="btn btn-group-lg" OnClick="btnCadastrar_Click" />
                </div>
            </div>
        </div>
        <br />
    </form>
</body>
</html>
