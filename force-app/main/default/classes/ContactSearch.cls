public class ContactSearch {
    public static list<contact> searchForContacts(String LastName, string MailingPostalCode){
        
        list<contact> a = [SELECT Id, Name FROM Contact WHERE LastName = :LastNAME AND MailingPostalCode =:MailingPostalCode];
		return a;
    }
}