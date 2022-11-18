({
    doInit : function(component, event, helper) {
        var action = component.get('c.getContactsMethod');
        
        action.setParams({
            "accId" : component.get("v.recordId")
        });
        
        action.setCallback(this, function(response){
            if(response.getState() == 'SUCCESS'){
                component.set('v.contacts', response.getReturnValue());
                
            }
        })
        
        $A.enqueueAction(action);
    },
    
    redirect : function(c, e, h) {
        var eventSource = e.getSource();
        var id = eventSource.get('v.name');
        
        var navEvent = $A.get("e.force:navigateToSObject");
        navEvent.setParams({
            "recordId": id,
            "slideDevName": "detail"
        });
        navEvent.fire();
        /*
        var pageRef = {    
            "type": "standard__recordPage",
            "attributes": {
                "recordId": id,
                "objectApiName": "Contact",
                "actionName": "view"
            }
        }
        c.set('v.pageReference', pageRef);
        var navService = c.find('navService');
        var pr = c.get('v.pageReference');
        e.preventDefault();
        navService.navigate(pr);
        */
    },
    
    handleQuickContactEvent : function(component, event, helper){
       
        var newContact = event.getParam('contact');
        var conList = component.get('v.contacts');
        conList.push(newContact);
        component.set('v.contacts', conList);
    }
})