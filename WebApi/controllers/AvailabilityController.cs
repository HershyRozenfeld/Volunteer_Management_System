﻿using System;
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
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Availability/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Availability
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Availability/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Availability/5
        public void Delete(int id)
        {
        }
    }
}
