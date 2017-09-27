using System.ComponentModel.DataAnnotations;

namespace Capstone_Project.Models
{
    public class User
    {
        [ScaffoldColumn(false)]
        public string UserID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string UserName { get; set; }

        [StringLength(10000), Display(Name = "User Bio"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        public string ImagePath { get; set; }

        [Display(Name = "Email Address")]
        public string Email { get; set; }

        //[Display(Name = "Price")]
        //public double? UnitPrice { get; set; }
        public int? RoleID { get; set; }

        public virtual Role Role { get; set; }

    }
}