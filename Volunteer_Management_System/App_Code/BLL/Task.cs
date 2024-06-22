using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Task
    {
        public int TID { get; set; }
        public string TName { get; set; }
        public string TDescription { get; set; }
        public string InCharge { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime Date { get; set; }
        public DateTime BeginningTime { get; set; }
        public DateTime EndTime { get; set; }
        public int Cyclical { get; set; }
        public int Status { get; set; }
        public string Remark { get; set; }
        public string Address { get; set; }
        public void Save()
        {
            TaskDAL.Save(this);
        }
        public static List<Task> GetAll()
        {
            return TaskDAL.GetAll();
        }
        public static Task GetById(int Id)
        {
            return TaskDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return TaskDAL.DeleteById(Id);
        }
    }
}