using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{

    public class Usuarios
    {
        private long id;
        private String contrasenia;
        private Roles rol;
        private bool estado;
        private string nombre;
        private string apellido;

        public String getPass()
        {
            return contrasenia;
        }

        public Usuarios() {
            rol = null;
        }

        public Usuarios(DataRow data)
        {
            
            rol = null;
            id = (long)data["usuario"];
            contrasenia = (String)data["contrasenia"];
            estado = (bool)data["estado"];
            nombre = (String)data["nombre"];
            apellido = (String)data["apellido"];

        }

        public string getNombreCompleto()
        {
            return nombre + " " + apellido;
        }

        public bool validarPass(string pass)
        {
            if (contrasenia.CompareTo(pass)==0)
            {
                return true;
            }
            return false;
        }

        public Roles getRol()
        {
            return rol;
        }


        public void setRol(Roles rol)
        {
            this.rol = rol;
        }

        public long getId()
        {
            return id;
        }

        public void setId(long id)
        {
            this.id = id;
        }

        public bool getEstado()
        {
            return estado;
        }

        public void setEstado (bool estado)
        {
            this.estado = estado;
        }

        public string getNombre()
        {
            return nombre;
        }

        public void setNombre(String nombre)
        {
            this.nombre = nombre;
        }

        public string getApellido()
        {
            return apellido;
        }

        public void setApellido(String apellido)
        {
            this.apellido = apellido;
        }

    }
}
