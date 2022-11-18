global class TestScheduleClass implements Schedulable {
    
    global void execute(SchedulableContext SC){
        
        TestBatchClass1 bc1 = New TestBatchClass1();
        Database.executeBatch(bc1,250);
    }
}