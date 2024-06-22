using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Registr
    {
        public int RegistrID { get; set; }
        public int UserID { get; set; }
        public int ActivitieID { get; set; }
        public DateTime RegistrData { get; set; }
        public int Status { get; set; }
        public void Save()
        {
            RegistrDAL.Save(this);
        }
        public static List<Registr> GetAll()
        {
            return RegistrDAL.GetAll();
        }
        public static Registr GetById(int Id)
        {
            return RegistrDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return RegistrDAL.DeleteById(Id);
        }
    }
}