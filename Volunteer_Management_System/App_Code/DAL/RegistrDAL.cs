using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DAL
{
    public class RegistrDAL
    {
        public static void Save(Registr tmp)
        {

            string Sql = "";
            if (tmp.RegistrID == -1)
            {
                Sql = $"insert into T_Registr (UserID, ActivitieID ,Status)";
                Sql += $" values ({tmp.UserID},{tmp.ActivitieID},{tmp.Status}";
            }
            else
            {
                Sql += "update T_Registr set ";
                Sql += $" UserID= {tmp.UserID} ";
                Sql += $" ActivitieID= {tmp.ActivitieID} ";
               
                Sql += $" Status= {tmp.Status}";
                Sql += $" where RegistrID = {tmp.RegistrID} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if (tmp.RegistrID == -1)
            {
                Sql = $"select max(RegistrID) from T_Registr where UserID= {tmp.UserID} ";
                tmp.RegistrID = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<Registr> GetAll()
        {
            List<Registr> LstRegis = new List<Registr>();
            string Sql = "select * from T_Registr";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstRegis.Add(new Registr()
                {
                    RegistrID = (int)DT.Rows[i]["RegistrID"],
                    UserID = (int)DT.Rows[i]["UserID"],
                    ActivitieID = (int)DT.Rows[i]["ActivitieID"],
                    RegistrData = (DateTime)DT.Rows[i]["RegistrData"],
                    Status = (int)DT.Rows[i]["Status"]
                });
            }
            DB.Close();
            return LstRegis;
        }
        public static Registr GetById(int Id)
        {
            Registr tmp = null;
            string Sql = $"select * from T_Registr where RegistrID = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if (DT.Rows.Count > 0)
            {
                tmp = new Registr()
                {
                    RegistrID = (int)DT.Rows[0]["RegistrID"],
                    UserID = (int)DT.Rows[0]["UserID"],
                    ActivitieID = (int)DT.Rows[0]["ActivitieID"],
                    RegistrData = (DateTime)DT.Rows[0]["RegistrData"],
                    Status = (int)DT.Rows[0]["Status"]
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_Registr Where RegistrID={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}