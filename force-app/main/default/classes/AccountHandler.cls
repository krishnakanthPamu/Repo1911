public class AccountHandler {
    public static void insertAccount(integer numberOfAccounts){
        List<Account> addAccounts = new List<Account>();
        integer n = 1;
        while(n<4){
            account acct = new account();
            acct.Name = 'Acme Inc '+ n ;
            acct.AccountNumber = 'A000' + n;
            addAccounts.add(acct);
            n = n+1;
        }
        insert addAccounts;
    }

}