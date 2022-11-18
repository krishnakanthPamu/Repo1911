public class Assignment2Class {
    
    Public static void Assignment2FunctionBeforeInsert (List<Mobile__c> MobileRecords){
        for (Mobile__c j: MobileRecords){
            if (j.Brand__c == 'Samsung'){
                j.Price__c = j.Price__c * 0.9;
                j.Discount_Status__c = 'Congrats...! You got 10% Discount';
            }
            else if (j.Brand__c == 'Apple'){
                j.Price__c = j.Price__c * 0.8;
            	j.Discount_Status__c = 'Congrats...! You got 20% Discount';
            }
        }		 
    }

        Public static void Assignment2FunctionBeforeUpdate (List<Mobile__c> MobileRecords){
        for (Mobile__c j: MobileRecords){
            if (j.Brand__c == 'Samsung'){
                j.Price__c = j.Price__c * 0.95;
                j.Discount_Status__c = 'Congrats...! You got 5% Discount';
            }
            else if (j.Brand__c == 'Apple'){
                j.Discount_Status__c = 'Sorry...! You got 0% Discount because you requested discount after purchasing..!';
            } 
        }		
    }
}