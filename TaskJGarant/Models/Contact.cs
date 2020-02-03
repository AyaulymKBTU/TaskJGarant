using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace TaskJGarant.Models
{
    public class Contact
    {
        
        public int ID { get; set; }
        public int PersonID { get; set; }
        public virtual ICollection<Person> PhysPersonContacts { get; set; }



    }
}