using System;
using System.Collections.Generic;
using System.Linq;
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

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Invalida Sessão
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}