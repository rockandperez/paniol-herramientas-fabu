using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Neogcio
{
    public class NegRoles
    {
        
        public DataTable buscar_todos()
        {
            DaoRoles daoRoles = new DaoRoles();
            return daoRoles.buscar_todos();
        }
       




    }
}
