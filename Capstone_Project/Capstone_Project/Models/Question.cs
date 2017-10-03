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

        public bool Answered { get; set; }

        public bool Share {get; set;}

        public bool Accepted { get; set; }

        public DateTime TimeAsked { get; set; }

        [Display(Name = "Questioner")]
        public string Questioner { get; set;}

        [Display(Name = "Mentor")]
        public string Mentor { get; set; }

        public virtual ICollection<Question> Questions { get; set; }
    }
}