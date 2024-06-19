using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DAL
{
    public class TaskHoursDAL
    {
        public static void Save(TaskHours tmp)
        {

            string Sql = "";
            if (tmp.OperatingHoursCode == -1)
            {
                Sql = $"insert into T_TaskHours (NumOfDay, BeginningTime, EndTime)";
                Sql += $" values (N'{tmp.NumOfDay}',{tmp.BeginningTime},{tmp.EndTime} ";
            }
            else
            {
                Sql += "update T_TaskHours set ";
                Sql += $" NumOfDay= N'{tmp.NumOfDay}' ";
                Sql += $" BeginningTime= {tmp.BeginningTime} ";
                Sql += $" EndTime= {tmp.EndTime} ";
                Sql += $" where OperatingHoursCode = {tmp.OperatingHoursCode} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if (tmp.OperatingHoursCode == -1)
            {
                Sql = $"select max(OperatingHoursCode) from T_TaskHours where NumOfDay= N'{tmp.NumOfDay}' ";
                tmp.OperatingHoursCode = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<TaskHours> GetAll()
        {
            List<TaskHours> LstTH = new List<TaskHours>();
            string Sql = "select * from T_TaskHours";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstTH.Add(new TaskHours()
                {
                    OperatingHoursCode = (int)DT.Rows[i]["OperatingHoursCode"],
                    NumOfDay = (int)DT.Rows[i]["NumOfDay"],
                    BeginningTime = (DateTime)DT.Rows[i]["BeginningTime"] ,
                    EndTime = (DateTime)DT.Rows[i]["EndTime"]
                });
            }
            DB.Close();
            return LstTH;
        }
        public static TaskHours GetById(int Id)
        {
            TaskHours tmp = null;
            string Sql = $"select * from T_TaskHours where OperatingHoursCode = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if (DT.Rows.Count > 0)
            {
                tmp = new TaskHours()
                {
                    OperatingHoursCode = (int)DT.Rows[0]["OperatingHoursCode"],
                    NumOfDay = (int)DT.Rows[0]["NumOfDay"],
                    BeginningTime = (DateTime)DT.Rows[0]["BeginningTime"],
                    EndTime = (DateTime)DT.Rows[0]["EndTime"]
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_TaskHours Where OperatingHoursCode={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}