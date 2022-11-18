public class TestFutureAnnotationApex {
    
    Public static void Function1(List<Indeed_com_AppForm__c> List1){
        
        For(Indeed_com_AppForm__c Record1 : List1){
            if (Record1.Experience__c == 15){
                Record1.Experience__c = 3;
            }
           update Record1;
        }
    }
/*	

        List<Indeed_com_AppForm__c> List2 = New List<Indeed_com_AppForm__c> ();
        
        
        For(Indeed_com_AppForm__c Record1 : List1){
			if (Record1.Experience__c == 15){
                Record1.Experience__c = 3;   
            }   
                List2.add(Record1);
           //update Record1;
        }
        update List2;

*/

 /*
    @Future
    Public static void Function2(List<Indeed_com_AppForm__c> List1){
        
        For(Indeed_com_AppForm__c Record1 : List1){
            if (Record1.Experience__c == 3){
                Record1.Experience__c = 15;
            }
            insert Record1;
        }
    }
*/   
}