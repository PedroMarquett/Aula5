<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fornecedor.aspx.cs" Inherits="ProjAula05.Fornecedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 282px;
        }
        .auto-style3 {
            width: 125px;
        }
        .auto-style4 {
            height: 19px;
            width: 125px;
        }
        .auto-style2 {
            height: 19px;
        }
        .auto-style5 {
            width: 125px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2><asp:Label ID="Label1" runat="server" Text="Cadastro de Fornecedor"></asp:Label></h2>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style5">Nome:&nbsp; </td>
                        <td class="auto-style6">
                            <input id="txtNome" type="text" /></td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <p>Telefone:&nbsp; </p>
                        </td>
                        <td class="auto-style2">
                            <input id="txtTelefone" type="text" /></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Cidade:&nbsp; </td>
                        <td>
                            <input id="txtCidade" type="text" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Endereço:&nbsp; </td>
                        <td>
                            <input id="txtEndereco" type="text" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">CNPJ:&nbsp; </td>
                        <td>
                            <input id="txtCnpj" type="text" /></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" />
&nbsp;
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
        </div>
    </form>
</body>
</html>
