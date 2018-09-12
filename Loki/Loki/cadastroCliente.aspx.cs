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
            try
            {

                SqlCommand command = new SqlCommand("insert into t_pessoa (nomePessoa, cpf, estado, cidade, cep, endereco, numero, complemento, email, situacao) values ('" + txtNome.Text + "', '" + txtCpf.Text + "', '" + txtEstado.Text + "', '" + txtCidade.Text + "', '" + txtCep.Text + "', '" + txtEndereco.Text + "', '" + txtNumero.Text + "', '" + txtComplemento.Text + "', '" + txtComplemento.Text + "', '" + txtSituacao.Text + "')", con);
                SqlCommand command2 = new SqlCommand("insert into t_telefone(ddd, telefone, F_idPessoa) values (" + txtDdd.Text + "," + txtTelefone.Text + ",(select max(pes.idPessoa) from t_pessoa pes))", con);
                SqlCommand command3 = new SqlCommand("insert into t_acesso(usuario, senha, F_idPessoa) values ('" + txtUsuario.Text + "', '" + txtSenha.Text + "', (select max(pes.idPessoa) from t_pessoa pes))", con);
                SqlCommand command4 = new SqlCommand("insert into t_cliente(F_idPessoa) values ((select max(pes.idPessoa) from t_pessoa pes))", con);

                con.Open();
                command.ExecuteNonQuery();
                command2.ExecuteNonQuery();
                command3.ExecuteNonQuery();
                command4.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Perfil Criado Com Sucesso! Bem vindo Lockier!');</script>");
                Limpar(this);
            }
            catch (SqlException)
            {
                Response.Write("<script>alert('Não foi possível realizar o cadastro. Verifique as informações!');</script>");

                Limpar(this);
                
            }
        }

        public void Limpar(Control controle)
        {
            foreach(Control ctle in controle.Controls)
            {
                if(ctle is TextBox)
                {
                    ((TextBox)ctle).Text = string.Empty;
                }
                else if(ctle.Controls.Count>0)
                {
                    Limpar(ctle);
                }
            }

        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            Limpar(this);
        }
    }
}