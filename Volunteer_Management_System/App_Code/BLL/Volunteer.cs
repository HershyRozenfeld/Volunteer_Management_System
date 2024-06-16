using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Volunteer
    {
        public int VID { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Email { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Phone { get; set; }
        public string Interests { get; set; }
        public string Availability { get; set; }
        public string City { get; set; }
        public string skills { get; set; } 
    }
}