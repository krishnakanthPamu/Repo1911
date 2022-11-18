public class InsertingSingleRelatedRecord {
    
    public static void function1(){
        try{
            account acct = new account();
            acct.Name='Test Adding Related Record';
            acct.Industry='Consultancy';
            
            insert acct;
            //once the acct is inserted then sObject is populated with the account id. Use that id and assign it to required contact.
            
            id acctId = acct.id;
            
            contact c = new contact();
            c.firstName='Test Adding Related Record';
            c.LastName='1';
            c.AccountId = acctId;
            Insert c;
        }
        catch(dmlException e){
            	system.debug('An unexpected error has occured: '+e.getMessage());
            }
    }
    

}