using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capstone_Project.Models;
using System.Web.ModelBinding;

namespace Capstone_Project
{
    public partial class AskedQuestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Capstone_Project.Models.Question> CompleteQuestions()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => (q.Questioner == Context.User.Identity.Name && q.Answered &&q.Accepted)).OrderByDescending(r=>r.TimeAsked);
            
            
            return query;
        }

        public IQueryable<Capstone_Project.Models.Question> PendingQuestions()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => (q.Questioner == Context.User.Identity.Name && q.Answered && !q.Accepted)).OrderByDescending(r => r.TimeAsked);

            return query;
        }

        public IQueryable<Capstone_Project.Models.Question> UnansweredQuestions()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => q.Questioner == Context.User.Identity.Name && !q.Answered).OrderByDescending(r => r.TimeAsked);

            return query;
        }



        public int pendingCount()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => (q.Questioner == Context.User.Identity.Name && q.Answered && !q.Accepted)).Count();
            return query;
        }

       
    }
}