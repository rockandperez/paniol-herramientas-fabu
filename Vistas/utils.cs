using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.SessionState;
using System.Web.UI.WebControls;
using Entidades;

namespace Vistas
{
    public class utils
    {
        public void logoff(HttpSessionState session){

            session["usuario"] = null;
            session["logedon"] = false;
        }
        public static bool autorizar(HttpSessionState session, List<int> roles)
        {
            try
            {
                Usuarios usuario = (Usuarios)session["usuario"];
                if((bool)session["logedon"] == false)
                {
                    return false;
                }

                if (!roles.Contains(
                    usuario.getRol().getId()
                    )){
                    return false;
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static String cargaHeader(HttpSessionState session)
        {
            String header = "<table><tr><td><img alt=\"\"  src =\"../Login/Imagenes/Logo.png\" width=\"70px\"/></td>";

            Usuarios usuario = (Usuarios)session["usuario"];

            header = header + 
                "<td>" +
                "<table>" +
                "<tr>" +
                "<td>" +
                usuario.getNombreCompleto() + " - " + usuario.getRol().getNombre() +
                " (<a href=\"../Login/login_usuario.aspx\">Salir</a>)" +
                "</td>" +
                "</tr>" +
                "<tr>" +
                "<td>";
                
            if (usuario.getRol().getId() == 1)
            {
                header = header + cargaLinksAdmin();
            } else if(usuario.getRol().getId() == 2) {
                header = header + cargaLinksEncargado();
            }
            header = header + "</td></tr></table></td></tr></table>";
            
            return header;
        }
        private static String cargaLinksAdmin()
        {
            String links = " ";

            links = links + " <a href=\"../Administracion/usuarios.aspx\" >Usuarios</a>&nbsp;|";
            links = links + " <a href=\"../Administracion/Inventario_de_herramientas.aspx\" >Herramientas</a>&nbsp;|";
            links = links + " <a href=\"../Administracion/categorias.aspx\" >Categorias</a>&nbsp;|";
            links = links + " <a href=\"../Administracion/Pedidos_por_docente.aspx\" >Pedidos</a>&nbsp;|";
            links = links + " <a href=\"../Encargado/Alta_Retiro.aspx\" >Alta de pedido</a>&nbsp;|";
            links = links + " <a href=\"../Encargado/Inventario_de_herramientas.aspx\" >Baja de pedido</a>&nbsp;|";

            return links;
        }
        private static String cargaLinksEncargado()
        {
            String links = " ";

            links = links + " <a href=\"../Encargado/Alta_Retiro.aspx\" >Alta de pedido</a>&nbsp;|";
            links = links + " <a href=\"../Encargado/Inventario_de_herramientas.aspx\" >Baja de pedido</a>&nbsp;|";

            return links;
        }
    }
}