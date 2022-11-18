Public Class CheckTriggerClass
{
   Public Static void BeforeInsertFn(list<Indeed_com_AppForm__c> abcd)
   {
      for (Indeed_com_AppForm__c i: abcd)
      {
       //if (i.Experience__c > 10)
          i.Salary_Expected__c = i.Salary_Expected__c - 2000;
      }
   }
   Public Static void BeforeUpdateFn(list<Indeed_com_AppForm__c> abcd)
   {
      for (Indeed_com_AppForm__c i: abcd){
     //  if (i.Experience__c > 10)
          i.Salary_Expected__c = i.Salary_Expected__c -2000;
      }
   }
}