public class test1 {
    
    public static void f1(){
        //list<account> accts = [select id, name from account where id not in (select account.id from opportunity)];
        List<Account> acctsWithOpps = ([SELECT Id,Name, (Select Id, Name From Opportunities) FROM Account
                                                         						WHERE Name = 'Test Account 1'] );
        system.debug(acctsWithOpps);
    }

}