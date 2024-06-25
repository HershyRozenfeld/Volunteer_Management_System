using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Availability
    {
        public int AvailabilityID { get; set; }
        public int UserID { get; set; }
        public int numOfDay { get; set; }
        public DateTime BeginningTime { get; set; }
        public DateTime EndingTime { get; set; }
        public int OneTime { get; set; }
        public void Save()
        {
            AvailabilityDAL.Save(this);
        }
        public static List<Availability> GetAll()
        {
            return AvailabilityDAL.GetAll();
        }
        public static Availability GetById(int Id)
        {
            return AvailabilityDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return AvailabilityDAL.DeleteById(Id);
        }
    }
}