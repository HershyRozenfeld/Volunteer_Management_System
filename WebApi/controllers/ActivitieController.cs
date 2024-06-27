using BLL;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApi.controllers
{
    public class ActivitieController : ApiController
    {
        // GET: api/Activitie
        public List<Activitie> Get()
        {
            return Activitie.GetAll();
        }

        // GET: api/Activitie/5
        public Activitie Get(int id)
        {
            return Activitie.GetById(id);
        }

        // POST: api/Activitie
        public void Post([FromBody] Activitie value)
        {
            value.ActivitieID = -1;
            value.Save();
        }

        // PUT: api/Activitie/5
        public void Put(int id, [FromBody] Activitie value)
        {
            value.ActivitieID = id;
            value.Save();
        }

        // DELETE: api/Activitie/5
        public void Delete(int id)
        {
            Activitie.DeleteById(id);
        }
    }
}
