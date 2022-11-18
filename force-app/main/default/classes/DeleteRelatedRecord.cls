public class DeleteRelatedRecord {
    
    public static void Function(){
        /*
        List<Account> i = [Select id, Name, (select id, Name from contacts) FROM Account WHERE Name = 'Test Account 1'];
		System.debug('Test Account: '+ i[0]);
		System.debug('Test Account.Contacts: '+ i[0].contacts);
        System.debug('Test Account.Contacts - 1: '+ i[0].contacts[0]);
		System.debug('Test Account.Contacts - 2: '+ i[0].contacts[1]);

		Delete i[0].contacts[0];

		Contact c = [SELECT Name, id FROM contact WHERE Name = 'Contact 1' ALL ROWS];
		UnDelete c; // Undeletes the contact and associates with old Account as old i.e., Test Account 1 will have 'Contact 1'
		
        Delete i[0];
        
        Account a = [SELECT Name, Id FROM Account WHERE Name= 'Test Account 1' ALL ROWS];
        UnDelete a; // Will undelete Account and Related contacts.
        */
    }

}