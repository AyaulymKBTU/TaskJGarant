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
    public partial class SearchLegal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<LegalPerson> GetSLPeople([QueryString("searchString")] string searchString)
        {
            var _db = new ContragentContext();
            IQueryable<LegalPerson> query = _db.LegalPeople;

            query = query.Where(s => s.Iin_bin.Contains(searchString));



            return query;
        }
    }
}