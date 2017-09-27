using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace Capstone_Project.Models
{
    public class Profiles
    {
        public class ProfileContext : DbContext
        {
            public DbSet<Student> Students { get; set; }
            public DbSet<Role> Roles { get; set; }
            //public DbSet<Question> Courses { get; set; }
        }

        public class Student
        {
            [Key, Display(Name = "ID")]
            [ScaffoldColumn(false)]
            public int StudentID { get; set; }

            [Required, StringLength(40), Display(Name = "Last Name")]
            public string LastName { get; set; }

            [Required, StringLength(20), Display(Name = "First Name")]
            public string FirstName { get; set; }
            public int? RoleID { get; set; }
        }



    }
}