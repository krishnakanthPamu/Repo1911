//Add related record to the Existing accounts which do not have any Contacts.
public class AddContactToEmptyAccounts {
    
    Public static void function1(){
        
        //=====FETCH ACCOUNTS OF ALL CONTACTS==========
        List<Contact> list1 = [SELECT Account.Id FROM Contact];
		System.debug('List of contacts: '+List1);

		List<Id> ContactsIdList = New List<Id>();
		List<Id> AccountsIdList = New List<Id>();
		for(contact a: List1){
    		ContactsIdList.add(a.id);
    		AccountsIdList.add(a.account.id);
		}

		System.debug('ContactsIdList: '+ ContactsIdList);
		System.debug('AccountsIdList: '+ AccountsIdList);
        
        
        //=====FETCHING ACCOUNTS WHICH DOES NOT HAVE CONTACTS========
        List<Account> AccountsWithoutContacts = [SELECT Id,Name FROM Account WHERE Id NOT IN :AccountsIdList];
        system.debug('AccountsWithoutContacts: '+ AccountsWithoutContacts);
        system.debug('newcontact Acount: '+AccountsWithoutContacts[0].Name );    
        
       /*
        //=====ADDING NEW CONTACTS TO THE ACCOUNTS=======
        
        Contact c = New Contact();
        system.debug('newcontact Acount: '+AccountsWithoutContacts[0].Id );
        c.AccountId=AccountsWithoutContacts[0].Id;
        c.FirstName = AccountsWithoutContacts[0].Name ;
		c.LastName  = 'Contact' ;
        
        Insert c;
*/
        
        List<Contact> NewContactsList = New List<Contact>();

        For(Account i:AccountsWithoutContacts){
                        
            Contact c = New Contact();
            c.Account.Id=i.Id;
            c.FirstName = i.Name + 'Contact	' ;
            NewcontactsList.add(c);
        }
		system.debug('accounts with contacts:'+NewcontactsList);
      insert NewContactsList;
    }
}