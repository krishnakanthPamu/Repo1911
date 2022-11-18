trigger deleteAccount on Account (before delete){
	checkDeleteAccount.method1(trigger.new, trigger.old);
}