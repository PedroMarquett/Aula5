using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAula05
{
    public partial class Fornecedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Fornecedor fornecedor = new Fornecedor()
            {
                Nome = txtNome.Text,
                Telefone = txtTelefone.Text,
                Cidade = txtCidade.Text,
                Endereco = txtEndereco.Text,
                CNPJ = Int32.Parse(txtCnpj.Text)
            };

            dbAula5Entities context = new dbAula5Entities();
            context.Fornecedor.Add(fornecedor);
            context.SaveChanges();
            LoadGrid();
            SendMessage("Registro Inserido!");
        }
        private void LoadGrid()
        {

            gvFornecedor.DataSource = new dbAula5Entities().Tipo.ToList<Tipo>();
            gvFornecedor.DataBind();

        }

        private void SendMessage(String txt)
        {
            lblMsg.Text = txt;
        }
    }
}