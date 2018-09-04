<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="Loki.perfil" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Desenvolvimento Aberto - ASP.NET - C#</title>
</head>
<body>
    <h1>Desenvolvimento Aberto</h1>
    <h3>Area da Comunidade - C# - ASP.NET</h3>
    <form id="form1" runat="server">
    <div>
       <div>
           <% string usuario = (string)Session["Usuario"];
               Response.Write("Bem Vindo: " + usuario); %>
           <br />
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sair</asp:LinkButton>
       </div>
    </div>
    </form>
</body>
</html>
