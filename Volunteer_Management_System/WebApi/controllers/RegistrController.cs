using BLL;
//using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.UI;

namespace WebApi.controllers
{
    public class RegistrController : ApiController
    {
        // GET: api/Registr
        public List<Registr> Get()
        {
            return Registr.GetAll();
        }

        // GET: api/Registr/5
        public Registr Get(int id)
        {
            return Registr.GetById(id);
        }

        // POST: api/Registr
        public void Post([FromBody]Registr value)
        {
            value.RegistrID = -1;
            value.Save();
        }

        // PUT: api/Registr/5
        public void Put(int id, [FromBody]Registr value)
        {
            value.RegistrID = id;
            value.Save();
        }

        // DELETE: api/Registr/5
        public void Delete(int id)
        {
            Registr.DeleteById(id);
        }
    }
}
