using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidades;

namespace Neogcio
{
    public class NegUsuarios
    {
        DaoUsuarios daoUsuarios = new DaoUsuarios();
        

        public DataTable buscar_todos()
        {
            return daoUsuarios.buscar_todos();
        }

        public DataTable buscar_filtro(string estado, string rol, string nombre)
        {
            return daoUsuarios.buscar_filtro(estado, rol, nombre);
        }

        public bool actualizar(Usuarios usuario)
        {

            if (daoUsuarios.actualizar(usuario) == 0)
            {
                return false;
            }

            return true;
        }

        public Usuarios busca_por_id(long id)
        {
            //Busco el usuario
            DataTable datosUsuario = daoUsuarios.busca_por_id(id);
            if(datosUsuario.Rows.Count == 0) // si no existe, devuelvo uno vacio
            {
                return new Usuarios();
            }

            //si exite, busco el rol
            DaoRoles daoRoles = new DaoRoles();
            DataTable datosRol = daoRoles.busca_por_id(
                    (int)datosUsuario.Rows[0]["rol"]
                );

            Roles rol = new Roles(datosRol.Rows[0]);

            //cargo el ususario en la entidad, y cargo los datos del rol
            Usuarios usuario = new Usuarios(datosUsuario.Rows[0]);
            usuario.setRol(rol);

            return usuario;
        }

        public DataTable obtenerProfesores()
        {
            return null;
        }

        public bool cambiaPass(string pass, long id)
        {

            
            if (daoUsuarios.cambiaPass(pass, id) == 0)
            {
                return false;
            }

            return true;
            
        }

        public NegUsuarios  ()
        {
            
        }

    }
}
