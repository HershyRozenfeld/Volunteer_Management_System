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
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Activitie/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Activitie
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Activitie/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Activitie/5
        public void Delete(int id)
        {
        }
    }
}
