
using FundooModels.User;
using Models.User;
using System;
using System.Collections.Generic;
using System.Text;


namespace Repository.UserRepository
{
    public interface IUserRepository
    {
        bool Registration(UserModel user);
        string Login(LoginModel login);
        string ForgotPassword(forgotpasswordmodel forgot);
    }
}
