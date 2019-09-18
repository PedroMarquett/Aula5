using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAula05
{
    public partial class Tipo : System.Web.UI.Page
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
            Tipo tipo = new Tipo()
            {
                Descricao = txtDesc.Text
            };

            dbAula5Entities context = new dbAula5Entities();
            context.Tipo.Add(tipo);
            context.SaveChanges();
            LoadGrid();
            SendMessage("Registro Inserido!");
        }
        private void LoadGrid()
        {

            gvTipo.DataSource = new dbAula5Entities().Tipo.ToList<Tipo>();
            gvTipo.DataBind();

        }

        private void SendMessage(String txt)
        {
            lblMsg.Text = txt;
        }
    }
}