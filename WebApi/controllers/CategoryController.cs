using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApi.controllers
{
    public class CategoryController : ApiController
    {
        // GET: api/Category
        public List<Category> Get()
        {
            return Category.GetAll();
        }

        // GET: api/Category/5
        public Category Get(int id)
        {
            return Category.GetById(id);
        }

        // POST: api/Category
        public void Post([FromBody]Category value)
        {
            value.CategoryID = -1;
            value.Save();
        }

        // PUT: api/Category/5
        public void Put(int id, [FromBody]Category value)
        {
            value.CategoryID = id;
            value.Save();
        }

        // DELETE: api/Category/5
        public void Delete(int id)
        {
            Category.DeleteById(id);
        }
    }
}
