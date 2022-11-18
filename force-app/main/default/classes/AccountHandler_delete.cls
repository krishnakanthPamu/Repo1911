public class AccountHandler_delete {
    Public static Account insertNewAccount (String AccountName){
        try {
            Account Acct = New Account();
        	Acct.Name = AccountName;
       		insert Acct; // If we dont write this statement then if we give empty string then this code will not work;
            return Acct;
        }catch (DmlException e) {
    		System.debug('A DML exception has occurred: ' +
                e.getMessage());
        	return null;
         }
        
    }

}