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
    public partial class UpdatePerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<PhysPerson> GetPUPeople([QueryString("physPersonId")] int? physPersonId)
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
        public void physpeople_UpdateItem([QueryString("physPersonID")] int personID)
        {
         using (ContragentContext db = new ContragentContext())
                {
                    PhysPerson item = null;
                    item = db.PhysPeople.Find(personID);
                    if (item == null)
                    {
                        ModelState.AddModelError("",
                          String.Format("Item with id {0} was not found", personID));
                        return;
                    }
                item.UpdateDate = new DateTimeOffset(DateTime.Now);
                    TryUpdateModel(item);
                    if (ModelState.IsValid)
                    {
                        db.SaveChanges();
                    }
                }
            Response.Redirect("~/PeopleList");

        }
      
       
    }
}