trigger Assignement1Trigger on Indeed_com_AppForm__c (Before Insert, Before Update) {

    if (Trigger.IsBefore == True && Trigger.IsInsert == True)
    {
        Assignement1Class.Assignment1Function(Trigger.New);
    }
    
    if (Trigger.IsBefore == True && Trigger.IsUpdate == True)
    {
        Assignement1Class.Assignment1Function(Trigger.New);
    }

}