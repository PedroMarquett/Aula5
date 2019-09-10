using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAula05
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTipo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tipo.aspx");
        }

        protected void btnMaterial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Material.aspx");
        }

        protected void btnFornecedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fornecedor.aspx");
        }

        protected void btnCliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cliente.aspx");
        }

        protected void btnVenda_Click(object sender, EventArgs e)
        {
            Response.Redirect("Venda.aspx");
        }
    }
}