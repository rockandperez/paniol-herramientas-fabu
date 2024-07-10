using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    class ConexionDB
    {
        private const String rutaDB = @"Data Source=localhost\SQLEXPRESS;Initial Catalog = Taller_De_Herramientas; Integrated Security = True";

        public ConexionDB()
        {
            // Constructor Vacio
        }
        //Metodos
        private SqlConnection ObtenerConexion()
        {
            SqlConnection sqlConexion = new SqlConnection(rutaDB);
            try
            {
                sqlConexion.Open();
                return sqlConexion;
            }
            catch (Exception)
            {
                return null;
            }
        }
        private SqlDataAdapter ObtenerAdaptador(string storeProcedure)
        {
            SqlDataAdapter sqlDataAdapter;
            try
            {
                sqlDataAdapter = new SqlDataAdapter(storeProcedure, ObtenerConexion());
                return sqlDataAdapter;
            }
            catch (Exception)
            {
                return null;
            }
        }

        //para ejecutar SP, que recibe parametros y que devuelven INT (update, insert, delete)
        public int EjecutarProcedimientoAlmacenado(String storeProcedure, SqlCommand sqlCommand) //comandoSQL recibe tiene los parametros incluidos
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            sqlCommand.Connection = Conexion;
            sqlCommand.CommandType = CommandType.StoredProcedure;   
            sqlCommand.CommandText = storeProcedure;                
            FilasCambiadas = sqlCommand.ExecuteNonQuery();          
            Conexion.Close();
            return FilasCambiadas;
        }



        //para ejecutar SP sin parametros que devuelven tablas (select)
        public DataTable EjecutarProcedimientoAlmacenado(String storeProcedure)
        {
            DataTable dataTable = new DataTable();
            SqlDataAdapter sqlDataAdapter = ObtenerAdaptador(storeProcedure);
            sqlDataAdapter.Fill(dataTable);

            return dataTable;

        }

        //para querys SELECT
        public DataTable EjecutarConulta(string consulta)
        {

            DataTable dataTable = new DataTable();
            SqlDataAdapter sqlDataAdapter = ObtenerAdaptador(consulta);
            sqlDataAdapter.Fill(dataTable);
            return dataTable;

        }


        //para querys de DELETE, UPDTE E INSERT
        public int EjecutarABM(string sentenciaABM)
        {

            SqlCommand sqlCommand = new SqlCommand(sentenciaABM, ObtenerConexion());
            int resultado = sqlCommand.ExecuteNonQuery();

            return resultado;
        }

    }
}
