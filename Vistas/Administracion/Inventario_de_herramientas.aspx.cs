using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Neogcio;

namespace Vistas.Administracion
{
    public partial class Inventario_de_herramientas : System.Web.UI.Page
    {
        private List<int> roles = new List<int> { 1 };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!utils.autorizar(Session, roles))
            {
                Response.Redirect("../http401.aspx");
            }
            encabezado.Text = utils.cargaHeader(Session);

            if (!Page.IsPostBack)
            {
                NegHerramientas negHerramientas = new NegHerramientas();
                DataTable data = negHerramientas.buscar_todos();

                CargaGridView();
                switch_Controles();
            }
        }

        private void CargaGridView()
        {
            NegHerramientas negHerramientas = new NegHerramientas();

            gv_herramientas.DataSource = negHerramientas.buscar_todos();
            gv_herramientas.DataBind();
        }

        protected void gv_herramientas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //selecciono el indice a editar la fila.
            gv_herramientas.EditIndex = e.NewEditIndex;
            
            //hago un backup del "ID de la categoria" y "el nombre de la herramienta".
            String herramienta_actual = (String)(((Label)gv_herramientas.Rows[e.NewEditIndex].FindControl("lb_it_herramienta")).Text);
            String categoria_actual = (String)(((Label)gv_herramientas.Rows[e.NewEditIndex].FindControl("lb_it_idCat")).Text);
            
            //Cargo el grid view.
            CargaGridView();

            //creo una instancia de la capa negocios y mando a buscar las categoria existente.
            NegCategorias categorias = new NegCategorias();
            DataTable tabla_categorias = categorias.buscar_todos();

            //al DDL de las categorias lo lleno con las categorias exitentes.
            DropDownList lista_categorias = (DropDownList)gv_herramientas.Rows[e.NewEditIndex].FindControl("ddl_eit_cat");
            lista_categorias.DataSource = tabla_categorias;
            lista_categorias.DataTextField = "categoria";
            lista_categorias.DataValueField = "id";
            lista_categorias.DataBind();

            //y le seteo el value por defecto el que se selecciono
            lista_categorias.SelectedValue = categoria_actual;
        }

        protected void gv_herramientas_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_herramientas.EditIndex = -1;
            CargaGridView();
        }

        protected void gv_herramientas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Creo la instancia de la capa entidades.
            Herramientas herramienta = new Herramientas();

            //Extraigo el nombre que se modifico de la herramienta en el textbox
            String herramienta_selected = (String)(((TextBox)gv_herramientas.Rows[e.RowIndex].FindControl("txt_eit_herramienta")).Text);

            //Verifico que no haya quedado en blanco el campo
            if (herramienta_selected == "")
            {
                //Largo un cartel para informar el error
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('ERROR: El nombre de la herramienta no puede estar en blanco')", true);
                return;
            }

            //Extraigo el ID, NOMBRE Y CATEGORIA De la herramienta, (El nombre y categoria modificados), despues
            //Setteo los id, nombre y categoria en una variable de tipo ENTIDAD HERRAMIENTA.
            herramienta.setid(int.Parse(
                (String)((Label)gv_herramientas.Rows[e.RowIndex].FindControl("lb_eit_idHerramienta")).Text)
                );

            herramienta.setnombre(
                (String)(((TextBox)gv_herramientas.Rows[e.RowIndex].FindControl("txt_eit_herramienta")).Text
                ));

            herramienta.setid_categoria_herramienta(int.Parse(
                (String)((DropDownList)gv_herramientas.Rows[e.RowIndex].FindControl("ddl_eit_cat")).SelectedValue)
                );

            //Creo la instancia de la capa negocio Herramientas y ejecuto el metodo actualizar mandando como parametro 
            //La variable de tipo ENTIDAD HERRAMIENTA que habia cargado previamente.
            NegHerramientas NegHerramientas = new NegHerramientas();

            NegHerramientas.actualizar(herramienta);

            gv_herramientas.EditIndex = -1;
            CargaGridView();
        }

        protected void gv_herramientas_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //Verifica si los controles estan visibles, asi evitamos que se oculten cada vez que interactuamos con el GridView.
            if (radList_Stock.Visible == false)
            {
                switch_Controles();
            }

            String id_herramienta_elegida = (String)(((Label)gv_herramientas.Rows[e.NewSelectedIndex].FindControl("lb_it_idHerramienta")).Text);
            String herramienta_elegida = (String)(((Label)gv_herramientas.Rows[e.NewSelectedIndex].FindControl("lb_it_herramienta")).Text);
            
            //Le informo al usuario cual fue la herramienta q selecciono y limpio el textbox.
            lb_seleccionado.Text = "Usted ha seleccionado: " + id_herramienta_elegida + " - " + herramienta_elegida;
            txt_Stock.Text = string.Empty;
        }

        protected void btn_aceptar_Click(object sender, EventArgs e)
        {
            int enReparacion = int.Parse((String)(((Label)gv_herramientas.SelectedRow.FindControl("lb_it_reparacion")).Text));
            int stockAmodificar = int.Parse(txt_Stock.Text);
            int opcion = int.Parse(radList_Stock.SelectedValue.ToString());
            
            Herramientas herramientas = new Herramientas();
            NegHerramientas negHerramientas = new NegHerramientas();

            herramientas.setid (int.Parse ((String)(((Label)gv_herramientas.SelectedRow.FindControl("lb_it_idHerramienta")).Text)));
            if (opcion == 0)
            {
                if (enReparacion - stockAmodificar >= 0)
                {
                    negHerramientas.modificarStock(herramientas, stockAmodificar, opcion);
                }
                else
                {
                    lbl_error.Text = ("ERROR: no se pueden disminuir mas herramientas");
                }
            }
            else
            {
                negHerramientas.modificarStock(herramientas, stockAmodificar, opcion);
            }
         

            CargaGridView();
        }

        protected void btn_cancelar_Click(object sender, EventArgs e)
        {
            //Deselecciona el indice del gridview y Deja en blanco el label de informacion y el text box.
            gv_herramientas.SelectedIndex = -1;
            txt_Stock.Text = string.Empty;
            lb_seleccionado.Text = string.Empty;
            switch_Controles();
        }

        private void switch_Controles()
        {
            //muestro o oculto todos los controles para modificar el stock;
            radList_Stock.Visible = !radList_Stock.Visible;
            btn_aceptar.Visible = !btn_aceptar.Visible;
            btn_cancelar.Visible = !btn_cancelar.Visible;
            txt_Stock.Visible = !txt_Stock.Visible;
        }

        protected void radList_Stock_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}