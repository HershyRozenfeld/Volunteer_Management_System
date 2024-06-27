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
    public class TaskController : ApiController
    {
        // GET: api/Task
        public List<Task> Get()
        {
            return Task.GetAll();
        }

        // GET: api/Task/5
        public Task Get(int id)
        {
            return Task.GetById(id);
        }

        // POST: api/Task
        public void Post([FromBody]Task value)
        {
            value.TID = -1;
            value.Save();
        }

        // PUT: api/Task/5
        public void Put(int id, [FromBody]Task value)
        {
            value.TID = id;
            value.Save();
        }

        // DELETE: api/Task/5
        public void Delete(int id)
        {
            Task.DeleteById(id);
        }
    }
}
