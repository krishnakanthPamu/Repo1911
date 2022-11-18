public class SOQL101ErrorClass {
/*   
    //Creates Error
    public static void function1(){
        for (integer i=1; i<=101; i++){
                        Indeed_com_AppForm__c M = [SELECT Name FROM Indeed_com_AppForm__c  LIMIT 1];
            system.debug('Mobile Rec: '+ M);
            
        }
    }
    
*/
    @Future
    public static void function1(){
        for (integer i=1; i<=2002; i++){
                        Indeed_com_AppForm__c M = [SELECT Name FROM Indeed_com_AppForm__c  LIMIT 1];
            system.debug('Mobile Rec: '+ M);
            
        }
    }

  /*  
    public static void function2(){
        
        List<Mobile__c> MList = [SELECT Name FROM Mobile__c WHERE Name LIKE 'Mobile Name %'];
        for(Mobile__c M: MList){
        	System.debug('Mobile Rec: ' + M);
        }
    }
   */ 
}