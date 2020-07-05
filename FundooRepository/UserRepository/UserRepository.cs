using Models.User;
using System;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using FundooModels.User;
using System.Security.Claims;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.IdentityModel.Tokens;

namespace Repository.UserRepository
{
    public class UserRepository : IUserRepository
    {
        private SqlConnection con = null;
        string constr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=fundoodb;Integrated Security=True;";
       
        public void Conncetion()
        {
            //constr = configration.GetSection("Data").GetSection("ConnectionString").Value;
            con = new SqlConnection(constr);
        }

        public string ForgotPassword(forgotpasswordmodel forgot)
        {
            Conncetion();
            SqlCommand sqlCommand = new SqlCommand("forgotpassword", con);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@email", forgot.Email);
            sqlCommand.Parameters.AddWithValue("@newpassword", forgot.Password);
            con.Open();
            int i = sqlCommand.ExecuteNonQuery();
            con.Close();
            if(i >= 1)
            {
                return "Your password updated";
            }
            else
            {
                return "check email";
            }





        }

        public string Login(LoginModel login)
        {
            Conncetion();
            SqlCommand sqlCommand = new SqlCommand("userlogin", con);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@email", login.Email);
            sqlCommand.Parameters.AddWithValue("@password", login.Password);
            con.Open();
            //int i = sqlCommand.ExecuteNonQuery();
            //if(i >= 1)

            //{
            //    var tokenDescriptor = new SecurityTokenDescriptor
            //                   {
            //                        Subject = new ClaimsIdentity(new Claim[]
            //            {
            //               new Claim("Email", login.Email)
            //            }),
            //        Expires = DateTime.UtcNow.AddDays(1),
            //        SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(Encoding.UTF8.GetBytes("1234567890123456")), SecurityAlgorithms.HmacSha256Signature)
            //    };
            //    var cacheKey = login.Email;
            //    var tokenHandler = new JwtSecurityTokenHandler();
            //    var securityToken = tokenHandler.CreateToken(tokenDescriptor);
            //    var token = tokenHandler.WriteToken(securityToken);
            //    return token;
            //}
            //else
            //{
            //    return "Unsucessfullll";
            //}


            DataSet dataSet = new DataSet();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);
            dataAdapter.Fill(dataSet);
            con.Close();
            bool loginSuccessful = ((dataSet.Tables.Count > 0) && (dataSet.Tables[0].Rows.Count > 0));
            if (loginSuccessful && login.Email != "" && login.Password != null)
            {
                var tokenDescriptor = new SecurityTokenDescriptor
                               {
                                    Subject = new ClaimsIdentity(new Claim[]
                        {
                           new Claim("Email", login.Email)
                        }),
                    Expires = DateTime.UtcNow.AddDays(1),
                    SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(Encoding.UTF8.GetBytes("1234567890123456")), SecurityAlgorithms.HmacSha256Signature)
                };
                var cacheKey = login.Email;
                var tokenHandler = new JwtSecurityTokenHandler();
                var securityToken = tokenHandler.CreateToken(tokenDescriptor);
                var token = tokenHandler.WriteToken(securityToken);
                return token;
            }
            else
            {
                return "Uncessfull login";
            }




        }

        public bool Registration(UserModel user)
        {
            Conncetion();
            SqlCommand sqlCommand = new SqlCommand("Registrtaion", con);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@firstname", user.FirstName);
            sqlCommand.Parameters.AddWithValue("@lastname", user.LastName);
            sqlCommand.Parameters.AddWithValue("@email", user.Email);
            sqlCommand.Parameters.AddWithValue("@password", user.Password);
            sqlCommand.Parameters.AddWithValue("@age", user.Age);
            sqlCommand.Parameters.AddWithValue("@gender", user.Gender);
            con.Open();
            // Using ExecuteNonQuery it will return 1 for Insert,Delete and Update else it will return -1. 
            int i = sqlCommand.ExecuteNonQuery();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        






    }
}
