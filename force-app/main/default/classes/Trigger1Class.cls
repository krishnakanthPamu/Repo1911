Public Class Trigger1Class {

    public Static void Trigger1Function(list<Indeed_com_AppForm__c> abcd){
    
       for(Indeed_com_AppForm__c a: abcd){
           a.Salary_Expected__c = a.Salary_Expected__c - 2000;
       }    
    }
}