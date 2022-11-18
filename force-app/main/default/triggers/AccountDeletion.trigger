trigger AccountDeletion on Account (before delete) {
   system.debug('Trigger.New'+trigger.new);
    system.debug('Trigger.old'+trigger.old);
    // Prevent the deletion of accounts if they have related opportunities.
    for (Account a : [SELECT Id FROM Account
                     WHERE Id IN (SELECT AccountId FROM Opportunity) AND
                     Id IN :Trigger.old]) {
        Trigger.oldMap.get(a.Id).addError(
            'Cannot delete account with related opportunities.');
    }
    
}