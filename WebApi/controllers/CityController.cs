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
    public class CityController : ApiController
    {
        // GET: api/City
        public List<City> Get()
        {
            return City.GetAll();
        }

        // GET: api/City/5
        public City Get(int id)
        {
            return City.GetById(id);
        }

        // POST: api/City
        public void Post([FromBody]City value)
        {
            value.CityID = -1;
            value.Save();
        }

        // PUT: api/City/5
        public void Put(int id, [FromBody]City value)
        {
            value.CityID = id;
            value.Save();
        }

        // DELETE: api/City/5
        public void Delete(int id)
        {
            City.DeleteById(id);
        }
    }
}
