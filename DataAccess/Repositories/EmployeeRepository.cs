using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Common;

namespace DataAccess
{
    public class EmployeeRepository : MasterRepository, IEmployeeRepository
    {
        private string selectAll;
        private string insert;
        private string update;
        private string delete;

        public EmployeeRepository()
        {
            //Query para seleccionar de la tabla employee
            selectAll = @"select e.ID,e.Name,e.LastName,e.[Identity],e.Email,e.BirthDay,p.CodeName,s.CodeName 
                            from _Employee e
                            join _Position p on e.PositionID = p.ID
                            join _State s on e.StateID = s.ID";
            //Query para Insertar en la tabla employee
            insert = "insert into _Employee(Name,LastName,[Identity],Email,BirthDay,PositionID,StateID) values(@name,@lastname,@identity,@email,@birthday,@position,@state)";
            //query para updatear un resultado de la tabla employee
            update = "update _Employee set Name=@name,LastName=lastname,[Identity]=@identity,Email=@email,BirthDay=@birthday,PositionID=@position,StateID=@state where ID=@id";
            //query para eliminar un resultado de la tabla employee
            delete = "delete _Employee where ID=@id";
        }
        public int Add(Employee entity)
        {
            parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@name", entity.name));
            parameters.Add(new SqlParameter("@lastname", entity.lastName));
            parameters.Add(new SqlParameter("@identity", entity.identity));
            parameters.Add(new SqlParameter("@email", entity.email));
            parameters.Add(new SqlParameter("@birthday", entity.birthday));
            parameters.Add(new SqlParameter("@position", entity.position));
            parameters.Add(new SqlParameter("@state", entity.state));
            return ExecuteNonQuery(insert);
        }

        public int Adit(Employee entity)
        {
            parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@id", entity.id));
            parameters.Add(new SqlParameter("@name", entity.name));
            parameters.Add(new SqlParameter("@lastname", entity.lastName));
            parameters.Add(new SqlParameter("@identity", entity.identity));
            parameters.Add(new SqlParameter("@email", entity.email));
            parameters.Add(new SqlParameter("@birthday", entity.birthday));
            parameters.Add(new SqlParameter("@position", entity.position));
            parameters.Add(new SqlParameter("@state", entity.state));
            return ExecuteNonQuery(update);
        }

        public IEnumerable<Employee> GetAll()
        {
            var tableResult = ExecuteReader(selectAll);
            var listEmployee = new List<Employee>();
            foreach (DataRow item in tableResult.Rows)
            {
                listEmployee.Add(new Employee
                {
                    id = Convert.ToInt32(item[0]),
                    name = item[1].ToString(),
                    lastName = item[2].ToString(),
                    identity = item[3].ToString(),
                    email = item[4].ToString(),
                    birthday = Convert.ToDateTime(item[5]),
                    position = item[6].ToString(),
                    state = item[7].ToString()
                }) ;
            }
            return listEmployee;
        }

        public int Remove(int id)
        {
            parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@id", id));
            return ExecuteNonQuery(delete);
        }
    }
}
