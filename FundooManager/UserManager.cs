using FundooModels.User;
using Models.User;
using Repository.UserRepository;

namespace Manager
{
    public class UserManager:Iusermanager
    {

        private IUserRepository repository = new UserRepository();

        public string Forgot(forgotpasswordmodel model)
        {
            var pass = repository.ForgotPassword(model);
            return pass;
        }

        public string Login(LoginModel model)
        {
            var token = repository.Login(model);
            return token;
        }



        //public async Task<string> Forgot(ForgotPassword forgot)
        //{
        //    var result = await _userRespositary.Forgotpassword(forgot);
        //    return result;
        //}

        //public async Task<UserResponseModel> LogIn(LoginModel login)
        //{
        //    var result = await _userRespositary.Login(login);
        //    return result;
        //}

        public string Registration(UserModel model)
        {
            repository.Registration(model);
            return "Registration Successfull";

        }
    }
}
