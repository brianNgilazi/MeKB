using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capstone_Project.Models;
using System.Data.Entity.Infrastructure;

namespace Capstone_Project.MentorAdmin
{
    public partial class QuestionsToAnswer : System.Web.UI.Page
    {

      
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        public IQueryable<Capstone_Project.Models.Question> questionGrid_GetData()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => q.Answered==false ).OrderByDescending(q =>q.TimeAsked);
            return query;
        }

        public IQueryable<Capstone_Project.Models.Question> GetRejected()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => q.Mentor==Context.User.Identity.Name && q.Answered && !q.Accepted).OrderByDescending(q => q.TimeAsked);
            return query;
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void questionGrid_UpdateItem(int QuestionID)
        {
            
            using (UserContext db = new UserContext())
            {


                Question item = null;
                int id = QuestionID;
              
                item = db.Questions.Find(id);
                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
                    return;
                }
                item.Answered = true;
                item.Mentor = Context.User.Identity.Name;
                TryUpdateModel(item);
                if (ModelState.IsValid)
                {
                    db.SaveChanges();

                }
                Server.Transfer("QuestionsToAnswer.aspx",false);
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void questionGrid_DeleteItem(int QuestionID)
        {
          
            using (UserContext db = new UserContext())
            {
                int id = QuestionID;
                Console.Out.Write(id);
                var item = new Question { QuestionID = Convert.ToInt32(id) };

                db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} no longer exists in the database.", id));
                }
            }
        }

        public int unansweredCount()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => q.Answered == false).Count();
            return query;
        }

        public int rejectedCount()
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => q.Mentor == Context.User.Identity.Name && q.Answered == true && q.Accepted==false).Count();
            return query;
        }



    }
}