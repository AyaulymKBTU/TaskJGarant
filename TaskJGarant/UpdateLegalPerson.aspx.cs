using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using TaskJGarant.Models;

namespace TaskJGarant
{
    public partial class UpdateLegalPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<LegalPerson> GetLUPeople([QueryString("legPersonID")] int? legPersonId)
        {
            var _db = new TaskJGarant.Models.ContragentContext();
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
        public void legpeople_UpdateItem([QueryString("legPersonID")] int leg_personID)
        {
            using (ContragentContext db = new ContragentContext())
            {
                LegalPerson item = null;
                item = db.LegalPeople.Find(leg_personID);
                if (item == null)
                {
                    ModelState.AddModelError("",
                      String.Format("Item with id {0} was not found", leg_personID));
                    return;
                }

                TryUpdateModel(item);
                if (ModelState.IsValid)
                {
                    db.SaveChanges();
                }
            }
            Response.Redirect("~/LegalsList");

        }


    }
}