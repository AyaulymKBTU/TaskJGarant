using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TaskJGarant.Models
{
    public class LegalPerson : Person
    {
        public LegalPerson()
        {
            CreateDate = new DateTimeOffset(DateTime.Now);
        }


        [Required]
        [Display(Name = "Title Name")]
        public string TitleName { get; set; }
       
    }
}