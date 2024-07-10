using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Neogcio;


namespace Vistas.Login
{
    public partial class login_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["usuario"] = null;
            Session["logedon"] = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            long id;
            if (long.TryParse(TxtUsuario.Text, out id))
            {
                // El valor ingresado es un número válido
                NegUsuarios negUsuarios = new NegUsuarios();
                Usuarios usuario = negUsuarios.busca_por_id(id);

                if (usuario.getRol() == null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('El usuario no existe')", true);
                    return;
                }

                // Si existe, carga en sesión y redirige a login_password.aspx
                Session["usuario"] = usuario;
                Session["logedon"] = false;
                Response.Redirect("login_password.aspx");

            }
            else
            {
                // La entrada no es un número válido
           
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Ingresa un número válido')", true);
            }
        }

        protected void TxtUsuario_TextChanged(object sender, EventArgs e)
        {

        }
    }
}