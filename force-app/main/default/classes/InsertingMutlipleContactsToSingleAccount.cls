public class InsertingMutlipleContactsToSingleAccount {
    
    public static void f1(){
        try{
            account acct = new account();
            acct.name='Brightful';
            
            insert acct;
            
            id acctId = acct.Id;
            
            list<contact> cList = new list<contact>();
            
            for(integer i=1; i<=5; i++){
                contact c = new contact();
                c.FirstName = 'Brightful';
                c.LastName = 'Contact ' + i;
                c.AccountId = acctId;
                
                cList.add(c);
            }
            system.debug('clist: '+clist);
            insert cList;
        }
        catch(dmlException e){
            system.debug('An error has occured: '+e.getMessage());
        }
    }

}