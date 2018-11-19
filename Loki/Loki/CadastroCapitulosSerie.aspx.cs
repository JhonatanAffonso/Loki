using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loki
{
    public partial class CadastroCapitulosSerie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=loki;Data Source=.");        

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            /*
            con.Open();

            SqlCommand command = new SqlCommand("insert into t_catalogo (TipoCatalogo, Titulo, Descricao, AnoLancamento, F_Genero, Direcao, Duracao, DataInsercao, Foto) values ('" + dpTipoCatalogo.Text + "', '" + txtTituloSerie.Text + "', '" + txtSinopseSerie.Text + "', '" + txtAnoLancamento.Text + "', '" + dpGeneroSerie.Text + "', '" + txtDirecaoSerie.Text + "', '" + txtDuracao.Text + "', SYSDATETIME(), '" + pth + "')", con);
            try
            {
                command.ExecuteNonQuery();

                Response.Write("<script>alert('Capítulo Cadatsrado Com Sucesso!');location = 'cadastroCapitulosSerie.aspx';</script>");
                Limpar(this);
            }
            catch (SqlException)
            {
                Response.Write("<script>alert('Não foi possível realizar o cadastro. Verifique os dados e tente novamente!');</script>");

            }

            con.Close();
            */
        }

        public void Limpar(Control controle)
        {
            foreach (Control ctle in controle.Controls)
            {
                if (ctle is TextBox)
                {
                    ((TextBox)ctle).Text = string.Empty;
                }
                else if (ctle.Controls.Count > 0)
                {
                    Limpar(ctle);
                }
            }

        }

    }
}