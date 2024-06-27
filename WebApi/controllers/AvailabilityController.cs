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
    public class AvailabilityController : ApiController
    {
        // GET: api/Availability
        public List<Availability> Get()
        {
            return Availability.GetAll();
        }

        // GET: api/Availability/5
        public Availability Get(int id)
        {
            return Availability.GetById(id);
        }

        // POST: api/Availability
        public void Post([FromBody]Availability value)
        {
            value.AvailabilityID = -1;
            value.Save();
        }

        // PUT: api/Availability/5
        public void Put(int id, [FromBody]Availability value)
        {
            value.AvailabilityID = id;
            value.Save();
        }

        // DELETE: api/Availability/5
        public void Delete(int id)
        {
            Availability.DeleteById(id);
        }
    }
}
