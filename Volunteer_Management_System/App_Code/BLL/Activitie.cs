using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Activitie
    {
        public int ActivitieID { get; set; }
        public string ActivityName { get; set; }
        public string ADescription { get; set; }
        public DateTime StartDT { get; set; }
        public DateTime EndDT { get; set; }
        public string Location { get; set; }
        public string GuarantorID { get; set; }
        public int MinParticipants { get; set; }
        public int MaxParticipants { get; set; }
        public string SpecialDemands { get; set; }
        public string Category { get; set; }
    }
}