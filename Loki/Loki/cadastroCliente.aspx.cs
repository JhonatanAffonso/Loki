using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loki
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;User ID=Keila;Initial Catalog=loki;Data Source=.");

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert ...", con);
            con.Open();
            command.ExecuteNonQuery();
            con.Close();

        }
    }
}