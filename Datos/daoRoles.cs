using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Datos
{
    
    public class DaoRoles
    {
        ConexionDB conexionDB = new ConexionDB();

        public DataTable busca_por_id(long id)
        {

            String SQL = "SELECT * FROM roles WHERE id = " + id;
            DataTable resultado = conexionDB.EjecutarConulta(SQL);


            return resultado;
        }
       
            
        
        public DataTable buscar_todos()
        {
            String SQL = "SELECT * FROM roles";
            return conexionDB.EjecutarConulta(SQL);
        }

    }
}
