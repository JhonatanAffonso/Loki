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
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;User ID=Keila;Initial Catalog=loki;Data Source=.");
        string pth { get; set; }
        string nome { get; set; }
        string extensao { get; set; }
        string filename { get; set; }


        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            con.Open();

            if (FileUploadControl.PostedFile.ContentLength < 8388608)
            {
                try
                {
                    if (FileUploadControl.HasFile)
                    {
                        try
                        {
                            //Aqui ele vai filtrar pelo tipo de arquivo
                            if (FileUploadControl.PostedFile.ContentType == "image/jpeg" ||
                                FileUploadControl.PostedFile.ContentType == "image/png" ||
                                FileUploadControl.PostedFile.ContentType == "image/gif" ||
                                FileUploadControl.PostedFile.ContentType == "image/bmp")
                            {
                                try
                                {
                                    //Obtem o  HttpFileCollection
                                    HttpFileCollection hfc = Request.Files;
                                    for (int i = 0; i < hfc.Count; i++)
                                    {
                                        HttpPostedFile hpf = hfc[i];
                                        if (hpf.ContentLength > 0)
                                        {
                                            //Pega o nome do arquivo
                                            nome = System.IO.Path.GetFileName(hpf.FileName);
                                            //Pega a extensão do arquivo
                                            extensao = System.IO.Path.GetExtension(hpf.FileName);
                                            //Gera nome novo do Arquivo numericamente
                                            filename = string.Format("{0:00000000000000}", GerarID());
                                            //Caminho a onde será salvo
                                            hpf.SaveAs(Server.MapPath("~/uploads/fotos/") + filename + i + extensao);

                                            //Prefixo p/ img pequena
                                            var prefixoP = "-p";
                                            //Prefixo p/ img grande
                                            var prefixoG = "-g";

                                            //pega o arquivo já carregado
                                            pth = Server.MapPath("~/uploads/fotos/") + filename + i + extensao;

                                            //Redefine altura e largura da imagem e Salva o arquivo + prefixo

                                            Redefinir.resizeImageAndSave(pth, 70, 53, prefixoP);
                                            Redefinir.resizeImageAndSave(pth, 500, 331, prefixoG);
                                        }

                                    }
                                }
                                catch (Exception ex)
                                {
                                    StatusLabel.Text = ex.Message;

                                }
                                // Mensagem se tudo ocorreu bem
                                StatusLabel.Text = "Todas imagens carregadas com sucesso!";

                            }
                            else
                            {
                                // Mensagem notifica que é permitido carregar apenas 
                                // as imagens definida la em cima.
                                StatusLabel.Text = "É permitido carregar apenas imagens!";
                            }
                        }
                        catch (Exception ex)
                        {
                            // Mensagem notifica quando ocorre erros
                            StatusLabel.Text = "O arquivo não pôde ser carregado. O seguinte erro ocorreu: " + ex.Message;
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Mensagem notifica quando ocorre erros
                    StatusLabel.Text = "O arquivo não pôde ser carregado. O seguinte erro ocorreu: " + ex.Message;
                }
            }
            else
            {
                // Mensagem notifica quando imagem é superior a 8 MB
                StatusLabel.Text = "Não é permitido carregar mais do que 8 MB";
            }

            SqlCommand command = new SqlCommand("insert into t_pessoa (nomePessoa, cpf, estado, cidade, cep, endereco, numero, complemento, email, situacao, foto) values ('" + txtNome.Text + "', '" + txtCpf.Text + "', '" + txtEstado.Text + "', '" + txtCidade.Text + "', '" + txtCep.Text + "', '" + txtEndereco.Text + "', '" + txtNumero.Text + "', '" + txtComplemento.Text + "', '" + txtEmail.Text + "', '" + DpSituacao.Text + "' , '"+ pth + "')", con);
            SqlCommand commandMax = new SqlCommand("select max(idPessoa)+1 from t_pessoa", con);
            Int32 idPessoa = (Int32)commandMax.ExecuteScalar();
            SqlCommand command2 = new SqlCommand("insert into t_acesso(usuario, senha, F_idPessoa) values ('" + txtUsuario.Text + "', '" + txtSenha.Text + "', (select max(pes.idPessoa) from t_pessoa pes))", con);
            SqlCommand command3 = new SqlCommand("insert into t_telefone(ddd, telefone, F_idPessoa) values (" + txtDdd.Text + "," + txtTelefone.Text + ",(select max(pes.idPessoa) from t_pessoa pes))", con);
            SqlCommand command4 = new SqlCommand("insert into t_cliente(F_idPessoa) values ((select max(pes.idPessoa) from t_pessoa pes))", con);


            try
            {                             
                command.ExecuteNonQuery();
                command2.ExecuteNonQuery();
                command3.ExecuteNonQuery();
                command4.ExecuteNonQuery();                

                Response.Write("<script>alert('Perfil Criado Com Sucesso! Bem vindo Lockier!');location = 'index.aspx';</script>");
                idPessoa = 0;
                Limpar(this);
            }
            catch (SqlException)
            {                
                Response.Write("<script>alert('Não foi possível realizar o cadastro. Verifique os dados e tente novamente!');</script>");
                SqlCommand command5 = new SqlCommand("delete from t_pessoa where idPessoa = " + idPessoa, con);
                command5.ExecuteNonQuery();
                idPessoa = 0;
            }

           

            con.Close();
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

        protected void txtUsuario_Leave(object sender, EventArgs e)
        {

            SqlCommand command = new SqlCommand("select * from t_acesso where usuario = " + txtUsuario.Text);
            if (command != null)
            {
                Response.Write("Este usuário não está disponível utilize outro");
                txtUsuario.Text = "";
            }
        }

        
        public Int64 GerarID()
        {
            try
            {
                DateTime data = new DateTime();
                data = DateTime.Now;
                string s = data.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");
                return Convert.ToInt64(s);
            }
            catch (Exception erro)
            {
                StatusLabel.Text = erro.Message;
                throw;
            }
        }
    }
}