using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Neogcio;

namespace Vistas.Administracion
{
    public partial class usuarios : System.Web.UI.Page
    {
        List<int> roles = new List<int> { 1 };

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!utils.autorizar(Session, roles))
            {
                Response.Redirect("../http401.aspx");
            }

            encabezado.Text = utils.cargaHeader(Session);
            

            if (!Page.IsPostBack)
            {

                

                //cargo el DDL de filtro por ROL
                NegRoles negRoles = new NegRoles();
                DataTable tabla_roles = negRoles.buscar_todos();

                ddl_filtro_rol.DataSource = tabla_roles;
                ddl_filtro_rol.DataTextField = "nombre_rol";
                ddl_filtro_rol.DataValueField = "id";
                ddl_filtro_rol.DataBind();


                //llamo a cargar gridview
                CargaGridView();

                
            }

        }



        private void CargaGridView()
        {
            NegUsuarios negUsuarios = new NegUsuarios();

            if (cb_filtrar.Checked)
            {
                string estado = ddl_filtro_estado.SelectedValue;
                string rol = ddl_filtro_rol.SelectedValue;
                string nom_ape = txt_filtro_nombre.Text;

                gv_usuarios.DataSource = negUsuarios.buscar_filtro(estado, rol, nom_ape);
                
            } else
            {
                gv_usuarios.DataSource = negUsuarios.buscar_todos();
            }
            gv_usuarios.DataBind();

        }

        protected void gv_libros_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
        }

        protected void gv_usuarios_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv_usuarios.EditIndex = e.NewEditIndex;

            //Preservo estado y rol anteriores, apoyandome en los datos del gridview.
            String rol_actual = (String)(((Label)gv_usuarios.Rows[e.NewEditIndex].FindControl("lbl_it_rolId")).Text);
            String estado_actual = (String)(((Label)gv_usuarios.Rows[e.NewEditIndex].FindControl("lbl_it_estado")).Text);

            //Actualizo para que se muestre el modo edicion en el gridview
            CargaGridView();

            //me traigo los roles de la DB
            NegRoles negRoles = new NegRoles();
            DataTable tabla_roles = negRoles.buscar_todos();
            //taigo el control ddl de edicion de roles, para rellenarlo
            DropDownList lista_roles = (DropDownList)gv_usuarios.Rows[e.NewEditIndex].FindControl("ddl_et_rol");
            lista_roles.DataSource = tabla_roles;
            lista_roles.DataTextField = "nombre_rol";
            lista_roles.DataValueField = "id";
            lista_roles.DataBind();
            //Seteo el rol  actual en el DDL
            lista_roles.SelectedValue = rol_actual;

            //parecido con el estado (edite los items en el control, por que no los tenemos en DB)
            DropDownList lista_estados = (DropDownList)gv_usuarios.Rows[e.NewEditIndex].FindControl("ddl_et_estado");
            lista_estados.SelectedValue = estado_actual;



        }

        protected void gv_usuarios_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_usuarios.EditIndex = -1;
            CargaGridView();
        }

        protected void gv_usuarios_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
        }

        protected void gv_usuarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {   
            
            Usuarios usuario = new Usuarios();

            string nombre = ((TextBox)gv_usuarios.Rows[e.RowIndex].FindControl("tb_et_nombre")).Text;
            string apellido = ((TextBox)gv_usuarios.Rows[e.RowIndex].FindControl("tb_et_apellido")).Text;

            //verificamos que haya completado los campos
            if (nombre == "" || apellido == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('el nombre y el apellido no pueden estar en blanco')", true);
                return;
            }

            // mapeamos todos los campos a una entidad usuarios

            usuario.setId(int.Parse(
                (String)(((Label)gv_usuarios.Rows[e.RowIndex].FindControl("lbl_et_id")).Text)
                ));

            usuario.setNombre(nombre);
            usuario.setApellido(apellido);

            usuario.setRol(
                    new Roles(
                        int.Parse(
                            (String)(((DropDownList)gv_usuarios.Rows[e.RowIndex].FindControl("ddl_et_rol")).SelectedValue)
                         )));

            String estado = (String)((DropDownList)gv_usuarios.Rows[e.RowIndex].FindControl("ddl_et_estado")).SelectedValue;
            if (estado.CompareTo("True")==0)
            {
                usuario.setEstado(true);
            } else
            {
                usuario.setEstado(false);
            }

            //llamamos al metodo para actualizar

            NegUsuarios negUsuarios = new NegUsuarios();
            negUsuarios.actualizar(usuario);

            //limpiamos indice de edicion
            gv_usuarios.EditIndex = -1;
            CargaGridView();
        }


        protected void cb_filtrar_CheckedChanged(object sender, EventArgs e)
        {
            
            if (!cb_filtrar.Checked)
            {
                txt_filtro_nombre.Text = "";
             }

            gv_usuarios.EditIndex = -1;
            CargaGridView();
        }

        protected void ddl_filtro_estado_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargaGridView();
        }

        protected void ddl_filtro_rol_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargaGridView();
        }

        protected void txt_filtro_nombre_TextChanged(object sender, EventArgs e)
        {
            CargaGridView();
        }

        protected void gv_usuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_usuarios.PageIndex = e.NewPageIndex;
            CargaGridView();
        }

        protected void BtNuevo_Click(object sender, EventArgs e)
        {
            // Redirige al usuario a alta_usuario.aspx
            Response.Redirect("alta_usuario.aspx");
        }

        protected void BtVolver_Click(object sender, EventArgs e)
        {
            // Redirige al usuario a Panel_Administracion.aspx
            Response.Redirect("Panel_Administracion.aspx");
        }

        protected void gv_usuarios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_filtro_nomape_Click(object sender, EventArgs e)
        {
            CargaGridView();
        }

        protected void btn_blanqueo_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eventoBlanquear")
            {
                NegUsuarios negUsuarios = new NegUsuarios();
                bool resultado = negUsuarios.cambiaPass("", int.Parse(e.CommandArgument.ToString()));

                if (resultado)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password correctamente blanqueada')", true);
                } else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Ocurrio un error al blanquear la password')", true);
                }

            }

        }
    }
}