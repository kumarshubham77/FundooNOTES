using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;
using Manager;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Repositary.Interface;
using Repositary.Repositary;

namespace FundooApi
{
    public class Startup
    {

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
            var value = Configuration.GetConnectionString("ConnectionStrings");
        }

        public IConfiguration Configuration { get; }


        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
            //Making singleton i.e., making only one object throughout.
            services.AddSingleton<IConfiguration>(Configuration);
            services.Configure<DbConnection>(Configuration.GetSection("ConnectionStrings"));
            services.AddTransient<User, UserRepositary>();
            services.AddTransient<Iusermanager, UserManager>();
        }


        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            /*app.Run(async (context) =>
            {
                await context.Response.WriteAsync("Hello World!");
            });
            */
            app.UseHttpsRedirection();
            app.UseMvc();
        }
    }
}
