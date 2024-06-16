using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Registr
    {
        public int RegistrID { get; set; }
        public int UserID { get; set; }
        public int ActivitieID { get; set; }
        public DateTime RegistrData { get; set; }
        public int Status { get; set; }
    }
}