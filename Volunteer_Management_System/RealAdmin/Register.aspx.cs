﻿using BLL;
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
            if(TxtFName.Text.Length < 1)
            {
                msg += "<br/>עליך להזין שם פרטי";
            }
            if(TxtLName.Text.Length < 1)
            {
                msg += "<br/>עליך להזין שם משפחה";
            }
            if(TxtEmail.Text.Length < 6)
            {
                msg += "<br/>עליך להזין כתובת אימייל";
            }
            if(TxtBirth.Text.Length < 8)
            {
                msg += "עליך להזין תאריך לידה<br/>";
            }
            if(TxtPhone.Text.Length < 10)
            {
                msg += "עליך להזין מספר טלפון<br/>";
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