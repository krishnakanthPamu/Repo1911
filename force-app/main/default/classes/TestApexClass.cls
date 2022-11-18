public class TestApexClass {
    
    Public Static Void TestFunction1(List<Indeed_com_AppForm__c> IndeedRecords){
        
        For(Indeed_com_AppForm__c a: IndeedRecords)//Indeed_com_AppForm__c a = New Indeed_com_AppForm__c (); a = Trigger.New[0]
       {
        if (a.Experience__c == 5)
            a.Salary_Expected__c = 123456789;
            system.debug('a.Salary_Expected__c: '+a.Salary_Expected__c);
        }  
    }
    
    Public Static Void TestFunction2(){
       Mobile__c b = new Mobile__c();
       b= [select Id, brand__c FROM Mobile__c where Brand__c = 'Samsung' LIMIT 1];
       b.Brand__c = 'Apple';
        Update b;
    }

}