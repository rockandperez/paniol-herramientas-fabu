using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos;
using Entidades;

namespace Neogcio
{
    public class NegCategorias
    {
        DaoHerramientasCategoria categoria = new DaoHerramientasCategoria();

        public DataTable buscar_todos()
        {
            return categoria.buscar_todos();
        }
    
        
    }
}
