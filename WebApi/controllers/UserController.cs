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
    public class UserController : ApiController
    {
        // GET: api/User
        public List<User> Get()
        {
            return User.GetAll();
        }

        // GET: api/User/5
        public User Get(int id)
        {
            return User.GetById(id);
        }

        // POST: api/User
        public void Post([FromBody]User value)
        {
            value.UserID = -1;
            value.Save();
        }

        // PUT: api/User/5
        public void Put(int id, [FromBody]User value)
        {
            value.UserID = id;
            value.Save();
        }

        // DELETE: api/User/5
        public void Delete(int id)
        {
            User.DeleteById(id);
        }
    }
}
