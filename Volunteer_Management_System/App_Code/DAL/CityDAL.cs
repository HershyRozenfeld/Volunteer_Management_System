using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Data;
//using System.Linq;
using System.Web;

namespace DAL
{
    public class CityDAL
    {
        public static void Save(City tmp)
        {

            string Sql = "";
            if (tmp.CityID == -1)
            {
                Sql = $"insert into T_City (Name)";
                Sql += $" values (N'{tmp.Name}'";
            }
            else
            {
                Sql += "update T_City set ";
                Sql += $" Name= N'{tmp.Name}' ";
                Sql += $" where CityID = {tmp.CityID} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if (tmp.CityID == -1)
            {
                Sql = $"select max(CityID) from T_City where Name= N'{tmp.Name}' ";
                tmp.CityID = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<City> GetAll()
        {
            List<City> LstCity = new List<City>();
            string Sql = "select * from T_City";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstCity.Add(new City()
                {
                    CityID = (int)DT.Rows[i]["CityID"],
                    Name = DT.Rows[i]["Name"]+ ""
                });
            }
            DB.Close();
            return LstCity;
        }
        public static City GetById(int Id)
        {
            City tmp = null;
            string Sql = $"select * from T_City where CityID = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if (DT.Rows.Count > 0)
            {
                tmp = new City()
                {
                    CityID = (int)DT.Rows[0]["CityID"],
                    Name = DT.Rows[0]["Name"] + ""
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_City Where CityID={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}