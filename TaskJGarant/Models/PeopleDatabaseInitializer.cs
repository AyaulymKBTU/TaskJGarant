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
           // GetContactPeople().ForEach(c => context.ContactPeople.Add(c));
            
        }
        private static List<LegalPerson> GetLegalPeople()
        {
            var legalPeople = new List<LegalPerson> {
                new LegalPerson
                {

                    Identificator = "time",
                    Iin_bin="960000000005",
                    AuthorName="Ayau",
                    TitleName="icg-agro company"

                    }
               ,
               new LegalPerson
                {

                    Identificator = "fine",
                    Iin_bin="911111111111",
                    AuthorName="Lara",
                    TitleName="JysanGarant"

                }

            };


            return legalPeople;
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
                    LastName="Mukhametkali",
                    MiddleName="Kairatkyzy",
                    LegPersonID=5

               }
                ,
               new PhysPerson
                {

                    Identificator = "Mars",
                    Iin_bin="950722401059",
                    AuthorName="Anel",
                    FirstName="Salamat",
                    LastName="Ibrayev",
                    MiddleName="Askarovich",
                    LegPersonID=6
                 },
               new PhysPerson
                {

                    Identificator = "Stars",
                    Iin_bin="940722401059",
                    FirstName="Sam",
                    AuthorName="Gulya",
                    LastName="Bolatzhan",
                    MiddleName="Samatuly",
                    LegPersonID=5

                },
                new PhysPerson
                {

                    Identificator = "Fars",
                    Iin_bin="920722401059",
                    AuthorName="Ayaulym",
                    FirstName="Azamat",
                    LastName="Boran",
                    MiddleName="Zhaskanuly",
                    LegPersonID=6
                } };
        

            return physPeople;
        }

        

        
        //private static List<Contact> GetContactPeople()
        //{
        //    var contactPeople = new List<Contact> {
        //        new Contact
        //        {
        //            ID=3
        //        },
        //       new Contact
        //        {
        //           ID=2

        //        },
        //        new Contact
        //        {
        //           ID=1

        //        }




        //    };

        //    return contactPeople;
        //}
    }

}