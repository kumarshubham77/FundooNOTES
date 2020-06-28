using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Common.UserModel;
using Manager;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FundooApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly Iusermanager _iusermanager;
        public UserController(Iusermanager iusermanager)
        {
            _iusermanager = iusermanager;
        }
        [HttpPost]
        [Route("UserRegistration")]
        public async Task<IActionResult> Register(UserModel user)
        {
            var result = await _iusermanager.Registration(user);
            return Ok(new { result });
        }
    }
}