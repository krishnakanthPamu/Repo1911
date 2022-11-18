global class TestBatchClass2 implements Database.Batchable<sObject>,database.stateful{
    
    global Database.QueryLocator Start(Database.BatchableContext BC){
        string Qry1 = 'SELECT Name,Price__c FROM Mobile__c';
        SYSTEM.debug('Query output:'+Database.getqueryLocator(qry1));
        return Database.getQueryLocator(Qry1);
    }
    
    global void execute(Database.BatchableContext BC, List<Mobile__c> MList){
        for(Mobile__c m: MList){
            //System.debug('MList: '+MList); //not displayig but no error shown while executing..
            if(m.Price__c == null)
                m.Price__c = 0;
           // if(m.Name=='Mobile Name151')
             //   m.Price__c = 0;
        }
        update MList;
    }
    
    global void finish(Database.BatchableContext BC){
        
    }

}