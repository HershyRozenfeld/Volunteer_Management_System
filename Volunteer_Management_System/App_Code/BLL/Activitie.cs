using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Activitie
    {
        public int ActivitieID { get; set; }//
        public string ActivityName { get; set; }
        public string ADescription { get; set; }
        public int City { get; set; }
        public int GuarantorID { get; set; }
        public int MinParticipants { get; set; }
        public int MaxParticipants { get; set; }
        public string SpecialDemands { get; set; }
        public int Category { get; set; }
        public void Save()
        {
            ActivitieDAL.Save(this);
        }
        public static List<Activitie> GetAll()
        {
            return ActivitieDAL.GetAll();
        }
        public static Activitie GetById(int Id)
        {
            return ActivitieDAL.GetById(Id);
        }
        public static int DeleteById(int Id)
        {
            return ActivitieDAL.DeleteById(Id);
        }
    }
}