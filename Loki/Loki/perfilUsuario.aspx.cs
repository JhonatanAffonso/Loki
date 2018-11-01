using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loki
{
    public partial class perfilTester : System.Web.UI.Page
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

            ListarSerieCliente();
            ListarFilmeCliente();
            ListarCatalogos();
            ContarFilmes();
            ContarSeries();
        }

        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=loki;Data Source=.");

        protected int PuxarUsuario()
        {

            SqlCommand cmd = new SqlCommand("select F_idPessoa from t_acesso where usuario = '" + Session["Usuario"] + "';", con);

            con.Open();
            Int32 idPessoa = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            return idPessoa;

        }

        protected string RecuperarNomeUsuario()
        {

            SqlCommand cmd = new SqlCommand("select pes.NomePessoa from t_acesso ac, t_pessoa pes where ac.F_IdPessoa = pes.IdPessoa and ac.Usuario = '" + Session["Usuario"] + "';", con);

            con.Open();
            string Nome = Convert.ToString(cmd.ExecuteScalar());
            con.Close();

            return Nome;

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

        //public void ListarCatalogo()
        //{
        //    SqlDataAdapter da = new SqlDataAdapter("select * from t_catalogo ", con);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    gvListarCatalogo.DataSource = dt;
        //    gvListarCatalogo.DataBind();
        //    //PuxarUsuario()
        //}

        public void ListarSerieCliente()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ListarSerieCliente where F_IdPessoa = " + PuxarUsuario(), con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvListarCatalogoCliente.DataSource = dt;
            gvListarCatalogoCliente.DataBind();
        }

        public void ListarFilmeCliente()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ListarFilmeCliente where F_IdPessoa = " + PuxarUsuario(), con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvListarFilmeCliente.DataSource = dt;
            gvListarFilmeCliente.DataBind();
        }

        public void ListarCatalogos()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from t_catalogo", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvListarCatalogos.DataSource = dt;
            gvListarCatalogos.DataBind();
        }

        public void ContarFilmes()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ContarFilmes where F_IdPessoa = " + PuxarUsuario(), con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvContarFilmes.DataSource = dt;
            gvContarFilmes.DataBind();
        }

        public void ContarSeries()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ContarSeries where F_IdPessoa = " + PuxarUsuario(), con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvContarSeries.DataSource = dt;
            gvContarSeries.DataBind();
        }

        protected void gvListarCatalogoCliente_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //int idCLiente = int.Parse(gvListarCatalogoCliente.Rows[e.RowIndex].Cells[0].Text);
            Response.Redirect("cadastroCliente.aspx?idCliente=" + PuxarUsuario() + "");
        }


    }
}