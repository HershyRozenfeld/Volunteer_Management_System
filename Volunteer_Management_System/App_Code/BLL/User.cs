﻿using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class User
    {
        public int UserID { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Email { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Phone { get; set; }
        public string Category { get; set; }
        public int CityID { get; set; }
        public string Address { get; set; }
        public string Pass { get; set; }
        public string Skills { get; set; }

        public void Save()
        {
            UserDAL.Save(this);
        }
        public static List<User> GetAll()
        {
            return UserDAL.GetAll();
        }
        public static User GetById(int Id)
        {
            return UserDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return UserDAL.DeleteById(Id);
        }
    }
}