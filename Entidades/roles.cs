using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Roles
    {
        int id;
        string nombre;

        public Roles()
        {
        }

        public Roles(DataRow data)
        {
            id = (int)data["id"];
            nombre = (String)data["nombre_rol"];
        }

        public Roles(int id)
        {
            this.id = id;
        }

        public int getId() { return this.id; }
        public void setId(int id) { this.id = id; }
        public String getNombre() { return this.nombre; }
        public void setNombre(string nombre) { this.nombre = nombre; }

    }
}
