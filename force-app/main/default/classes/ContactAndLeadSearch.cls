public class ContactAndLeadSearch {
    public static list<list<sObject>> searchContactsAndLeads(string var){
        list<list<sObject>> ContactsAndLeads = [FIND :var IN ALL FIELDS RETURNING Contact(Id, Name WHERE LastName = :var), 
                                       								 				 Lead(Id, Name WHERE lastName = :var)];
        
          return ContactsAndLeads;  
    }

}