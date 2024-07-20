using BLL;
using Newtonsoft.Json;
using RestSharp;
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
            //if (!IsPostBack)
            //{
            //    string Search = TxtCity.Text;
            //    string EndPoint = "https://data.gov.il/api/3/action/datastore_search";

            //    //יצירת אובייקט של שליחת בקשות
            //    var client = new RestClient(EndPoint);
            //    //יצירת אובייקט מסוג בקשה
            //    var request = new RestRequest();
            //    //הוספת פרמטרים לבקשה
            //    request.AddParameter("resource_id", "5c78e9fa-c2e2-4771-93ff-7f400a12f7ba");
            //    request.AddParameter("q", Search);
            //    var res = client.Get(request);
            //    var x = res.Content.ToLower();
            //    var obj = JsonConvert.DeserializeObject<dynamic>(x);
            //    //var records = obj.result.records;
            //    //rptCity.DataSource = records;
            //    //rptCity.DataBind();
            //}
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            string msg = "";
            if (TxtFName.Text.Length < 2)
            {
                msg += "<br/>שם פרטי אינו תקין!";
            }
            if (TxtLName.Text.Length < 2)
            {
                msg += "<br/>שם משפחה אינו תקין!";
            }
            if (TxtEmail.Text.Length < 6)
            {
                msg += "<br/>כתובת אימייל אינה תקינה!";
            }
            if (TxtBirth.Text.Length < 8)
            {
                msg += "תאריך לידה אינו תקין!<br/>";
            }
            if (TxtPhone.Text.Length < 10)
            {
                msg += "מספר הטלפון אינו תקין!<br/>";
            }
            if (msg != "")
            {
            }
            //try
            //{
            Users newUser = new Users
            {
                UserID = -1,
                FName = TxtFName.Text,
                LName = TxtLName.Text,
                Email = TxtEmail.Text,
                DateOfBirth = DateTime.Parse(TxtBirth.Text),
                Phone = TxtPhone.Text,
                //CityID = int.Parse(DDLCity.SelectedValue),
                Address = TxtStreet.Text,
                Pass = TxtPass.Text,
                Skills = TxtSkill.Text
            };
            


            newUser.Save();
                LtMsg.Text = "הרשמה בוצעה בהצלחה!";
            //}
            //catch (Exception ex)
            //{
            //    LtMsg.Text = "שגיאה בהרשמה: " + ex.Message;
            //}
        }
    }
}