public class testBatch1 implements database.batchable<sObject> {

    public database.querylocator start(database.batchablecontext bc){
        return Database.getQueryLocator(
            'SELECT ID, BillingStreet, BillingCity, BillingState, ' +
            'BillingPostalCode, (SELECT ID, MailingStreet, MailingCity, ' +
            'MailingState, MailingPostalCode FROM Contacts) FROM Account ' +
            'Where BillingCountry = \'USA\''
        );
    }
    
    public void execute(database.BatchableContext bc, list<account> scope){
        testFuture1.m1();
    }
    
    public void finish(database.batchableContext bc){
        
    }
}