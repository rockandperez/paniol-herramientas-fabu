using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Entidades
{
    public class HerramientasCategoria
    {
        private int id;
        private string categoria;
        
        public HerramientasCategoria()
        {

        }

        public HerramientasCategoria(DataRow data)
        {
            id = (int)data["id"];
            categoria = (String)data["categoria"]; 
        }

        public void setId(int id)
        {
            this.id = id;
        }

        public void setCategoria(string categoria)
        {
            this.categoria = categoria;
        }

        public int getId()
        {
            return id;
        }

        public string getCategoria()
        {
            return categoria;
        }
    }
}
