using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DAL
{
    public class ActivitieDAL
    {
        public static void Save(Activitie tmp)
        {

            string Sql = "";
            if (tmp.ActivitieID == -1)
            {
                Sql = $"insert into T_Activitie (ActivityName, ADescription, City, GuarantorID, MinParticipants, MaxParticipants, SpecialDemands, Category)";
                Sql += $" values (N'{tmp.ActivityName}',N'{tmp.ADescription}',{tmp.City},{tmp.GuarantorID},{tmp.MinParticipants},{tmp.MaxParticipants},N'{tmp.SpecialDemands}',{tmp.Category} ";
            }
            else
            {
                Sql += "update T_Activitie set ";
                Sql += $" ActivityName= N'{tmp.ActivityName}' ";
                Sql += $" ADescription= '{tmp.ADescription}' ";
                Sql += $" City= {tmp.City} ";
                Sql += $" GuarantorID= {tmp.GuarantorID} ";
                Sql += $" MinParticipants= {tmp.MinParticipants} ";
                Sql += $" MaxParticipants= {tmp.MaxParticipants} ";
                Sql += $" SpecialDemands= N'{tmp.SpecialDemands}' ";
                Sql += $" Category= {tmp.Category} ";
                Sql += $" where ActivitieID = {tmp.ActivitieID} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if (tmp.ActivitieID == -1)
            {
                Sql = $"select max(ActivitieID) from T_Activitie where ActivityName= N'{tmp.ActivityName}' ";
                tmp.ActivitieID = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<Activitie> GetAll()
        {
            List<Activitie> LstActivitie = new List<Activitie>();
            string Sql = "select * from T_Activitie";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstActivitie.Add(new Activitie()
                {
                    ActivitieID = (int)DT.Rows[i]["ActivitieID"],
                    ActivityName = DT.Rows[i]["ActivityName"]+"",
                    ADescription = DT.Rows[i]["ADescription"] + "",
                    City = (int)DT.Rows[i]["City"],
                    GuarantorID = (int)DT.Rows[i]["GuarantorID"],
                    MinParticipants = (int)DT.Rows[i]["MinParticipants"],
                    MaxParticipants = (int)DT.Rows[i]["MaxParticipants"],
                    SpecialDemands = DT.Rows[i]["SpecialDemands"] + "",
                    Category = (int)DT.Rows[i]["Category"]
                });
            }
            DB.Close();
            return LstActivitie;
        }
        public static Activitie GetById(int Id)
        {
            Activitie tmp = null;
            string Sql = $"select * from T_Activitie where ActivitieID = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if (DT.Rows.Count > 0)
            {
                tmp = new Activitie()
                {
                    ActivitieID = (int)DT.Rows[0]["ActivitieID"],
                    ActivityName = DT.Rows[0]["ActivityName"] + "",
                    ADescription = DT.Rows[0]["ADescription"] + "",
                    City = (int)DT.Rows[0]["City"],
                    GuarantorID = (int)DT.Rows[0]["GuarantorID"],
                    MinParticipants = (int)DT.Rows[0]["MinParticipants"],
                    MaxParticipants = (int)DT.Rows[0]["MaxParticipants"],
                    SpecialDemands = DT.Rows[0]["SpecialDemands"] + "",
                    Category = (int)DT.Rows[0]["Category"]
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_Activitie Where ActivitieID={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}