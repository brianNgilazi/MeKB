using System.Collections.Generic;
using System.Data.Entity;

namespace Capstone_Project.Models
{
    public class UserDatabaseInitializer : DropCreateDatabaseIfModelChanges<UserContext>
    {
        protected override void Seed(UserContext context)
        {
            GetRoles().ForEach(r => context.Roles.Add(r));
            GetUsers().ForEach(u => context.Users.Add(u));
        }

        private static List<Role> GetRoles()
        {
            var roles = new List<Role> {
                new Role
                {
                    RoleID = 0,
                    RoleName = "SysAdmin"
                },
                new Role
                {
                    RoleID = 1,
                    RoleName = "Mentor"
                },
                new Role
                {
                    RoleID = 2,
                    RoleName = "Mentee"
                },

            };
            return roles;
        }

        private static List<User> GetUsers()
        {
            var users = new List<User> {
                new User
                {
                    UserID = "nglbri001",
                    UserName = "Brian Ngilazi",
                    Description = "Test Data",
                    //ImagePath="carconvert.png",
                    Email="gmail.com",
                    RoleID=1
                   
               },
                 new User
                {
                    UserID = "mfmalu005",
                    UserName = "Aluwani",
                    Description = "Test Data",
                    //ImagePath="carconvert.png",
                    Email="gmail.com",
                    RoleID=2

               }
            };
            return users;
        }
    }
}