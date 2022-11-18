public class accountTriggerHandler {
    public static void beforeInsert(list<account> acctsList){
        list<account> updatedAcctsList = new list<account>();
        
        for(account a : acctsList){
            a.AccountNumber = '1234567890';
            system.debug('a.number->' + a.AccountNumber);
            updatedAcctsList.add(a);
        }
    }

}