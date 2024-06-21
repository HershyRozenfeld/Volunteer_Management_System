using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DAL
{
    public class AvailabilityDAL
    {
        public static void Save(Availability tmp)
        {

            string Sql = "";
            if (tmp.AvailabilityID == -1)
            {
                Sql = $"insert into T_Availability (UserID, numOfDay, BeginningTime, EndingTime)";
                Sql += $" values (N'{tmp.UserID}',{tmp.numOfDay},{tmp.BeginningTime},{tmp.EndingTime} ";
            }
            else
            {
                Sql += "update T_Availability set ";
                Sql += $" UserID= N'{tmp.UserID}' ";
                Sql += $" numOfDay= N'{tmp.numOfDay}' ";
                Sql += $" BeginningTime= N'{tmp.BeginningTime}' ";
                Sql += $" EndingTime= N'{tmp.EndingTime}' ";
                Sql += $" where AvailabilityID = {tmp.AvailabilityID} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if (tmp.AvailabilityID == -1)
            {
                Sql = $"select max(AvailabilityID) from T_Availability where UserID= N'{tmp.UserID}' ";
                tmp.AvailabilityID = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<Availability> GetAll()
        {
            List<Availability> LstAvailability = new List<Availability>();
            string Sql = "select * from T_Availability";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstAvailability.Add(new Availability()
                {
                    AvailabilityID = (int)DT.Rows[i]["AvailabilityID"],
                    UserID = (int)DT.Rows[i]["UserID"],
                    numOfDay = (int)DT.Rows[i]["numOfDay"],
                    BeginningTime = (DateTime)DT.Rows[i]["BeginningTime"],
                    EndingTime = (DateTime)DT.Rows[i]["EndingTime"],
                });
            }
            DB.Close();
            return LstAvailability;
        }
        public static Availability GetById(int Id)
        {
            Availability tmp = null;
            string Sql = $"select * from T_Availability where AvailabilityID = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if (DT.Rows.Count > 0)
            {
                tmp = new Availability()
                {
                    AvailabilityID = (int)DT.Rows[0]["AvailabilityID"],
                    UserID = (int)DT.Rows[0]["UserID"],
                    numOfDay = (int)DT.Rows[0]["numOfDay"],
                    BeginningTime = (DateTime)DT.Rows[0]["BeginningTime"],
                    EndingTime = (DateTime)DT.Rows[0]["EndingTime"],
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_Availability Where AvailabilityID={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}