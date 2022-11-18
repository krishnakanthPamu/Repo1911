//public class batchApexClass implements database.Batchable<sobject>, database.stateful {
public class batchApexClass implements database.Batchable<sobject>, database.stateful {
   /*
    // ************* Database.QueryLocator ****************** 
    public database.QueryLocator start(database.BatchableContext BC){
        string query = 'SELECT Id, name from account limit 10';
        return database.getQueryLocator(query);
    }
    */
    
    // ************* Itearable ******************************
    
    public iterable<sobject> start (database.BatchableContext bc){
        list<account> LAccts = [SELECT Id, Name FROM Account ORDER BY NAME DESC LIMIT 10];
        return LAccts;
    }
    
    public void execute(database.BatchableContext bc, list<account> acctsList){
        for (account acct: acctsList){
            acct.name = 'Iterable batch test 1';
        }
        update acctsList;
    }
    
    public void finish(database.BatchableContext bc){
        system.debug('success...!');
    }
	
}