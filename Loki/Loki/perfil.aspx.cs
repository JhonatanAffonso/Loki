using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loki
{
    public partial class perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Recupera usuario da sessão
            string usuario = (string)Session["Usuario"];

            // Sessão for invalida
            if (usuario == null)
            {
                Response.Redirect("index.aspx");
            }

            PuxarUsuario();

        }

        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=loki;Data Source=.");
        public Int32 idPessoa;

        protected void PuxarUsuario()
        {

            SqlCommand cmd = new SqlCommand("select F_idPessoa from t_acesso where usuario = '" + Session["Usuario"] + "';", con);

            con.Open();
            idPessoa = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Invalida Sessão
            Session.Abandon();
            Response.Redirect("index.aspx");
        }

        protected void btnPagamento_Click(object sender, EventArgs e)
        {
            Response.Redirect("pagamento.aspx");
        }

        
    }
}