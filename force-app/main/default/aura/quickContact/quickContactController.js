({
    createContact : function(component, event, helper) {
        alert('accountId; ' + component.get('v.accountId'));
        var action = component.get('c.createQuickContactMethod');
        action.setParams({
            cont  : component.get('v.contact'),
            acctId : component.get('v.accountId')
        });
        
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === 'SUCCESS'){
                alert('contact created successfully...!');
                //component.set('v.contact', ' ');
                var createdContact = response.getReturnValue();
                alert(createdContact.Phone);
                //firing the event
                var evt = component.getEvent('quickContactEvent');
                evt.setParams({
                    'contact' : createdContact
                    });
                evt.fire();
                
                
            }else if (state === 'INCOMPLETE' || state === 'DRAFT'){
                alert('incomplete');
            }else if (state === 'ERROR'){
                alert('error');
                var errors = response.getError();
                if(errors ){
                    if(errors[0] && errors[0].message){
                        console.log('Error Message: ' + ERROR[0].message);
                    }
                } else{
                    console.log('Unknown Error');
                }
            }
        });
        $A.enqueueAction(action);
    }
})