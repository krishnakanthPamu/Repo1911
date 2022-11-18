public class apexControllerLazyComponent {
    @auraEnabled
    public static list<opportunity> getOpportunity(integer limits){
        return [SELECT Id, Name, AccountId, StageName, CloseDate, Account.Name FROM Opportunity LIMIT :integer.valueof(limits)];
    }
    
    @auraEnabled
    public static integer totalOpportunity(){
        aggregateResult result = [SELECT Count(Id) totalNoOfOpporunities FROM Opportunity];
        Integer totalNoOfOpportunities = (Integer) result.get('totalNoOfOpportunities');	
        return totalNoOfOpportunities;
    }
    @auraEnabled
    public static list<opportunity> getOpportunities(){
        list<opportunity> oppList = [SELECT Id, Name, StageName FROM Opportunity];
        system.debug('total opps When Fetched: ' + oppList.size());
        return oppList;
    }
    
    @auraEnabled
    public static list<opportunity> deleteOpportunities(list<id> deletedOppsIds){
        system.debug('dd ids: '+ deletedOppsIds);
        list<opportunity> opptsToBeDeleted = [SELECT Id, Name, StageName FROM Opportunity WHERE Id IN : deletedOppsIds];
        if(!deletedOppsIds.isEmpty()){
            Database.DeleteResult[] drList = Database.delete(opptsToBeDeleted, false);
            for(Database.DeleteResult dr : drList) {
                if (dr.isSuccess()) {
                    // Operation was successful, so get the ID of the record that was processed
                    System.debug('Successfully deleted account with ID: ' + dr.getId());
                }
                else {
                    // Operation failed, so get all errors                
                    for(Database.Error err : dr.getErrors()) {
                        System.debug('The following error has occurred.');                    
                        System.debug(err.getStatusCode() + ': ' + err.getMessage());
                        System.debug('Account fields that affected this error: ' + err.getFields());
                    }
                }
            }
            
        }
        //return [SELECT Id, Name, StageName FROM Opportunity];
        list<opportunity> oppList = [SELECT Id, Name, StageName FROM Opportunity];
        system.debug('total opps after Deleted: ' + oppList.size());
        return oppList;
    }
}