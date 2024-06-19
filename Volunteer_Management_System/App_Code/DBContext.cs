using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Data
{
    public class DBContext
    {
        public string ConnStr { get; set; }
        public SqlConnection Conn { get; set; }

        public DBContext()
        {
            ConnStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            Conn = new SqlConnection();
            Conn.ConnectionString = ConnStr;
            Conn.Open();
        }
        public DBContext(string ConnStr)
        {
            this.ConnStr = ConnStr;
            Conn = new SqlConnection();
            Conn.ConnectionString = ConnStr;
            Conn.Open ();
        }
        public void Close()
        {
            Conn.Close();
        }
        public int ExecuteNonQuery(string Sql)//פונקציה להכנסת נתונים או עידכון או מחיקה
        {
            int RetVal;
            SqlCommand Cmd = new SqlCommand();//הגדרת אובייקט מסוג פקודה של שאילתות
            Cmd.Connection = Conn;//הגדרת הצינור בו ישתמש אובייקט הפקודה
            Cmd.CommandText = Sql;//הגדרת השאילתה אותה ברצוננו לבצע
            RetVal = Cmd.ExecuteNonQuery();//הפונקציה משמשת לשאילתות שלא שולפות נתונים, כגון מחיקה עדכון והוספה
            Cmd.Dispose();// שחרור הזיכרון על מנת למנוע ריסוק זיכרון
            return RetVal;//מחזיר את כמות הרשומות שהושפעו מהשאילתה
        }
        public object ExecuteScalar(string Sql)
        {
            object RetVal;
            SqlCommand Cmd = new SqlCommand();//הגדרת אובייקט מסוג פקודה של שאילתות
            Cmd.Connection = Conn;//הגדרת הצינור בו ישתמש אובייקט הפקודה
            Cmd.CommandText = Sql;//הגדרת השאילתה אותה ברצוננו לבצע
            RetVal = Cmd.ExecuteScalar();//הפונקציה משמשת לשאילתות שלא שולפות נתונים, כגון מחיקה עדכון והוספה
            Cmd.Dispose();// שחרור הזיכרון על מנת למנוע ריסוק זיכרון
            return RetVal;//מחזיר אובייקט  הרשומות שהושפעו מהשאילתה
        }
        public DataTable Execute(string Sql)//פונקציה זו תשמש לשליפת הנתונים
        {
            DataTable Dt = new DataTable();//יצירת אובייקט מסוג טבלת נתונים
            SqlDataAdapter Da = new SqlDataAdapter();//יצירת אובייקט מסוג מתאם נתונים
            SqlCommand Cmd = new SqlCommand();//הגדרת אובייקט מסוג פקודה של שאילתות
            Cmd.Connection = Conn;//הגדרת הצינור בו ישתמש אובייקט הפקודה
            Cmd.CommandText = Sql;//הגדרת השאילתה אותה ברצוננו לבצע
            Da.SelectCommand = Cmd;//הגדרת תותח השאילתות אותו יתפעל המתאם
            Da.Fill(Dt);//מילוי טבלת הנתונים בתוצאות שחזרו מהפעלת השאילתה
            return Dt;//החזרת טבלת הנתונים שחזרו מהשאילתה
        }
    }
}