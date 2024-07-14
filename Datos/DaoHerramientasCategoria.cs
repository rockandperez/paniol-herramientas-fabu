using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Entidades;

namespace Datos
{
    public class DaoHerramientasCategoria
    {
        ConexionDB conexion = new ConexionDB();

        public DataTable buscar_todos()
        {
            string sql = "SELECT DISTINCT * FROM [herramientas_categoria]";
            return conexion.EjecutarConulta(sql);
        }
    }
}
