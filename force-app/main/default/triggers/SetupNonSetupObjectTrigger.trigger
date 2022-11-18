trigger SetupNonSetupObjectTrigger on Indeed_com_AppForm__c (before insert, before update) {
    
  
    if(trigger.IsBefore == true && (trigger.IsInsert == True || trigger.IsBefore == True)){
        SetupNonSetupObjectApex.Function1();
    }
 

}