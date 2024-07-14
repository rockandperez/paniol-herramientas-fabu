using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Entidades;
using Neogcio;

namespace Vistas.Encargado
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegUsuarios negUsuarios = new NegUsuarios();
        NegHerramientas negHerramientas = new NegHerramientas();
        //private List<int> roles = new List<int> { 1, 2 };
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!utils.autorizar(Session, roles))
            //{
            //    Response.Redirect("../http401.aspx");
            //}
            //encabezado.Text = utils.cargaHeader(Session);

            if (!IsPostBack)
            {
                Cargar_ddl_profesores();
                Cargar_gv_herramientas();

                if (Session["TablaRetiros"] == null)
                {
                    Session["TablaRetiros"] = Crear_tabla_retiros();
                }

            }

        }

        private void Cargar_ddl_profesores()
        {
            DataTable tablaProfesores = negUsuarios.obtenerProfesores();

            ddlProfesores.DataSource = tablaProfesores;
            ddlProfesores.DataTextField = "NombreCompleto";
            ddlProfesores.DataValueField = "usuario";
            ddlProfesores.DataBind();

            ddlProfesores.Items.Insert(0, new ListItem("Seleccione un Profesor", "0"));
        }

        private void Cargar_gv_herramientas()
        {
            DataTable tablaHerramientas = negHerramientas.buscar_todos();

            gv_herramientas.DataSource = tablaHerramientas;
            gv_herramientas.DataBind();
        }

        private DataTable Crear_tabla_retiros()
        {
            DataTable tabla_retiros = new DataTable("Retiros");
            tabla_retiros.Columns.Add("Id Herramienta", typeof(string));
            tabla_retiros.Columns.Add("Nombre Herramienta", typeof(string));
            tabla_retiros.Columns.Add("Cant. Retiradas", typeof(string));
            tabla_retiros.Columns.Add("Profesor", typeof(string));
            tabla_retiros.Columns.Add("Fecha", typeof(string));
            tabla_retiros.Columns.Add("Hora Retiro", typeof(string));

            return tabla_retiros;
        }

        private void armar_gvRetiro(string id_herramienta,string nombre_herramienta)
        {

            if (ddlProfesores.SelectedValue == "0")
            {
                cv_Profesores.IsValid = false;
                return;
            }

            DataRow retiros = ((DataTable)Session["TablaRetiros"]).NewRow();
            retiros["Id Herramienta"] = id_herramienta;
            retiros["Nombre Herramienta"] = nombre_herramienta;
            retiros["Profesor"] = ddlProfesores.Text.ToString();
            retiros["Fecha"] = DateTime.UtcNow.ToShortDateString();
            retiros["Hora Retiro"] = DateTime.Now.ToShortTimeString();

            //fijarse con el tema de los indices al momento de borrar datos en el gv_retiros
            ((DataTable)Session["TablaRetiros"]).Rows.Add(retiros);

            gv_retiros.DataSource = ((DataTable)Session["TablaRetiros"]);
            gv_retiros.DataBind();

            btn_Alta.Visible = true;
        }

        private void extraer_datos_gvRetiro()
        {
            List<HerramientasUso> listaDeRetiros = new List<HerramientasUso>();

            foreach (DataRow data in gv_retiros.Rows)
            {
                HerramientasUso retiroHerramientas = new HerramientasUso();

            }
        }

        protected void btn_Alta_Click(object sender, EventArgs e)
        {
            btn_Alta.Visible = false;
        }

        protected void gv_herramientas_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string id = (String)(((Label)gv_herramientas.Rows[e.NewSelectedIndex].FindControl("lb_it_idHerramienta")).Text);
            string nombre = (String)(((Label)gv_herramientas.Rows[e.NewSelectedIndex].FindControl("lb_it_herramienta")).Text);
            
            armar_gvRetiro(id, nombre);

        }

        protected void gv_retiros_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            gv_retiros.DeleteRow(gv_retiros.SelectedIndex);
        }
    }
}