trigger addErrorBeforeDeleteTrigger on Account (before delete) {
        /*for(account a: [SELECT Id, Name FROM Account WHERE ID IN  (SELECT accountId from Opportunity) 
                                                      AND  ID IN : Trigger.oldMap.keyset()])
        {
        
            Trigger.oldMap.get(a.Id).addError('Error from Trigger: it has child records, You cannot delete this record...');
        }
        */
        //Error from APEX Class
        addErrorBeforeDeleteClass.f1(trigger.old, trigger.oldMap);
}