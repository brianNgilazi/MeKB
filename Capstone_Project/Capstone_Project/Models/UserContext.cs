using System.Data.Entity;


namespace Capstone_Project.Models
{
    public class UserContext: DbContext
    {
        public UserContext() : base("Capstone_Project")
		{
        }
        public DbSet<Role> Roles { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Question> Questions { get; set; }
    }
}