using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAula05
{
    public partial class Material : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            dbAula5Entities context = new dbAula5Entities();
            int idTipo = int.Parse(ddlTipo.SelectedValue.ToString());
            int idFornecedor = int.Parse(ddlFornecedor.SelectedValue.ToString());

            Material material = new Material()
            {
                Descricao = txtDesc.Text,
                DataEntrega = DateTime.Now,
                Valor = Decimal.Parse( txtValor.Text),
                IdTipo = context.Tipo.First<Tipo>(v => v.Id == idTipo).Id,
                IdFornecedor = context.Fornecedor.First<Fornecedor>(v => v.Id == idFornecedor).Id
            };

            
            context.Material.Add(material);
            context.SaveChanges();
            LoadGrid();
            SendMessage("Registro Inserido!");
        }
        private void LoadGrid()
        {
            dbAula5Entities context = new dbAula5Entities();
            var dados = (from m in context.Material
                         from e in context.Tipo.Where(x => x.Id == m.IdTipo)
                         from f in context.Fornecedor.Where(x => x.Id == m.IdFornecedor)
                         select new
                         {
                             Id = m.Id,
                             Descricao = m.Descricao,
                             Tipo = e.Descricao,
                             Fornecedor = f.Nome
                         }).ToList();

            gvMaterial.DataSource = new dbAula5Entities().Material.ToList<Material>();
            gvMaterial.DataBind();

        }
        private void LoadDDL()
        {
            ddlTipo.DataSource = new dbAula5Entities().Tipo.ToList<Tipo>();
            ddlTipo.DataTextField = "Descricao";
            ddlTipo.DataValueField = "IdTipo";
            ddlTipo.DataBind();
            ddlTipo.Items.Insert(0, "Selecione um tipo");
            ddlTipo.SelectedIndex = 0;

            ddlFornecedor.DataSource = new dbAula5Entities().Tipo.ToList<Tipo>();
            ddlFornecedor.DataTextField = "Descricao";
            ddlFornecedor.DataValueField = "IdFornecedor";
            ddlFornecedor.DataBind();
            ddlFornecedor.Items.Insert(0, "Selecione um Fornecedor");
            ddlFornecedor.SelectedIndex = 0;
        }

        private void SendMessage(String txt)
        {
            lblMsg.Text = txt;
        }
    }
}