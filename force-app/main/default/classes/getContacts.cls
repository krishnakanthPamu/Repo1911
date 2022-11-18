public class getContacts {
    @AuraEnabled
    public static list<contact> getContactsMethod(id accId){
        system.debug(accId);
        list<contact> contactsList = [SELECT Id, FirstName, lastName, Phone, Email FROM Contact WHERE accountId = :accId];
        system.debug(contactsList.size());
        system.debug('id' + contactsList[0].Id);
            system.debug(contactsList[0].FirstName);
        system.debug(contactsList[0].lastName);
        system.debug(contactsList[0].Phone);
        system.debug(contactsList[0].Email);
        
        return contactsList;
    }
    
}