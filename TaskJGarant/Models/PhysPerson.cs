using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TaskJGarant.Models
{
    public class PhysPerson:Person
    {
        public PhysPerson()
        {
            CreateDate = new DateTimeOffset(DateTime.Now);
            
        }

        // [Required]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

       // [Required]   
       // [Column("FirstName")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        
        //[Column("MidName")]
        [Display(Name = "Middle Name")]
        public string MiddleName { get; set; }




    }
}