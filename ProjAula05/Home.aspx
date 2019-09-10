<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjAula05.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 258px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2><asp:Label ID="lblCadastro" runat="server" Text="Escolha sua Opção:"></asp:Label></h2>
            <br />
            <br />
            <asp:Button ID="btnTipo" runat="server" OnClick="btnTipo_Click" Text="Tipo de Material" />
&nbsp;<asp:Button ID="btnMaterial" runat="server" Text="Material" OnClick="btnMaterial_Click" />
&nbsp;<asp:Button ID="btnFornecedor" runat="server" Text="Fornecedor" OnClick="btnFornecedor_Click" />
&nbsp;<asp:Button ID="btnCliente" runat="server" Text="Cliente" OnClick="btnCliente_Click" />
&nbsp;<asp:Button ID="btnVenda" runat="server" Text="Venda" OnClick="btnVenda_Click" />
        </div>
    </form>
</body>
</html>
