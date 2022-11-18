trigger TriggerNewAndTriggerOldTrigger on Account (before update) {
    TriggerNewAndTriggerOldClass.compare1(trigger.new, trigger.oldMap);

}