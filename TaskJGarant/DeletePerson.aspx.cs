using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using TaskJGarant.Models;

namespace TaskJGarant
{
    public partial class DeletePerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<PhysPerson> GetDelPerson([QueryString("physPersonId")] int? physPersonId)
        {
            var _db = new TaskJGarant.Models.ContragentContext();
            IQueryable<PhysPerson> query = _db.PhysPeople;
            if (physPersonId.HasValue && physPersonId > 0)
            {
                query = query.Where(p => p.ID == physPersonId);
                
            }
            else
            {
                query = null;
            }
            return query;
        }
        public void delete_phys_person([QueryString("physPersonId")] int physPersonId)
        {
            
            using (ContragentContext db = new ContragentContext())
            {
                var item = new PhysPerson { ID = physPersonId };
                db.Entry(item).State = EntityState.Deleted;
                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} no longer exists in the database.", physPersonId));
                }
            }
        }
        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PeopleList");
        }
        protected void phys_person_deleted(object sender, FormViewDeletedEventArgs e)
        {
            Response.Redirect("~/PeopleList");
        }

    }
}