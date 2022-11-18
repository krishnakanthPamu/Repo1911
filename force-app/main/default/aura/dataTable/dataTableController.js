({
    doInit: function (component, event, helper) {
        var action = cmp.get("c.serverEcho");
        action.setParams({ firstName : cmp.get("v.firstName") });
 
        // Create a callback that is executed after 
        // the server-side action returns
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                alert("From server: " + response.getReturnValue());
            }
            else if (state === "INCOMPLETE") {
                
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
 
        $A.enqueueAction(action);
        
        component.set('v.mycolumns', [
            {type: "button", typeAttributes: {
                iconName: 'utility:add',
                label: '',
                name: 'selectRecord',
                title: 'selectRecord',
                disabled: false,
                value: 'test',
                variant: {fieldName: 'variantValue'}
            }},
            {label: 'Resource', fieldName: 'Name', type: 'text'},
            {label: 'Comment', fieldName: 'Comment__c', type: 'text'},
            
        ]);
            },
})