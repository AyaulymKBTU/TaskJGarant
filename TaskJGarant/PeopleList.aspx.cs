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
    public partial class PeopleList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    

        public IQueryable<PhysPerson> GetPPPeople()
        {
            var _db = new TaskJGarant.Models.ContragentContext();
            IQueryable<PhysPerson> query = _db.PhysPeople;
           


            return query;
        }
        protected void NavigateToSearchResults(object sender, EventArgs e)
        {
            TextBox txt = this.SearchPersonTextBox ;
            var text = txt.Text;
            if (text == null)
                text = "";
            Response.Redirect("SearchPerson.aspx?searchString="+text);
        }

    }
}


