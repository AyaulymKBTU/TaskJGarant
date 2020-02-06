using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace TaskJGarant.Models
{
    public class LegalPerson  : Person
    {
        public LegalPerson()
        {
            CreateDate = new DateTimeOffset(DateTime.Now);
        }
       

        public virtual  ICollection<PhysPerson> PhysPeople { get; set; }

        [Required]
        [Display(Name = "Title Name")]
        public string TitleName { get; set; }
       
    }
}