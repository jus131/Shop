using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
        public abstract class MasterRepository : Repository
        {
            protected List<SqlParameter> parameters;
            protected int ExecuteNonQuery(string transactSql)
            {
                using (var connection = GetConnection())
                {
                    connection.Open();
                    using (var cmd = new SqlCommand())
                    {
                        cmd.Connection = connection;
                        cmd.CommandText = transactSql;
                        cmd.CommandType = CommandType.Text;
                        foreach (SqlParameter item in parameters)
                        {
                            cmd.Parameters.Add(item);
                        }
                        int result = cmd.ExecuteNonQuery();
                        parameters.Clear();
                        return result;
                    }
                }
            }
            protected DataTable ExecuteReader(string transactSql)
            {
                using (var connection = GetConnection())
                {
                    connection.Open();
                    using (var cmd = new SqlCommand())
                    {
                        cmd.Connection = connection;
                        cmd.CommandText = transactSql;
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            using (var table = new DataTable())
                            {
                                table.Load(reader);
                                return table;
                            }
                        }
                    }
                }
            }
        }
}
