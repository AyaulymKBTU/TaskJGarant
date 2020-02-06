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
            var _db = new ContragentContext();
            

            IQueryable<PhysPerson> query = _db.PhysPeople;
            if (legPersonID.HasValue && legPersonID > 0)
            {
                query = query.Where(p => p.LegPersonID == legPersonID);
            }
            return query;
            

        }
     
    }
}