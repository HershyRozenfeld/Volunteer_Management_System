using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Category
    {
        public int CategoryID { get; set; }
        public string CategoryName { get; set; }
        public void Save()
        {
            CategoryDAL.Save(this);
        }
        public static List<Category> GetAll()
        {
            return CategoryDAL.GetAll();
        }
        public static Category GetById(int Id)
        {
            return CategoryDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return CategoryDAL.DeleteById(Id);
        }
    }
}