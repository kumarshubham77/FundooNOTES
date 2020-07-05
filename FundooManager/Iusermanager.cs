
using FundooModels.User;
using Models.User;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Manager
{
    public interface Iusermanager
    {
        string Registration(UserModel user);
        string Login(LoginModel model);
        string Forgot(forgotpasswordmodel model);


    }
}
