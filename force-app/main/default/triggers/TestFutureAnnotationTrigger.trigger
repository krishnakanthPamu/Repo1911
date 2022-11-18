Trigger TestFutureAnnotationTrigger on Indeed_com_AppForm__c (Before Insert,Before Update) {

    
    /*
    if(trigger.IsBefore == true && (trigger.IsInsert == True || trigger.IsBefore == True)){
        TestFutureAnnotationApex.Function1(Trigger.New);
    }
    
 */   
    
   if(trigger.IsBefore == true && (trigger.IsInsert == True || trigger.IsBefore == True)){ 
        For(Indeed_com_AppForm__c Record1 : Trigger.new){
            if (Record1.Experience__c == 15){
                Record1.Experience__c = 3;
            }
          // update Record1;
        }
   }
}