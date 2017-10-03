using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capstone_Project.Models;
namespace Capstone_Project
{

 
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Question(object sender, EventArgs e)
        {
         
            Response.Redirect("ConfirmQuestion.aspx?question="+QuestionBox.Text);
            
        }

      
        [System.Web.Services.WebMethod]
        public static List<string> SearchQuestions(string prefixText,int count)
        {
            UserContext db = new UserContext();
            var query = db.Questions.Where(q => q.Details.Contains(prefixText));
            List<string> result = new List<string>();
            foreach(Question q in query)
            {
                result.Add(q.Details);
            }
            return result;
            
        }
    
    }
}