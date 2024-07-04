using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Volunteer_Management_System.RealAdmin
{
    public partial class UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillData();
            }
            
        }
        public void FillData()
        {
            RptUser.DataSource = Users.GetAll();
            RptUser.DataBind();//משכפל את הקוד ברפיטר כמספר הרשומות שחזרו מהשורה הקודמת
            
        }
    }
}