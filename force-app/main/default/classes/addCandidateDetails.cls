public class addCandidateDetails{
    
    @AuraEnabled
    public static id insertCandidateDetails(Candidate_Detail__c temp){
        //public static void insertCandidateDetails(string temp){
        
        system.debug('temp: '+ temp);
        //temp.Are_you_ready_to_attend_on_weekends__c = true;
        insert temp;
        return temp.id;
    }
    
    @AuraEnabled
    public static id insertEducationDetails(Education_Detail__c temp1){
        //public static void insertCandidateDetails(string temp){
        
        system.debug('temp: '+ temp1);
        //temp.Are_you_ready_to_attend_on_weekends__c = true;
        try{
            insert temp1;
        }catch(exception e){
            system.debug('exception is: '+ e);
        }
        	
        return temp1.id;
    }
}