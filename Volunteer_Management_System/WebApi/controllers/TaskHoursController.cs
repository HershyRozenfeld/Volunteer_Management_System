using BLL;
//using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApi.controllers
{
    public class TaskHoursController : ApiController
    {
        // GET: api/TaskHours
        public List<TaskHours> Get()
        {
            return TaskHours.GetAll();
        }

        // GET: api/TaskHours/5
        public TaskHours Get(int id)
        {
            return TaskHours.GetById(id);
        }

        // POST: api/TaskHours
        public void Post([FromBody]TaskHours value)
        {
            value.OperatingHoursCode = -1;
            value.Save();
        }

        // PUT: api/TaskHours/5
        public void Put(int id, [FromBody] TaskHours value)
        {
            value.OperatingHoursCode = id;
            value.Save();
        }

        // DELETE: api/TaskHours/5
        public void Delete(int id)
        {
            TaskHours.DeleteById(id);
        }
    }
}
