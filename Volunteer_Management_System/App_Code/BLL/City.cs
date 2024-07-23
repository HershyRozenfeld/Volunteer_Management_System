using DAL;
using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;

namespace BLL
{
    public class City
    {
        public int CityID { get; set; }
        public string Name { get; set; }
        public void Save()
        {
            CityDAL.Save(this);
        }
        public static List<City> GetAll()
        {
            return CityDAL.GetAll();
        }
        public static City GetById(int Id)
        {
            return CityDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return CityDAL.DeleteById(Id);
        }
    }
}