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
    public partial class LegPeopleDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public int idForContacts;
        public IQueryable<LegalPerson> GetLDPeople([QueryString("legPersonId")] int? legPersonId)
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
        //public IQueryable<PhysPerson> GetPmainPeople([QueryString("legPersonId")] int? legPersonId)
        //{
        //    var _db = new TaskJGarant.Models.ContragentContext();
        //    IQueryable<PhysPerson> query = _db.PhysPeople;
        //    IQueryable<LegalPerson> legal_query = _db.LegalPeople;
        //    bool contact_exist = false;
        //    if (legPersonId.HasValue && legPersonId > 0)
        //    {
        //        legal_query = legal_query.Where(p => p.ID == legPersonId);
        //        LegalPerson leg = legal_query.FirstOrDefault(); 
        //        if (leg.Contact != null) //alternative variant is to use array of IDs 
        //        {

        //            contact_exist = true;
        //            foreach (Person contact in leg.Contact.PeopleContacts)
        //            {
        //                query = query.Where(p => p == contact);
        //            }

        //        }

        //    }
        //    if (contact_exist == false)
        //    {
        //        query = null;
        //    }

        //    return query;
        //}
    }
}
