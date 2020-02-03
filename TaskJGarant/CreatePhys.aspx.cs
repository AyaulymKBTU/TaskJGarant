using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TaskJGarant.Models;

namespace TaskJGarant
{
    public partial class CreatePhys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void addPersonForm_InsertItem()
        {
            var item = new PhysPerson();
            
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                using (ContragentContext db = new ContragentContext())
                {
                    item.CreateDate = new DateTimeOffset(DateTime.Now);
                    db.PhysPeople.Add(item);
                    db.SaveChanges();
                }
            }
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PeopleList");
        }

        protected void addPersonForm_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect("~/PeopleList");
        }
    }
}