using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TaskJGarant.Models;
using System.Web.ModelBinding;
using System.Data.Entity;

namespace TaskJGarant
{
    public partial class ContactLegal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<PhysPerson> legalContact_GetData([QueryString] int? legPersonID)
        {
            var db = new ContragentContext();
            var q = db.PhysPeople;
            var quer = db.ContactPeople;

            //var qq =   (quer.Where(p => p.LegalPersonID == legPersonID) as Contact)
            //    .PhysPersonContacts as IQueryable<PhysPerson>;

            //    var query = db.ContactPeople.Where(e=>e.ID==q)
            //    //    .Where(e => e.LegalPersonID == legPersonID);

            //var q = from s in quer select s.PhysPersonContacts;
                
                return q;
          
            //IQueryable < PhysPerson > query = quer.FirstOrDefault().PeopleContacts as IQueryable<PhysPerson>;
            //return query;

        }
     
    }
}