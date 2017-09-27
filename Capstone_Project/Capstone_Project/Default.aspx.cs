using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capstone_Project.Models;

namespace Capstone_Project
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Submit_Question(object sender, EventArgs e)
        {
            using (UserContext _db = new UserContext())
            {
                // Add question to DB.
                var q = new Question();
                q.Details = QuestionBox.Text;
                q.Answered = false;
                q.StudentNumber = Context.User.Identity.Name;
                _db.Questions.Add(q);
                _db.SaveChanges();
                
            }
            Server.Transfer("Default.aspx", false);
        }
    }
}