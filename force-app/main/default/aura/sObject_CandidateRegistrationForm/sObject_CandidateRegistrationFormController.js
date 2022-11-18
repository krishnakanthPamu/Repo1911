({
    submitFunction : function(cmpt, evt, helpr) {
        var a = cmpt.get('v.candidateDetails');
        console.log('in submitfunction : ');
        
        //call apex class
        var action = cmpt.get('c.insertCandidateDetails');
        
        //parse the parameters to the apex class
        action.setParams({
            temp : a 
        });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                // Alert the user with the value returned 
                // from the server
                alert("From server: " + response.getReturnValue());
                var pId = response.getReturnValue();
                alert("after response received: pId: "+ pId);
 				cmpt.set('v.parentId',pId);
                alert("after passing id to parentId: "+ cmpt.get('v.parentId'));

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
        
        /*
        var x = cmpt.get("v.studentName"); 
        
        if (x=='Krishnakanth'){
            alert('submit is working...! You have entered: Krishanakanth');
            cmpt.set('v.studentName', 'Pamu');
        }
        else{
            alert('submit is working...! You have entered other than Krishanakanth');
            cmpt.set('v.studentName', 'Krishnakanth');
        }*/
    },
    
    myCheckboxAction:function(cmpt2, event2, helper2){
        console.log("This text is from Controller");
        helper2.helperCheckboxFunction(cmpt2,event2);
    },
    
    showEducationFunction:function(c1, e1, h1){
        console.log("control came to 'showEducationFunction' of 'CandidateRegistrationForm Component' ");
        var eList = c1.get('v.educationalDetailsList');
        var listSize = parseInt(eList.length) + 1;
        eList.push(listSize);
        c1.set('v.educationalDetailsList', eList);
    }
})