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
    public partial class cadastroSerie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ContarFilmesGeral();
            ContarClientesGeral();
            ListarSeriesGeral();
            ListarSeriesRecentes();
            ContarGenero();
            ContarSeriesGeral();
            ListarGenero();
        }

        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=loki;Data Source=.");
        string pth { get; set; }
        string nome { get; set; }
        string extensao { get; set; }
        string filename { get; set; }


        public void ContarFilmesGeral()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ContarFilmesGeral", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvContarFilmesGeral.DataSource = dt;
            gvContarFilmesGeral.DataBind();
        }

        public void ContarSeriesGeral()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ContarSeriesGeral", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvContarSeriesGeral.DataSource = dt;
            gvContarSeriesGeral.DataBind();
        }

        public void ContarClientesGeral()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ContarClientesGeral", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvContarClientesGeral.DataSource = dt;
            gvContarClientesGeral.DataBind();
        }

        public void ContarGenero()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ContarGenero", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvContarGenero.DataSource = dt;
            gvContarGenero.DataBind();
        }

        public void ListarSeriesGeral()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ListarSeriesGeral", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvListarSeriesGeral.DataSource = dt;
            gvListarSeriesGeral.DataBind();
        }

        public void ListarSeriesRecentes()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ListarSeriesRecentes", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvListarSeriesRecentes.DataSource = dt;
            gvListarSeriesRecentes.DataBind();
        }

        public void ListarGenero()
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from t_genero order by Genero", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            dpGeneroSerie.DataValueField = "Genero";
            dpGeneroSerie.DataTextField = "Genero";
            dpGeneroSerie.DataSource = dt;
            dpGeneroSerie.DataBind();

            dpGeneroSerie.Items.Insert(0, "Selecione...");
        }

        protected void Sair_Click(object sender, EventArgs e)
        {
            // Invalida Sessão
            Session.Abandon();
            Response.Redirect("index.aspx");
        }

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

            SqlCommand command = new SqlCommand("insert into t_catalogo (TipoCatalogo, Titulo, Descricao, AnoLancamento, F_Genero, Direcao, Duracao, DataInsercao, Foto) values ('" + dpTipoCatalogo.Text + "', '" + txtTituloSerie.Text + "', '" + txtSinopseSerie.Text + "', '" + txtAnoLancamento.Text + "', '" + dpGeneroSerie.Text + "', '" + txtDirecaoSerie.Text + "', '" + txtDuracao.Text + "', SYSDATETIME(), '" + pth + "')", con);
            try
            {
                command.ExecuteNonQuery();

                Response.Write("<script>alert('Filme Cadastrado Com Sucesso!');location = 'cadastroFilme.aspx';</script>");
                Limpar(this);
            }
            catch (SqlException)
            {
                Response.Write("<script>alert('Não foi possível realizar o cadastro. Verifique os dados e tente novamente!');</script>");

            }



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