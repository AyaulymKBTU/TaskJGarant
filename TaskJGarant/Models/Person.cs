using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace TaskJGarant.Models
{
    public abstract class Person
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }      
        public string Identificator { get; set; }  
        public string Iin_bin { get; set; }
        public DateTimeOffset CreateDate { get; set; }          
        public string AuthorName { get; set; }
        public DateTimeOffset UpdateDate { get; set; }
        public string UpdaterName { get; set; }
       


    }
}