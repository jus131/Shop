using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public enum EntityState
    {
        //comprobar las funciones basicas de la consulta
        /// <summary>
        /// Agregar
        /// </summary>
        Added,
        /// <summary>
        /// Eliminar
        /// </summary>
        Deleted,
        /// <summary>
        /// Modificar
        /// </summary>
        Modified
    }
}
