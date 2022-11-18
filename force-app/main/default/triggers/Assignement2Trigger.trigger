trigger Assignement2Trigger on Mobile__c (before insert,Before Update) {
   
    if (Trigger.IsInsert == True)
    Assignment2Class.Assignment2FunctionBeforeInsert(Trigger.New);

    if (Trigger.IsUpdate == True)
        Assignment2Class.Assignment2FunctionBeforeUpdate(Trigger.New);
}