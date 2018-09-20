using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loki
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;User ID=Keila;Initial Catalog=loki;Data Source=.");

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usuario = Request.Form["txtUsuario"];
            string senha = Request.Form["txtSenha"];
            
            SqlCommand cmd = new SqlCommand("select count(1) from t_acesso where usuario = @login and senha = @senha", con);
            cmd.Parameters.AddWithValue("@login", usuario);
            cmd.Parameters.AddWithValue("@senha", senha);
            con.Open();
            if (cmd.ExecuteScalar().ToString() == "1")
            {
                Session["Usuario"] = usuario;
                   Response.Redirect("perfilUsuario.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuário ou Senha Inválidos!Digite novamente!');</script>");
                   Response.Redirect("index.aspx");
            }
            con.Close();




            //string usuario = Request.Form["txtUsuario"];
            //string senha = Request.Form["txtSenha"];
            
            //if (usuario.Equals("adm") && senha.Equals("1234"))
            //{
            //    Session["Usuario"] = usuario;
            //    Response.Redirect("perfil.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Usuário ou Senha Inválidos!Digite novamente!');</script>");
            //    Response.Redirect("index.aspx");
            //}

        }
    }
}