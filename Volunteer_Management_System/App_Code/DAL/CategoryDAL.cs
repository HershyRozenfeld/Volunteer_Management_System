using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DAL
{
    public class CategoryDAL
    {
        public static void Save(Category tmp)
        {

            string Sql = "";
            if (tmp.CategoryID == -1)
            {
                Sql = $"insert into T_Category (CategoryName)";
                Sql += $" values (N'{tmp.CategoryName}'";
            }
            else
            {
                Sql += "update T_Category set ";
                Sql += $" CategoryName= N'{tmp.CategoryName}' ";
                Sql += $" where CategoryID = {tmp.CategoryID} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if (tmp.CategoryID == -1)
            {
                Sql = $"select max(CategoryID) from T_Category where CategoryName= N'{tmp.CategoryName}' ";
                tmp.CategoryID = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<Category> GetAll()
        {
            List<Category> LstCategory = new List<Category>();
            string Sql = "select * from T_Category";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstCategory.Add(new Category()
                {
                    CategoryID = (int)DT.Rows[i]["CategoryID"],
                    CategoryName = DT.Rows[i]["CategoryName"] + ""
                });
            }
            DB.Close();
            return LstCategory;
        }
        public static Category GetById(int Id)
        {
            Category tmp = null;
            string Sql = $"select * from T_Category where CategoryID = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if (DT.Rows.Count > 0)
            {
                tmp = new Category()
                {
                    CategoryID = (int)DT.Rows[0]["CategoryID"],
                    CategoryName = DT.Rows[0]["CategoryName"] + ""
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_Category Where CategoryID={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}