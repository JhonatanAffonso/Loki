using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loki
{
    public partial class pagamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PuxarUsuario();
        }

        //SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;User ID=Keila;Initial Catalog=loki;Data Source=.");
        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=loki;Data Source=.");

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Response.Write("<script language='javascript'>alert('Ae Carai');</script>")
            try
            {
                SqlCommand command = new SqlCommand("insert into t_pagamento(numeroCartao, validade, nomeImpresso, codigoSeguranca, lokiCoins, F_idCliente)values(" + txtNumCartao.Text + ", '" + txtValidade.Text + "', '" + txtNome.Text + "', '" + txtCodSeguranca.Text + "', " + float.Parse(rdoValor.Text) * 2 + ", 1); ", con);

                con.Open();
                command.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>alert('Loki Coins Adquirido com Sucesso!');</script>");
            }
            catch (SqlException)
            {
                Response.Write("<script language='javascript'>alert('Erro!');</script>");
            }
            
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            Limpar(this);
        }

        protected void PuxarUsuario()
        {
            SqlCommand cmd = new SqlCommand("select F_idPessoa from t_acesso where usuario = '" + Session["Usuario"] + "';", con);

            con.Open();
            Int32 idPessoa = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
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