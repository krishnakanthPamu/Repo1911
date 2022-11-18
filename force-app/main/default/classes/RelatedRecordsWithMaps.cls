public class RelatedRecordsWithMaps {
    
    public static void function(){
         
        //Map<Id,Account> AMap = [SELECT Id, (SELECT Id FROM Contacts) FROM Account];//Will give error, List to Map conversion needed.
		List<Account> AList = [SELECT Id, (SELECT Id FROM Contacts) FROM Account ORDER BY Id];
		System.debug('AList: '+ AList);

		Map<Id,Account> AMap =New Map<Id,Account>([SELECT Id,Name,(SELECT Id,Name FROM Contacts) FROM Account WHERE Id IN :AList ORDER BY Id]);
		System.Debug('AMap: '+ AMap);

		For(Account a: AList){
    		
            System.debug('Accounts: '+ a);
            System.debug('Account '+ AMap.get(a.Id)); // ~~ AList.get(0);
            System.debug('Contacts related to Account: ' + AMap.get(a.Id).Contacts);
            System.debug('Number of contacts in Related Acount: '+ AMap.get(a.Id).Contacts.size());
            

            Integer i=0;
            For (Contact c: AMap.get(a.Id).Contacts){
            	System.debug('Related Contact: '+ C);  
                
            }
            
        }
    }

}