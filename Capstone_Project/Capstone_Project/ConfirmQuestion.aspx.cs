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
    public partial class ConfirmQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            QuestionBox.Text = Request.QueryString["question"];
        }
        public IQueryable<Question> GetSimilarQuestions([QueryString("question")] string question)
        {
            var _db = new UserContext();
            IQueryable<Question> query = _db.Questions;
           /* if (question.Length>0)
            {
                query = query.Where(p => qu);
            }*/
            return query;
        }

        protected void Submit_Question(object sender, EventArgs e)
        {
            using (UserContext _db = new UserContext())
             {
                 // Add question to DB.
                 var q = new Question();
                q.Details = QuestionBox.Text;
                q.Answered = false;
                q.Accepted = false;
                q.Questioner = Context.User.Identity.Name;
                q.Share = checkbox.Checked;
                q.TimeAsked = System.DateTime.Now;
                _db.Questions.Add(q);
                _db.SaveChanges();


             }
          
            Response.Redirect("MyQuestions.aspx");    
        }

        private bool Similar(string phrase1, string phrase2)
        {
           
            return false;
        }


    }
}