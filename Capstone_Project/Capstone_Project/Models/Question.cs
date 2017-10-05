using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Capstone_Project.Models
{
    public class Question
    {
        [ScaffoldColumn(false)]
        public int QuestionID { get; set; }

        [Display(Name = "Details")]
        public string Details { get; set; }

        [Display(Name = "Answer")]
        public string Answer { get; set; }

        [Display(Name = "Answered Status")]
        public bool Answered { get; set; }

        [Display(Name = "User")]
        public string StudentNumber { get; set; }

        public virtual ICollection<Question> Questions { get; set; }
    }
}