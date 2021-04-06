using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public interface IGenericRepository<Entity> where Entity:class
    {
        //Esta Interfas la heredaran las clases principales, o las interfaz generica de las clases
        /// <summary>
        /// Funcion Generica para agregar
        /// </summary>
        /// <param name="entity">objeto de la base de datos</param>
        /// <returns></returns>
        int Add(Entity entity);
        /// <summary>
        /// Funcion generica para Editar
        /// </summary>
        /// <param name="entity">objeto de la base de datos</param>
        /// <returns></returns>
        int Adit(Entity entity);
        /// <summary>
        /// Funcion generica para Eliminar
        /// </summary>
        /// <param name="id">parametro principal</param>
        /// <returns></returns>
        int Remove(int id);
        /// <summary>
        /// Funcion generica para monstrar lista
        /// </summary>
        /// <returns></returns>
        IEnumerable<Entity> GetAll();
    }
}
