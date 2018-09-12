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
            txtNumCartao.Text = "";
            txtNome.Text = "";
            txtValidade.Text = "";
            txtCodSeguranca.Text = "";
        }
    }
}