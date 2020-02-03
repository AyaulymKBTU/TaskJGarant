using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace TaskJGarant.Models
{
    public class ContragentContext:DbContext
    {
        public ContragentContext() : base("TaskJGarant")
        {
        }
        public DbSet<PhysPerson> PhysPeople { get; set; }
        public DbSet<LegalPerson> LegalPeople { get; set; }
        public DbSet<Person> People { get; set; }

        public DbSet<Contact> ContactPeople { get; set; }

    }
}