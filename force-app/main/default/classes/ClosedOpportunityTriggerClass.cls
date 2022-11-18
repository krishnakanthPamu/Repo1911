// TH Challenge
// https://trailhead.salesforce.com/content/learn/modules/apex_triggers/apex_triggers_bulk?trailmix_creator_id=journey2salesforce&trailmix_slug=automation    

public  class ClosedOpportunityTriggerClass {
    public static void addTask(List<Opportunity> OList){

        map<id, Opportunity> OMap = new map<id, Opportunity>([SELECT Id, StageName, (SELECT Subject, Id FROM Tasks) FROM Opportunity 
                                                              WHERE ID IN:OList AND StageName='Closed Won']);
		
    //    system.debug('OMap:' + OMap.size());
        List<Task> TList = New List<task>();
        
    //    If(OMap.size() <>0){
        	for(Opportunity a: OList){
                if (a.StageName == 'Closed Won' && OMap.get(a.Id).Tasks.size()==0){
    //                System.debug('Number of tasks to the Opty: '+ OMap.get(a.Id).Tasks.size());
                    Task t = new Task();
                    t.subject = 'Follow Up Test Task';
                    t.WhatId = a.Id;
                    TList.add(t);
                }
            		
        	}
            Insert TList;
     //   }
        
        
        
    }

}