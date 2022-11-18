public class InsertingRelatedRecords {

  
    public static void Function1(){
        Contact a = [SELECT Name, Phone, Account.Name, Account.Industry FROM Contact 
                     			WHERE Name='Alan Johnson'];
        System.debug('Printing Contact: '+ a);
        System.debug('Printing Contact: '+ a.account);

    }
	//Add Accounts to the New Contacts 
    public static void Function2(){
        //Creating a New Contact
        Contact p = New Contact(FirstName = 'Apex 2 ',LastName = 'Created from');
        insert p;
        System.debug('Contact Name: '+ p);
        
        //Adding existing Account to the Contact
        Account x =[SELECT Id, Name FROM Account
                    		WHERE Name = 'Get Cloudy'
                    		LIMIT 1 ];
		//Id AcctId = x.Id;
        p.AccountId = x.Id;
        
        //Updating the contact with Account Name
        update p;
        
        //Checking the Account id on contact, get cloudy is equal
        Contact q = [SELECT Account.Name FROM Contact
                     			WHERE Id = :p.Id];
        
        System.debug('q.Account.Name:'+ q.Account.Name);
        System.debug('x.Name:'+ x.Name);
        System.assertEquals(x.Name, q.Account.Name);    // System.assertEquals('Get Cloudy', q.Account.Name');//System.assertEquals(Actual, Expected');
        
    }
}