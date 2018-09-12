<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagamento.aspx.cs" Inherits="Loki.pagamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <title></title>
</head>
<body>
    <h3>Inserir Loki Coins</h3>
    <form id="form1" runat="server">
        <div>

            <asp:RadioButtonList ID="rdoValor" runat="server">
                <asp:ListItem Value="10">R$ 10</asp:ListItem>
                <asp:ListItem Value="25">R$ 25</asp:ListItem>
                <asp:ListItem Value="50">R$ 50</asp:ListItem>
                <asp:ListItem Value="100">R$ 100</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="lblNumCartao" runat="server" Text="Numero do Cartão"></asp:Label><br />
            <asp:TextBox ID="txtNumCartao" runat="server" MaxLength="16" class="form-control" required ="true"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblValidade" runat="server" Text="Validade do Cartão"></asp:Label><br />
            <asp:TextBox ID="txtValidade" runat="server" MaxLength="5" class="form-control" required ="true"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblNome" runat="server" Text="Nome Impresso"></asp:Label><br />
            <asp:TextBox ID="txtNome" runat="server" MaxLength="60" class="form-control" required ="true"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCodSeguranca" runat="server" Text="Codigo de Segurança"></asp:Label><br />
            <asp:TextBox ID="txtCodSeguranca" runat="server" MaxLength="3" class="form-control" required ="true"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLimpar" runat="server" OnClick="btnLimpar_Click" Text="Limpar" />
        </div>
    </form>
    
</body>
</html>
