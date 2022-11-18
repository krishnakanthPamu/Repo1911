global class TestBatchClass1 implements Database.Batchable<sObject>,database.stateful {
    
    //Global integer recordsProcessed = 0; //It can be used to track number of records updated (To track this, we have to use database.Stateful)
    Global Database.QueryLocator start(Database.BatchableContext BC){
        //List<account> AList = [select Name, id, Phone FROM Account];
        string qName = 'select Name, id, Phone, Industry FROM Account WHERE Phone= \'0234567890\' ';
        return Database.getQueryLocator(qName);
    }
    
    Global void Execute(Database.BatchableContext BC, List<Account> AList){
        for(Account a : AList){
            if( a.phone== '0234567890')
                a.phone= '5778443254';
            	//recordsProcessed = recordsProcessed + 1;
        }
        update AList;
    }
    
    Global void Finish(Database.BatchableContext BC){
        //sending email.. etc.,
        AsyncApexJob jobInfo = [SELECT Id, Status, numberOfErrors, JobItemsProcessed FROM AsyncApexJob WHERE Id = :bc.getJobId()];
        System.debug('jobInfo: '+jobInfo);
        
        //recordsProcessed field can be used when sending the mail to anyone.
    }

}