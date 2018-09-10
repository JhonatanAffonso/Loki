using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loki
{
    public partial class Pagamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Integrated Security = SSPI; Persist Security Info=False;Initial Catalog = loki; Data Source =.");

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>alert('Ae Carai');</script>");
            //SqlCommand command = new SqlCommand();
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNumCartao.Text = "";
            txtNome.Text = "";
            txtValidade.Text = "";
            txtCodSeguranca.Text = "";
        }


    }
}