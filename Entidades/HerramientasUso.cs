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
        private int id_profesor;
        private DateTime fecha;
        private DateTime hora_retiro ;
        private DateTime hora_devolucion;
         
        public HerramientasUso ()
        {

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

        public void setId_profesor(int id_profesor)
        {
            this.id_profesor = id_profesor;
        }

        public void setFecha(DateTime fecha)
        {         
            this.fecha = fecha.Date;
        }
            
        public void setHora_retiro(DateTime hora_retiro)
        {
            this.hora_retiro = hora_retiro.ToLocalTime();
        }

        public void setHora_devolucion(DateTime hora_dev)
        {
            this.hora_devolucion = hora_dev.ToLocalTime();
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
            return fecha.Date.ToShortDateString();
        }

        public string getHora_retiro()
        {
            return hora_retiro.TimeOfDay.ToString();
        }

        public string getHora_devolucion()
        {
            return hora_devolucion.TimeOfDay.ToString();
        }
    }
}
