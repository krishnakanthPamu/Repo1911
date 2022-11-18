trigger Test1 on Indeed_com_AppForm__c (Before Update, After Update) {

    if (Trigger.IsBefore== True && Trigger.IsUpdate == True)
        TestApexClass.TestFunction1(Trigger.New); // Indeed record, exp = 5, sal =123456789
    
    if (Trigger.IsAfter == True && Trigger.IsUpdate == True)
        TestApexClass.TestFunction2();  // Mobile, Brand__c =samsung, Brand = apple
}