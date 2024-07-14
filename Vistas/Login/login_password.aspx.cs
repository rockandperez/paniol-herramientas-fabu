using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Neogcio;
using Entidades;
using System.Reflection.Emit;
using Vistas.Administracion;

namespace Vistas.Login
{
    public partial class login_password : System.Web.UI.Page
    {
        private Usuarios usuario;
        private bool nuevaPass = true;
        protected void Page_Load(object sender, EventArgs e)

        {


            try
            {
                usuario = (Usuarios)Session["usuario"];
            }
            catch
            {
                Response.Redirect("~/Login/login_usuario.aspx");
            }

            Session["logedon"] = false;

            //validamos que la pass es "", si no lo es, escondemos los controles y definimos el flag
            if (!usuario.validarPass(""))
            {
                nuevaPass = false;
                txtRepeatPass.Visible = false;
                lvlRepetirContraseña.Visible = false;
                lblMsgUsuario.Text = "Bienvenido " + usuario.getNombreCompleto() + ". Ingrese su contraseña.";
            }
            else
            {
                lblMsgUsuario.Text = "Bienvenido " + usuario.getNombreCompleto() + ". Defina su contraseña.";
                nuevaPass = true;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (usuario != null)
            {   


                //nueva password
                if(nuevaPass == true)
                {

                    NegUsuarios negUsuarios = new NegUsuarios();

                    bool resultado = negUsuarios.cambiaPass(txtPass.Text, usuario.getId());

                    if (!resultado)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Ocurrio un error al actualziart la password')", true);
                        return;
                    }

                    if (txtPass.Text.CompareTo(txtRepeatPass.Text) != 0)
                    {


                    }

                    usuario = negUsuarios.busca_por_id(usuario.getId());
                    Session["usuario"] = usuario;

                }

                //validsmos la pass
                if (!usuario.validarPass((String)txtPass.Text))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password invalida!')", true);
                    return;
                }
                else
                {
                    Session["logedon"] = true;
                }

                // Accede al rol del usuario
                Roles rolUsuario = usuario.getRol();

                // Verifica si el id del rol es igual a 1
                if (rolUsuario.getId() == 1)
                {
                    // Usuario válido con rol 1
                    Response.Redirect("~/Administracion/Usuarios.aspx");
                }
                else if (rolUsuario.getId() == 2)
                {
                    // Usuario tiene rol 2
                    Response.Redirect("~/Encargado/Alta_Retiro.aspx");
                } else
                {
                    Response.Redirect("../http401.aspx");
                }
            }

        }
    }

}