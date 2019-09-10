<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Material.aspx.cs" Inherits="ProjAula05.Material" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            height: 19px;
        }
        .auto-style3 {
            width: 125px;
        }
        .auto-style4 {
            height: 19px;
            width: 125px;
        }
    </style>
</head>
<body style="height: 343px">
    <form id="form1" runat="server">
        <div>
            <h2><asp:Label ID="Label1" runat="server" Text="Cadastro de Material"></asp:Label></h2>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style3">Descrição:&nbsp; </td>
                        <td>
                            <input id="txtDescricao" class="auto-style1" type="text" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <p>Data de Entrega:&nbsp; </p>
                        </td>
                        <td class="auto-style2">
                            <input id="txtDataEntrega" type="text" /></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Tipo:&nbsp; </td>
                        <td>
                            <asp:DropDownList ID="ddlTipo0" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Valor:&nbsp; </td>
                        <td>
                            <input id="txtValor" type="text" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Fornecedor:&nbsp; </td>
                        <td>
                            <asp:DropDownList ID="ddlFornecedor0" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" />
&nbsp;
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar" />
        </div>
    </form>
</body>
</html>
