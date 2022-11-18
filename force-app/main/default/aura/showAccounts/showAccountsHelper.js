({
	fetchAccounts : function(component, event) {
		// create a one-time use instance of the serverEcho action
        // in the server-side controller
        //debugger;
        console.log('in show Accounts Helper');
        var action = component.get("c.getAccounts");
        //action.setParams({ firstName : component.get("v.firstName") });
 
        // Create a callback that is executed after 
        // the server-side action returns
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                // Alert the user with the value returned 
                // from the server
                //alert("From server: " + response.getReturnValue());
                //debugger;
 				component.set("v.accountsWrapper", response.getReturnValue());
                // You would typically fire a event here to trigger 
                // client-side notification that the server-side 
                // action is complete
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
 
        // optionally set storable, abortable, background flag here
 
        // A client-side action could cause multiple events, 
        // which could trigger other events and 
        // other server-side action calls.
        // $A.enqueueAction adds the server-side action to the queue.
        $A.enqueueAction(action);
        
	}, 
    
    getFilteredRecordsHelper : function(component, event) {
        console.log('in show Accounts ctlr getFilteredRecords');
        
        var action = component.get('c.filteredAccountsMethod');
        
        action.setParams({
            "fieldName":event.getParam("fieldName"),
            "condition":event.getParam("condition"),
            "inputValue":event.getParam("inputValue")
        });
        
        action.setCallback(this, function(actionResult){
            component.set('v.accountsWrapper', actionResult.getReturnValue());
        });
        
        $A.enqueueAction(action);
    }
})