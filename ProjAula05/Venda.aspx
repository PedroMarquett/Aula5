<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Venda.aspx.cs" Inherits="ProjAula05.Venda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 312px;
        }
        .auto-style5 {
            width: 125px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style4 {
            height: 19px;
            width: 125px;
        }
        .auto-style2 {
            height: 19px;
        }
        .auto-style3 {
            width: 125px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2><asp:Label ID="Label1" runat="server" Text="Cadastro de Venda"></asp:Label></h2>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style5">Fornecedor:&nbsp; </td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="ddlFornecedor" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <p>Cliente:&nbsp; </p>
                        </td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="ddlCliente" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Material:&nbsp; </td>
                        <td>
                            <asp:DropDownList ID="ddlMaterial" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Data da Venda:&nbsp; </td>
                        <td>
                            <input id="txtDataVenda" type="text" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            &nbsp;</td>
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
