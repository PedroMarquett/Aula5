using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAula05
{
    public partial class Cliente : System.Web.UI.Page
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
            Cliente cliente = new Cliente()
            {
                Nome = txtNome.Text,
                Telefone = txtTelefone.Text,
                Cidade = txtCidade.Text,
                Endereco = txtEndereco.Text,
                CPF = Int32.Parse(txtCpf.Text)
            };

            dbAula5Entities context = new dbAula5Entities();
            context.Cliente.Add(cliente);
            context.SaveChanges();
            LoadGrid();
            SendMessage("Registro Inserido!");
        }

        private void LoadGrid()
        {

            gvCliente.DataSource = new dbAula5Entities().Cliente.ToList<Cliente>();
            gvCliente.DataBind();

        }

        private void SendMessage(String txt)
        {
            lblMsg.Text = txt;
        }
    }
}