using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class TaskHours
    {
        public int OperatingHoursCode { get; set; }
        public int NumOfDay { get; set; }
        public DateTime BeginningTime { get; set; }
        public DateTime EndTime { get; set; }

        public void Save()
        {
            TaskHoursDAL.Save(this);
        }
        public static List<TaskHours> GetAll()
        {
            return TaskHoursDAL.GetAll();
        }
        public static TaskHours GetById(int Id)
        {
            return TaskHoursDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return TaskHoursDAL.DeleteById(Id);
        }
    }
}