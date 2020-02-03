using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace TaskJGarant.Models
{
    public class PeopleDatabaseInitializer : DropCreateDatabaseAlways<ContragentContext>
    {

        protected override void Seed(ContragentContext context)
        {
            GetPhysPeople().ForEach(c => context.PhysPeople.Add(c));
            GetLegalPeople().ForEach(c => context.LegalPeople.Add(c));
            GetContactPeople().ForEach(c => context.ContactPeople.Add(c));
            
        }

        private static List<PhysPerson> GetPhysPeople()
        {
            var physPeople = new List<PhysPerson> {
                new PhysPerson
                {

                    Identificator = "Cars",
                    Iin_bin="960722401059",
                    AuthorName="Ayaulym",
                    FirstName="Damira",
                    ContactID=1
                    
               }
                ,
               new PhysPerson
                {

                    Identificator = "Mars",
                    Iin_bin="950722401059",
                    AuthorName="Anel",
                    FirstName="Salamat",
                    ContactID=2
                 },
               new PhysPerson
                {

                    Identificator = "Stars",
                    Iin_bin="940722401059",
                    FirstName="Sam",
                    ContactID=3,
                    AuthorName="Gulya",

                },
                new PhysPerson
                {

                    Identificator = "Fars",
                    Iin_bin="920722401059",
                    AuthorName="Ayaulym",
                    FirstName="Azamat",
                    ContactID=1
                },
            }
        ;

            return physPeople;
        }

        

        private static List<LegalPerson> GetLegalPeople()
        {
            var legalPeople = new List<LegalPerson> {
                new LegalPerson
                {

                    Identificator = "time",
                    Iin_bin="960000000005",
                    AuthorName="Ayau",
                    ContactID=2,
                    TitleName="icg-agro company",
                    }
               ,
               new LegalPerson
                {

                    Identificator = "fine",
                    Iin_bin="911111111111",
                    AuthorName="Lara",
                    ContactID=3,
                    TitleName="JysanGarant"

                }

            };
            

            return legalPeople;
        }
        private static List<Contact> GetContactPeople()
        {
            var contactPeople = new List<Contact> {
                new Contact
                {
                    ID=3
                },
               new Contact
                {
                   ID=2

                },
                new Contact
                {
                   ID=1

                }




            };

            return contactPeople;
        }
    }

}