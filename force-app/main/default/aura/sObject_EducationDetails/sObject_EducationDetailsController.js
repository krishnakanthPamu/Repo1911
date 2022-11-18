({
    deleteEducationDetails : function(c1, e1, h1) {
        var a = c1.get('v.educationDetailsComponentList');
        console.log("ctrl in 'deleteEducationDetails' Component");
        var currentIndex = c1.get('v.indexNo');
        console.log('current index number'+ currentIndex);
        
        if(currentIndex > -1)
            a.splice(currentIndex,1);
        
        c1.set('v.educationDetailsComponentList', a);
    },
    
    doInit:function(c2, e2, h2){
        console.log('This text is from doInit Function');
        c2.set("v.collegeName", "Pre filling is doing using 'init' handler from 'EducationDetails' component which call 'EducationDetailsController'");
        h2.rectifyIndexNumber (c2, e2, h2);
    },
    
    doChangeFunction:function(c3, e3, h3){
        console.log("ctrl in 'doChangeFunciton' of 'EducationDetails' component");
        h3.rectifyIndexNumber (c3, e3, h3);
    },
    
    saveEducationDetails:function(c3, e3, h3){
        var candidateRegId = c3.get('v.parentIdChild');
        alert('control in edu ctrlr parent inserted:'+ candidateRegId);
        c3.set('v.eduDetails.Candidate_Detail__c', candidateRegId ) ;
        
        var a = c3.get('v.eduDetails');
        
        var action = c3.get('c.insertEducationDetails');
        action.setParams({
            temp : a 
        });
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            alert(state);
            if (state === "SUCCESS") {
                // Alert the user with the value returned 
                // from the server
                alert("From server in education details ctrlr: " + response.getReturnValue());
                
                
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
                else if (state === "ERROR") {
                    var errors = response.getError();
                    if (errors) {
                        if (errors[0] && errors[0].message) {
                            console.log("Error message: " + 
                                        errors[0].message);
                        }
                    } else {
                        console.log("Unknown error");
                    }
                }
        });
        //As it is Asynchronous call, put it in the queue.
        $A.enqueueAction(action);	
        
    },
    
})