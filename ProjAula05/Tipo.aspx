<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tipo.aspx.cs" Inherits="ProjAula05.Tipo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 370px;
        }
        .auto-style2 {
            width: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="lblTipo" class="auto-style1">
            <h2> Cadastro Tipo</h2>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">Descrição Tipo: </td>
                    <td>
                        <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
&nbsp;<asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
            <br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gvTipo" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
