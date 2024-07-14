using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Neogcio;
using System.Data;

namespace Vistas.Administracion
{
    public partial class categorias : System.Web.UI.Page
    {
        private List<int> roles = new List<int> { 1 };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGridViewCategorias();
            }

            if (!utils.autorizar(Session, roles))
            {
                Response.Redirect("../http401.aspx");
            }
            encabezado.Text = utils.cargaHeader(Session);
        }

        protected void BTNNueva_Click(object sender, EventArgs e)
        {
            // Redirige a la página "alta_categoria.aspx"
            Response.Redirect("alta_categoria.aspx");
        }
        private void CargarGridViewCategorias()
        {
            NegCategorias negCategorias = new NegCategorias();
            DataTable dtCategorias = negCategorias.buscar_todos();

            // Asigna los datos al GridView
            GridCategorias.DataSource = dtCategorias;
            GridCategorias.DataBind();
        }
        private void FiltrarCategorias(string categoria)
        {
            NegCategorias negCategorias = new NegCategorias();
            DataTable dtTodasLasCategorias = negCategorias.buscar_todos(); // Obtén todas las categorías

            // Filtra las categorías según la categoría ingresada
            var categoriasFiltradas = dtTodasLasCategorias.AsEnumerable()
            .Where(row => row.Field<string>("categoria").Contains(categoria))
            .CopyToDataTable();

            // Asigna los datos filtrados al GridView
            GridCategorias.DataSource = categoriasFiltradas;
            GridCategorias.DataBind();
        }

        protected void BtBuscar_Click(object sender, EventArgs e)
        {
            string categoriaBuscada = TXTCategoria.Text.Trim(); // Obtiene el valor del TextBox

            if (!string.IsNullOrEmpty(categoriaBuscada))
            {
                // Realiza la búsqueda y filtra las categorías según la categoría ingresada
                FiltrarCategorias(categoriaBuscada);
            }
            else
            {
                // Si no se ingresa ninguna categoría, muestra todas las categorías
                CargarGridViewCategorias();
            }
        }
    }
}