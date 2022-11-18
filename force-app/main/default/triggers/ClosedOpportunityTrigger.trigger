trigger ClosedOpportunityTrigger on Opportunity (After Insert, After Update) {

    if(trigger.isAfter == True)
        ClosedOpportunityTriggerClass.addTask(Trigger.new);

}