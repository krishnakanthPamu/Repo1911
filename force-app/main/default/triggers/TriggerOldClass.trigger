trigger TriggerOldClass on Indeed_com_AppForm__c (Before Update) 
{

//    TriggerOldClass.Function1(Trigger.New);

 for (Indeed_com_AppForm__c a: Trigger.Old)
 {
    System.Debug('New Value: ' + a); //17:43:15:033 USER_DEBUG [7]|DEBUG|New Value: Indeed_com_AppForm__c:{Id=a006F00003QIadvQAD, OwnerId=0056F00000AfuPaQAJ, IsDeleted=false, Name=Form-54, CreatedDate=2020-03-13 12:51:37, CreatedById=0056F00000AfuPaQAJ, LastModifiedDate=2020-03-14 12:11:39, LastModifiedById=0056F00000AfuPaQAJ, SystemModstamp=2020-03-14 12:11:39, LastActivityDate=null, LastViewedDate=null, LastReferencedDate=null, First_Name__c=First Name, Last_Name__c=Last Name, Reason__c=null, Other__c=null, Gender__c=Male, Preferred_Country__c=null, Languages_Known__
    System.Debug('New Value: ' + a.Gender__C); //17:43:15:033 USER_DEBUG [8]|DEBUG|New Value: Male
 }

}