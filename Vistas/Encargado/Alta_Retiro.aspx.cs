using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Encargado
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private List<int> roles = new List<int> { 1,2 };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!utils.autorizar(Session, roles))
            {
                Response.Redirect("../http401.aspx");
            }
            encabezado.Text = utils.cargaHeader(Session);
        }
    }
}