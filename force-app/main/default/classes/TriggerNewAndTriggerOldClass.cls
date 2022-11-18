public class TriggerNewAndTriggerOldClass {
    public static void compare1(list<account> newAccts, map<id, account> oldAccts){
        for(account a: newAccts){
            if(a.AccountNumber <> oldAccts.get(a.id).accountNumber){
                system.debug('account updated...');
            }
        }
    }
}