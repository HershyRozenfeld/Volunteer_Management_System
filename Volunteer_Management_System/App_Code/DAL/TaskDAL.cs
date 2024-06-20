using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DAL
{
    public class TaskDAL
    {
        public static void Save(Task tmp)
        {

            string Sql = "";
            if (tmp.TID == -1)
            {
                Sql = $"insert into T_Task (TName, TDescription, InCharge,Email,Phone,Date,BeginningTime,EndTime,Cyclical,Status,Remark,Address)";
                Sql += $" values (N'{tmp.TName}',N'{tmp.TDescription}',N'{tmp.InCharge}',N'{tmp.Email}',N'{tmp.Phone}'," +
                    $"{tmp.Date},{tmp.BeginningTime},{tmp.EndTime},{tmp.Cyclical},{tmp.Status},N'{tmp.Remark}',N'{tmp.Address}'";
            }
            else
            {
                Sql += "update T_Task set ";
                Sql += $" TName= N'{tmp.TName}' ";
                Sql += $" TDescription= N'{tmp.TDescription}' ";
                Sql += $" InCharge= N'{tmp.InCharge}' ";
                Sql += $" Email= N'{tmp.Email}'";
                Sql += $" Phone= N'{tmp.Phone}'";
                Sql += $" Date= {tmp.Date}";
                Sql += $" BeginningTime= {tmp.BeginningTime}";
                Sql += $" EndTime= {tmp.EndTime}";
                Sql += $" Cyclical= {tmp.Cyclical}";
                Sql += $" Status= {tmp.Status}";
                Sql += $" Remark= N'{tmp.Remark}'";
                Sql += $" Address= N'{tmp.Address}'";
                Sql += $" where TID = {tmp.TID} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if (tmp.TID == -1)
            {
                Sql = $"select max(TID) from T_Task where TName= N'{tmp.TName}' ";
                tmp.TID = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<Task> GetAll()
        {
            List<Task> LstTask= new List<Task>();
            string Sql = "select * from T_Task";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstTask.Add(new Task()
                {
                    TID = (int)DT.Rows[i]["TID"],
                    TName = DT.Rows[i]["TName"] +"",
                    TDescription = DT.Rows[i]["TDescription"] + "",
                    InCharge = DT.Rows[i]["InCharge"] + "",
                    Email = DT.Rows[i]["Email"] + "",
                    Phone = DT.Rows[i]["Phone"] + "",
                    BeginningTime = (DateTime)DT.Rows[i]["BeginningTime"],
                    EndTime = (DateTime)DT.Rows[i]["EndTime"],
                    Cyclical = (int)DT.Rows[i]["Cyclical"],
                    Status = (int)DT.Rows[i]["Status"],
                    Remark = DT.Rows[i]["Remark"] + "",
                    Address = DT.Rows[i]["Address"] + ""
                });
            }
            DB.Close();
            return LstTask;
        }
        public static Task GetById(int Id)
        {
            Task tmp = null;
            string Sql = $"select * from T_Task where TID = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if (DT.Rows.Count > 0)
            {
                tmp = new Task()
                {
                    TID = (int)DT.Rows[0]["TID"],
                    TName = DT.Rows[0]["TName"] + "",
                    TDescription = DT.Rows[0]["TDescription"] + "",
                    InCharge = DT.Rows[0]["InCharge"] + "",
                    Email = DT.Rows[0]["Email"] + "",
                    Phone = DT.Rows[0]["Phone"] + "",
                    BeginningTime = (DateTime)DT.Rows[0]["BeginningTime"],
                    EndTime = (DateTime)DT.Rows[0]["EndTime"],
                    Cyclical = (int)DT.Rows[0]["Cyclical"],
                    Status = (int)DT.Rows[0]["Status"],
                    Remark = DT.Rows[0]["Remark"] + "",
                    Address = DT.Rows[0]["Address"] + ""
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_Task Where TID={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}