using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Entidades
{
    public class Herramientas
    {
        private int id;
        private int id_categoria_herramienta;
        private string nombre;
        private int stock;
        private int disponible;
        private int en_reparacion;

        public Herramientas()
        {

        }

        public Herramientas(DataRow data)
        {
            id = (int)data["id"];
            id_categoria_herramienta = (int)data["id_categoria_herramienta"];
            nombre = (String)data["nombre"];
            stock = (int)data["stock"];
            disponible = (int)data["disponible"];
            en_reparacion = (int)data["en_reparacion"];
        }

        public int getid()
        {
            return id;
        }

        public int getid_categoria_herramienta()
        {
            return id_categoria_herramienta;
        }

        public string getnombre()
        {
            return nombre;
        }

        public int getstock()
        {
            return stock;
        }

        public int getdisponible()
        {
            return disponible;
        }

        public int geten_reparacion()
        {
            return en_reparacion;
        }

        public void setid(int id)
        {
            this.id = id;
        }

        public void setid_categoria_herramienta(int id_categoria_herramienta)
        {
            this.id_categoria_herramienta = id_categoria_herramienta;
        }

        public void setnombre(string nombre)
        {
            this.nombre = nombre;
        }

        public void setstock(int stock)
        {
            this.stock = stock;
        }        

        public void setdisponible(int disponible)
        {
            this.disponible = disponible;
        }

        public void seten_reparacion(int en_reparacion)
        {
            this.en_reparacion = en_reparacion;
        }
    }
}