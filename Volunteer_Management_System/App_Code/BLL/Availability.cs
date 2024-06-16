using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Availability
    {
        public int AvailabilityID { get; set; }
        public int UserID { get; set; }
        public int numOfDay { get; set; }
        public DateTime BeginningTime { get; set; }
    }
}