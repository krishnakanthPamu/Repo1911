trigger accountTrigger on Account (before insert) {
    
    system.debug('in account trigger');

    if(trigger.isInsert == true && trigger.isBefore == true){
        accountTriggerHandler.beforeInsert(trigger.new);
    }
    
}