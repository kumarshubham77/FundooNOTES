
using FundooModels.User;
using Models.User;
using Repository.UserRepository;
using System.Net;
using System.Web.Mvc;

namespace WebApplication1.Controllers
{
    public class UserController : Controller
    {
        private IUserRepository repository = new UserRepository();

        [HttpGet]
        [Route("get")]
        public ActionResult Register()
        {
            return Json(HttpStatusCode.OK);
        }


        [HttpPost]
        //[Route("UserRegistration")]

        public ActionResult Register(UserModel user)
        {
            var result = this.repository.Registration(user);
            return Json(HttpStatusCode.OK);
        }

        [HttpPost]
        public ActionResult Login(LoginModel model)
        {
            var result = this.repository.Login(model);
            return Json(result);
        }
        [HttpPost]
        public ActionResult ForgotPassword(forgotpasswordmodel model)
        {
            var result = this.repository.ForgotPassword(model);
            return Json( result);
        }

    }
}