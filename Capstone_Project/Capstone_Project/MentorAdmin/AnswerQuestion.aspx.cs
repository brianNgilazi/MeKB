using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capstone_Project.Models;
using System.Web.ModelBinding;



namespace Capstone_Project.MentorAdmin
{
    public partial class AnswerQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Question> GetQuestion([QueryString("questionID")] int? questionID)
        {
            var _db = new UserContext();
            IQueryable<Question> query = _db.Questions;
            if (questionID.HasValue&&questionID>0)
             {
                 query = query.Where(q => q.QuestionID==questionID);
             }
            return query;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string answer = ((TextBox)questionDetail.FindControl("AnswerBox")).Text;
            using (UserContext db = new UserContext())
            {


                Question item = null;
                int id =Convert.ToInt32(Request.QueryString["questionID"]);

                item = db.Questions.Find(id);
                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
                    return;
                }
                item.Answered = true;
                item.Mentor = Context.User.Identity.Name;
                item.Answer = answer;
                //TryUpdateModel(item);
                db.SaveChanges();

                Response.Redirect("QuestionsToAnswer.aspx");
            }
        }
    }
}