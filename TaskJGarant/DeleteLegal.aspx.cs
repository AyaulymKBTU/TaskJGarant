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
    public partial class DeleteLegal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<LegalPerson> GetDelPerson([QueryString("legPersonId")] int? legPersonId)
        {
            var _db = new ContragentContext();
            IQueryable<LegalPerson> query = _db.LegalPeople;
            if (legPersonId.HasValue && legPersonId > 0)
            {
                query = query.Where(p => p.ID == legPersonId);

            }
            else
            {
                query = null;
            }
            return query;
        }
        public void delete_leg_person([QueryString("legPersonId")] int legPersonId)
        {

            using (ContragentContext db = new ContragentContext())
            {
                var item = new LegalPerson { ID = legPersonId };
                db.Entry(item).State = EntityState.Deleted;
                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} no longer exists in the database.", legPersonId));
                }
            }
        }
        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LegalsList");
        }
        protected void leg_person_deleted(object sender, FormViewDeletedEventArgs e)
        {
            Response.Redirect("~/LegalsList");
        }

    }
}