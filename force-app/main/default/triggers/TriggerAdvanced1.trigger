Trigger TriggerAdvanced1 on Indeed_com_AppForm__c (Before Insert, Before Update)
{
    if (Trigger.IsBefore == True && Trigger.IsInsert == True)
        CheckTriggerClass.BeforeInsertFn(Trigger.New);
    if (Trigger.IsBefore == True && Trigger.IsUpdate == True)
        CheckTriggerClass.BeforeUpdateFn(Trigger.New);
}