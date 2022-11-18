public class allContactsViewer {
    @auraEnabled
    public static list<contact> getContacts(){
        return [SELECT ID, Name, MailingStreet, Phone, Email, LeadSource FROM Contact];
    }

}