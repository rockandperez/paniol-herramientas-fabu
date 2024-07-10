using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;


namespace Datos
{
    public class daoHerramientas
    {
        ConexionDB conexion = new ConexionDB();

        public DataTable buscar_todos()
        {
            string SQL = "SELECT * FROM listar_herramientas";
            return conexion.EjecutarConulta(SQL);
        }
    
        public int actualizar(Herramientas herramienta)
        {
            SqlCommand comando = new SqlCommand();
            comando.Parameters.AddWithValue("@ID_HERRAMIENTA", herramienta.getid());
            comando.Parameters.AddWithValue("@NOMBRE", herramienta.getnombre());
            comando.Parameters.AddWithValue("@ID_CATEGORIA", herramienta.getid_categoria_herramienta());

            return conexion.EjecutarProcedimientoAlmacenado("modif_herramienta_y_categoria", comando);
        }
        public int aumentarStock(Herramientas herramienta, int stockAmodificar)
        {
            SqlCommand comando = new SqlCommand();
            comando.Parameters.AddWithValue("@ID_HERRAMIENTA", herramienta.getid());
            comando.Parameters.AddWithValue("@AUMENTA", stockAmodificar);

            return conexion.EjecutarProcedimientoAlmacenado("aumentar_stock_herramientas", comando);
        }
        public int disminuirStock(Herramientas herramienta, int stockAmodificar)
        {
            SqlCommand comando = new SqlCommand();
            comando.Parameters.AddWithValue("@ID_HERRAMIENTA", herramienta.getid());
            comando.Parameters.AddWithValue("@DISMINUYE", stockAmodificar);

            return conexion.EjecutarProcedimientoAlmacenado("disminuir_stock_herramientas", comando);
        }

    }
}