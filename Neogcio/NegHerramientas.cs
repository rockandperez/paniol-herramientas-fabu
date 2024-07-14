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
    public class NegHerramientas
    {
        daoHerramientas herramientas = new daoHerramientas();
    
        public DataTable buscar_todos()
        {
            return herramientas.buscar_todos();
        }

        public DataTable buscar_stock(string id)
        {
            return herramientas.buscar_stock(id);
        }

        public bool actualizar(Herramientas herramienta)
        {
            if(herramientas.actualizar(herramienta) == 0)
            {
                return false;
            }

            return true;
        }
        public bool modificarStock(Herramientas herramienta, int stockAmodificar, int opcion)
        {
            if (opcion == 0)
            {
                if (herramientas.disminuirStock(herramienta, stockAmodificar) == 0)
                {
                    return false;
                }
                return true;
            }
            if (herramientas.aumentarStock(herramienta, stockAmodificar) == 0)
            {
                return false;
            }
            return true;
        }
    }

}

