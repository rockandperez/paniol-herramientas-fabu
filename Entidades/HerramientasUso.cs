using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Entidades
{
    public class HerramientasUso
    {
        private int id;
        private int id_herramienta;
        private int cantidad_retirada;
        private int cantidad_devueltas_rotas;
        private long id_profesor;
        private string fecha;
        private string hora_retiro ;
        private string hora_devolucion;
         
        public HerramientasUso ()
        {

        }

        public HerramientasUso(DataRow data)
        {
            id = (int)data["id"];
            id_herramienta = (int)data["id_herramienta"];
            cantidad_retirada = (int)data["cantidad_retirada"];
            cantidad_devueltas_rotas = (int)data["cantidad_devueltas_rotas"];
            id_profesor = (long)data["id_profesor"];
            fecha = (String)data["fecha"];
            hora_retiro = (String)data["hora_retiro"];
            hora_devolucion = (String)data["hora_devolucion"];
        }

        //Setters
        public void setId(int id)
        {
            this.id = id;
        }

        public void setId_herramienta(int id_herramienta)
        {
            this.id_herramienta = id_herramienta;
        }

        public void setCantidad_retirada(int cant_ret)
        {
            this.cantidad_retirada = cant_ret;
        }

        public void setCantidad_devueltas_rotas(int cant_ret_rotas)
        {
            this.cantidad_devueltas_rotas = cant_ret_rotas;
        }

        public void setId_profesor(long id_profesor)
        {
            this.id_profesor = id_profesor;
        }

        public void setFecha(string fecha)
        {         
            this.fecha = fecha;
        }
            
        public void setHora_retiro(string hora_retiro)
        {
            this.hora_retiro = hora_retiro;
        }

        public void setHora_devolucion(string hora_dev)
        {
            this.hora_devolucion = hora_dev;
        }

        //Getters

        public int getId()
        {
            return id;
        }

        public int getId_herramienta()
        {
            return id_herramienta;
        }
        
        public int getCantidad_retiradas()
        {
            return cantidad_retirada;
        }

        public int getCantidad_devueltas_rotas()
        {
            return cantidad_devueltas_rotas;
        }

        public long getId_profesor()
        {
            return id_profesor;
        }

        public string getFecha()
        {
            return fecha;
        }

        public string getHora_retiro()
        {
            return hora_retiro;
        }

        public string getHora_devolucion()
        {
            return hora_devolucion;
        }
    }
}
