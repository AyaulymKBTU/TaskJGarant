using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TaskJGarant.Models;
using System.Web.ModelBinding;


namespace TaskJGarant
{
    public partial class PhysPeopleDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<PhysPerson> GetPDPeople([QueryString("physPersonId")] int? physPersonId)
        {
            var _db = new ContragentContext();
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
    }
}