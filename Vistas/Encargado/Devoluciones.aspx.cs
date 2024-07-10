using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Neogcio;

namespace Vistas.Encargado
{
    public partial class Devoluciones : System.Web.UI.Page
    {
        private NegHerramientasUso negHerramientasUso = new NegHerramientasUso();
        private NegUsuarios negUsuarios = new NegUsuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDropDownProfesores();

                GridviewHerramientasSinDevolver();
            }
        }
        protected void cargarDropDownProfesores()
        {
            DataTable profesores = negUsuarios.obtenerProfesores();
            ddlProfesor.DataSource = profesores;
            ddlProfesor.DataTextField = "nombre";
            ddlProfesor.DataValueField = "usuario";
            ddlProfesor.DataBind();
        }

        protected void GridviewHerramientasSinDevolver()
        {
            // Obtener herramientas sin devolver y cargar en el GridView
            DataTable herramientasSinDevolver = negHerramientasUso.obtenerHerramientasSinDevolver();
            gvHerramientas_uso.DataSource = herramientasSinDevolver;
            gvHerramientas_uso.DataBind();
        }

        protected void btnTodos_Click(object sender, EventArgs e)
        {
         foreach (GridViewRow row in gvHerramientas_uso.Rows)
            {
              CheckBox chkSeleccionar = (CheckBox)row.FindControl("chkSeleccionar");
                if (chkSeleccionar != null && chkSeleccionar.Checked)
                {
                   listboxSeleccionados.Items.Add(new ListItem(row.Cells[2].Text, row.Cells[1].Text));
                }
            }
        }

        protected void btnDevolver_Click(object sender, EventArgs e)
        {
           // para obtener heerramientas seleccionas
            foreach (ListItem item in listboxSeleccionados.Items)
            {
                // falata lógica para generar la devolucion en BD
               }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            // cancelo devolucion
            listboxSeleccionados.Items.Clear();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // falta logica (crear pantalla encargado si es necesario)
        }

        protected void cbFiltrar_CheckedChanged(object sender, EventArgs e)
        {
            // si se marca checkbox, se carga drop
            cargarDropDownProfesores();
        }

        protected void ddlProfesor_SelectedIndexChanged(object sender, EventArgs e)
        {
            // falta implementar
        }
    }
}
