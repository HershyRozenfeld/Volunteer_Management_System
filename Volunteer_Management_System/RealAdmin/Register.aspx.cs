using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Volunteer_Management_System.RealAdmin
{
    public partial class Register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var LsCity = (List<City>)Application["City"];
                if (LsCity != null && LsCity.Count > 0)
                {
                    for (int i = 0; i < LsCity.Count; i++)
                    {
                        DDLCity.Items.Add(new ListItem(LsCity[i].Name, LsCity[i].CityID + ""));
                        DDLCity.Text = LsCity[i].Name;
                    }
                    DDLCity.Items.Insert(0, "בחר עיר");
                }
            }       
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            string msg = "";
            if(TxtFName.Text.Length < 2)
            {
                msg += "שם פרטי אינו תקין!<br/>";
            }
            if(TxtLName.Text.Length < 2)
            {
                msg += "<br/>שם משפחה אינו תקין!";
            }
            if(TxtEmail.Text.Length < 6)
            {
                msg += "<br/>כתובת אימייל אינה תקינה!";
            }
            if(TxtBirth.Text.Length < 8)
            {
                msg += "תאריך לידה אינו תקין!<br/>";
            }
            if(TxtPhone.Text.Length < 10)
            {
                msg += "מספר הטלפון אינו תקין!<br/>";
            }
            if(msg!= "")
            {
                LtMsg.Text = msg;
            }
            else
            {
                LtMsg.Text = "נרשמת בהצלחה";
            }
        }
    }
}