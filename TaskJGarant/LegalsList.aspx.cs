using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TaskJGarant.Models;

namespace TaskJGarant
{
    public partial class LegalsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<LegalPerson> GetLPPeople()
        {
            var _db = new ContragentContext();
            IQueryable<LegalPerson> query = _db.LegalPeople;
           
            return query;
        }
        protected void NavigateToSearchResults(object sender, EventArgs e)
        {
            TextBox txt = this.SearchLegalPersonTextBox;
            var text = txt.Text;
            if (text == null)
                text = "";
            Response.Redirect("SearchLegal.aspx?searchString=" + text);
        }
    }
}