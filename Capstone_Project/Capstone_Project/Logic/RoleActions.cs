using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Capstone_Project.Models;

namespace Capstone_Project.Logic
{
    internal class RoleActions
    {
        internal void AddUserAndRole()
        {
            // Access the application context and create result variables.
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            // Create a RoleStore object by using the ApplicationDbContext object. 
            // The RoleStore is only allowed to contain IdentityRole objects.
            var roleStore = new RoleStore<IdentityRole>(context);

            // Create a RoleManager object that is only allowed to contain IdentityRole objects.
            // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object. 
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            // Then, you create the "canEdit" role if it doesn't already exist.
            if (!roleMgr.RoleExists("systemAdmin"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "systemAdmin" });
            }

            // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
            // object. Note that you can create new objects and use them as parameters in
            // a single line of code, rather than using multiple lines of code, as you did
            // for the RoleManager object.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "admin@mekb.com",
                Email = "admin@mekb.com",
                Role=1,

            };
            appUser.Role = 0;
            IdUserResult = userMgr.Create(appUser, "Qwerty#2017");

            // If the new "canEdit" user was successfully created, 
            // add the "canEdit" user to the "canEdit" role. 
            if (!userMgr.IsInRole(userMgr.FindByEmail("admin@mekb.com").Id, "systemAdmin"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("admin@mekb.com").Id, "systemAdmin");
                
           
            }
        }


             internal static IdentityResult AddUserAndRole(ApplicationUser user, string password)
        {
            // Access the application context and create result variables.
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            // Create a RoleStore object by using the ApplicationDbContext object. 
            // The RoleStore is only allowed to contain IdentityRole objects.
            var roleStore = new RoleStore<IdentityRole>(context);

            // Create a RoleManager object that is only allowed to contain IdentityRole objects.
            // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object. 
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            // Then, you create the "canEdit" role if it doesn't already exist.
            string role = "mentee";
            switch (user.Role)
            {
                case 0:
                    role = "systemAdmin";
                    break;
                case 1:
                    role = "mentor";
                    break;
            }

            if (!roleMgr.RoleExists(role))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = role });
            }

            // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
            // object. Note that you can create new objects and use them as parameters in
            // a single line of code, rather than using multiple lines of code, as you did
            // for the RoleManager object.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = user;
            
         
            IdUserResult = userMgr.Create(appUser,password);

            // If the new user was successfully created, 
            // add the "user to the "canEdit" role. 
            if (!userMgr.IsInRole(userMgr.FindByEmail(user.Email).Id, role))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail(user.Email).Id, role);
            }

            return IdUserResult;
        }
    }
}