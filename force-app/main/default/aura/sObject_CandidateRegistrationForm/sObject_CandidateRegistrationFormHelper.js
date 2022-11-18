({
	helperCheckboxFunction : function(compt, helper) {
        console.log('In helper');
        
        var testCheckedBox = compt.find("checkboxId1").get("v.checked");
        compt.set('v.weekendsAttend', testCheckedBox); 
        compt.set('v.Candidate_Detail__c.Are_you_ready_to_attend_on_weekends__c', true);
        /*
        var a= compt.get('v.Candidate_Detail__c.Are_you_ready_to_attend_on_weekends__c');
        console.log('a: '+ a);
        var b = true;
        compt.set('v.Candidate_Detail__c.Are_you_ready_to_attend_on_weekends__c', b);
        console.log('testCheckedBox: '+ testCheckedBox);
        console.log('v.weekendsAttend: '+ compt.get('v.weekendsAttend'));
        console.log('Candidate_Detail__c.Are_you_ready_to_attend_on_weekends__c: '+ a);
         */           		
        /*       
        if(testCheckedBox==true){        
            compt.set('v.weekendsAttend', testCheckedBox); 
            compt.set('v.Candidate_Detail__c.Are_you_ready_to_attend_on_weekends__c', testCheckedBox);
        }
        else{
            compt.set('v.weekendsAttend', testCheckedBox);
            
        }
        */
        
	}
})