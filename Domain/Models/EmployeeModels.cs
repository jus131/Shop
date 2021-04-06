﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;
using Common;
using DataAccess;

namespace Domain
{
    public class EmployeeModels
    {
        private int id;
        private string name;
        private string lastName;
        private string identity;
        private string email;
        private DateTime birthday;
        private string position;
        private string state;

        private IEmployeeRepository employeeRepository;
        public EntityState State { get; set; }

        //Metodo/Propiedades
        public int Id { get => id; set => id = value; }
        [Required]
        [RegularExpression("^[a-zA-Z ]+$", ErrorMessage = "Solo Letras")]
        public string Name { get => name; set => name = value; }
        public string LastName { get => lastName; set => lastName = value; }
        [Required]
        [RegularExpression("([0-9]+)", ErrorMessage = "Solo Números")]
        public string Identity { get => identity; set => identity = value; }
        public string Email { get => email; set => email = value; }
        public DateTime Birthday { get => birthday; set => birthday = value; }
        public string Position { get => position; set => position = value; }
        public string State1 { get => state; set => state = value; }

        public EmployeeModels()
        {
            employeeRepository = new EmployeeRepository();
        }

        public string SaveChange()
        {
            string message = null;
            try
            {
                var employeeDataModel = new Employee();
                employeeDataModel.id = id;
                employeeDataModel.name = name;
                employeeDataModel.lastName = lastName;
                employeeDataModel.identity = identity;
                employeeDataModel.email = email;
                employeeDataModel.birthday = birthday;
                employeeDataModel.position = position;
                employeeDataModel.state = state;

                switch (State)
                {
                    case EntityState.Added:
                        employeeRepository.Add(employeeDataModel);
                        message = "Successfully Record";
                        break;
                    case EntityState.Deleted:
                        employeeRepository.Remove(id);
                        message = "Successfully Remove";
                        break;
                    case EntityState.Modified:
                        employeeRepository.Adit(employeeDataModel);
                        message = "Successfully Edited";
                        break;
                    default:
                        break;
                }

            }
            catch (Exception ex)
            {
                SqlException sqlEx = ex as SqlException;
                if (sqlEx != null && sqlEx.Number == 2627)
                {
                    message = "Duplicate Record";
                }
                else
                {
                    message = ex.ToString();
                }

            }
            return message;
        }

        public List<EmployeeModels> GetAll()
        {
            var employeeDataModel = employeeRepository.GetAll();
            var listEmployee = new List<EmployeeModels>();
            foreach (Employee item in employeeDataModel)
            {
                listEmployee.Add(new EmployeeModels
                {
                    id = item.id,
                    name = item.name,
                    lastName = item.lastName,
                    identity = item.identity,
                    email = item.email,
                    birthday = item.birthday,
                    position = item.position,
                    state = item.state
                });
            }
            return listEmployee;
        }
    }
}
