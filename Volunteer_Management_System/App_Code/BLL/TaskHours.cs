using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Volunteer_Management_System.App_Code.BLL
{
    public class TaskHours
    {
        public int OperatingHoursCode { get; set; }
        public int NumOfDay { get; set; }
        public DateTime BeginningTime { get; set; }
        public int EndTime { get; set; }
    }
}