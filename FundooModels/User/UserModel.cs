using System;
using System.Collections.Generic;
using System.Text;

namespace Models.User
{
    public class UserModel
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string ConfirmPassowrd { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
    }
}
