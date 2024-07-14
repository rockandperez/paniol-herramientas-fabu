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
    public class DaoUsuarios
    {
        ConexionDB conexionDB = new ConexionDB();

        public DataTable buscar_filtro(string estado, string rol, string nombre)
        {
            //string SQL = "SELECT * FROM usuarios "+
            string SQL = "SELECT * FROM lista_usuarios " +
                        "WHERE " +
                        "estado = " + estado + " and " +
                        "rol_id = " + rol + " and " +
                        "(nombre + ' ' + apellido) like '%" + nombre + "%'";



            return conexionDB.EjecutarConulta(SQL);

        }

        public DataTable busca_por_id(long usuario_id)
        {
            
            String SQL = "SELECT * FROM usuarios WHERE usuario = " + usuario_id;
            DataTable resultado = conexionDB.EjecutarConulta(SQL);

            return resultado;
        }
       

        public DataTable buscar_todos()
        {
            //string SQL = "SELECT * FROM usuarios ";
            String SQL = "SELECT * FROM lista_usuarios";
            return conexionDB.EjecutarConulta(SQL);
        }
       

        public int actualizar(Usuarios usuario)
        {
            SqlCommand sqlCommand = new SqlCommand();

            sqlCommand.Parameters.AddWithValue("@ID", usuario.getId());
            sqlCommand.Parameters.AddWithValue("@nombre", usuario.getNombre());
            sqlCommand.Parameters.AddWithValue("@apellido", usuario.getApellido());
            sqlCommand.Parameters.AddWithValue("@rol", usuario.getRol().getId());
            sqlCommand.Parameters.AddWithValue("@estado", usuario.getEstado());

            return conexionDB.EjecutarProcedimientoAlmacenado("actualizar_usuario", sqlCommand);
        }
        

        public int cambiaPass(string pass, long id)
        {
            string sql = "UPDATE usuarios " +
              "set contrasenia = '" + pass + "' " +
              "where usuario = " + id;


             return conexionDB.EjecutarABM(sql);
         }

        public DataTable buscar_profesores()
        {
            string sql = "select * from listar_profesores";

            return conexionDB.EjecutarConulta(sql);
        }


    }
}
