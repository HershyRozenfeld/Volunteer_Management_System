using BLL;
using Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DAL
{
    public class UserDAL
    {
        public static void Save(Users tmp)
        {
            
            string Sql = "";
            if (tmp.UserID == -1)
            {
                Sql = $"insert into T_User (FName, LName, Email, DateOfBirth, Phone, Category, " +
                    $"CityId, Address, Pass)";
                Sql += $"values (N'{tmp.FName}',N'{tmp.LName}',N'{tmp.Email}',{tmp.DateOfBirth}," +
                    $"N'{tmp.Phone}',N'{tmp.Category}',{tmp.CityID},N'{tmp.Address}',N'{tmp.Pass}'";  
            }
            else
            {
                Sql += "update T_User set ";
                Sql += $" FName= N'{tmp.FName}' ";
                Sql += $" LName= N'{tmp.LName}' ";
                Sql += $" Email= N'{tmp.Email}' ";
                Sql += $" DateOfBirth = {tmp.DateOfBirth}";
                Sql += $" Phone= N'{tmp.Phone}' ";
                Sql += $" Category= N'{tmp.Category}' ";
                Sql += $" CityID ={tmp.CityID} ";
                Sql += $" Address= N'{tmp.Address}' ";
                Sql += $" Pass= N'{tmp.Pass}' ";
                Sql += $" where UserID = {tmp.UserID} ";
            }
            DBContext DB = new DBContext();
            DB.ExecuteNonQuery(Sql);
            if(tmp.UserID == -1)
            {
                Sql = $"select max(UserID) from T_Users where LName= N'{tmp.LName}' ";
                tmp.UserID = (int)DB.ExecuteScalar(Sql);
                DB.Close();
            }
        }
        public static List<Users> GetAll()
        {
            List<Users> LstUser = new List<Users>();
            string Sql = "select * from T_Users";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                LstUser.Add(new Users()
                    {
                    UserID = (int)DT.Rows[i]["UserID"],
                    FName = DT.Rows[i]["FName"] + "",
                    LName = DT.Rows[i]["LName"] + "",
                    Email = DT.Rows[i]["Email"] + "",
                   DateOfBirth =(DateTime) DT.Rows[i]["DateOfBirth"],
                    Phone = DT.Rows[i]["Phone"] + "",
                    Category = DT.Rows[i]["Category"] + "",
                    CityID = (int)DT.Rows[i]["CityID"],
                    Address = DT.Rows[i]["Address"] + "",
                    Pass = DT.Rows[i]["Pass"] + ""
                });
            }
            DB.Close();
            return LstUser;
        }
        public static Users GetById(int Id)
        {
            Users tmp = null;
            string Sql = $"select * from T_Users where UserID = {Id}";
            DBContext DB = new DBContext();
            DataTable DT = DB.Execute(Sql);
            if(DT.Rows.Count > 0)
            {
                tmp = new Users()
                {
                    UserID = (int)DT.Rows[0]["UserID"],
                    FName = DT.Rows[0]["FName"] + "",
                    LName = DT.Rows[0]["LName"] + "",
                    Email = DT.Rows[0]["Email"] + "",
                    DateOfBirth = (DateTime)DT.Rows[0]["DateOfBirth"],
                    Phone = DT.Rows[0]["Phone"] + "",
                    Category = DT.Rows[0]["Category"] + "",
                    City = (int)DT.Rows[0]["City"],
                    Address = DT.Rows[0]["Address"] + "",
                    Pass = DT.Rows[0]["Pass"] + ""
                };
            }
            DB.Close();
            return tmp;
        }
        public static int DeleteById(int Id)
        {
            int RetVal = 0;
            string Sql = $"delete * from T_Users Where UserID={Id}";
            DBContext Db = new DBContext();
            RetVal = Db.ExecuteNonQuery(Sql);
            Db.Close();
            return RetVal;
        }
    }
}