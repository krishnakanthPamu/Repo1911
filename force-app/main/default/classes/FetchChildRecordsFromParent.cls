public class FetchChildRecordsFromParent {
    
    public static void FetchFromSingleRecord(){
        Account Acct = [Select id,(Select id from contacts) from account where name='get cloudy'];
        Integer i;
        //for (Account a: AccountsList){
            System.debug('Acct: '+ Acct); // Gives the Account
        	System.debug('Acct.contacts: '+ Acct.contacts); //Gives the contacts related to the account
        	System.debug('Acct.contacts.Count: '+ Acct.contacts.size()); //Number of Contacts in Related Account
        //}
    }
    
    public static void FetchFromList1(){
        List<Account> AccountsList = [Select id,(Select id,Name from contacts) from account where name='get cloudy'];
        Integer i=0;
        for (Account a: AccountsList){
            System.debug('AccountsList[i] '+ AccountsList[i]);//==AccountsList.get(i)
        	System.debug('AccountsList[i].contacts '+ AccountsList[i].Contacts); //~~AccountsList.get(i).Contacts
        	System.debug('AccountsList[i].contacts.Count: '+ AccountsList[i].contacts.size());//~~AccountsList.get(i).Contacts.size()
        	//i++;
        	i = i+1;
        }
      }

        public static void FetchFromList2(){
        List<Account> AccountsList = [Select id,(Select id,Name from contacts) from account];
        Integer i=0;
        for (Account a: AccountsList){
            System.debug('AccountsList[i] '+ AccountsList[i]);
        	System.debug('AccountsList[i].contacts '+ AccountsList[i].Contacts);
        	System.debug('AccountsList[i].contacts.Count: '+ AccountsList[i].contacts.size());
            
            for(Contact c: AccountsList[i].Contacts){
                System.debug('fetching individual records in an account:'+ c);//AccountsList[i].Contacts[j] also works
            }
        	//i++; // not working
        	i = i+1;
        }
      }

}