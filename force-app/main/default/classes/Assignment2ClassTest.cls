@IsTest // Annotation
public class Assignment2ClassTest {

    public static TestMethod void SamsungTest(){
    	Mobile__c a = new Mobile__c();
        a.Brand__c = 'Samsung';
        a.Price__c = 100;
        Insert a;
		Mobile__c b = [Select Price__c from Mobile__c where Id = :a.Id];
        System.assertEquals(90, b.Price__c);
    }
    Public static TestMethod void AppleTest(){
        Mobile__c a = new Mobile__c();
        a.Brand__c = 'Apple';
        a.Price__c = 100;
        Insert a;
        Mobile__c b = [Select Price__c from Mobile__c where Id = :a.Id];
        System.AssertEquals(80, b.Price__c);
    }
    
}