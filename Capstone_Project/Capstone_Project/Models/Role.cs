using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Capstone_Project.Models
{
    public class Role
    {
        [ScaffoldColumn(false)]
        public int RoleID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string RoleName { get; set; }

        [Display(Name = "Description")]
        public string Description { get; set; }

        public virtual ICollection<Role> Roles { get; set; }

        

    }


}