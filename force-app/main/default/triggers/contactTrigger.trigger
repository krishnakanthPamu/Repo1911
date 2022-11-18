trigger contactTrigger on Contact (before insert) {
	checkParentExist.method1(trigger.new);
}