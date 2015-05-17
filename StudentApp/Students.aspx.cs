using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StudentApp.Models;
using System.Data.Entity;

namespace StudentApp
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Student> studentsGrid_GetData()
        {
            StudentContext db = new StudentContext();
            var query = db.Students;
            return query;
        }
    }
 


}