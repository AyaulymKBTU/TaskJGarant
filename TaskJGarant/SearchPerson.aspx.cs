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
    public partial class SearchPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<PhysPerson> GetSPPeople([QueryString("searchString")] string searchString)
        {
            var _db = new ContragentContext();
            IQueryable<PhysPerson> query = _db.PhysPeople;
            
            query = query.Where(s => s.Iin_bin.Contains(searchString));
            


            return query;
        }
    }
}