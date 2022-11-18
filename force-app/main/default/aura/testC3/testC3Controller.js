({
    startMethod : function(component, event, helper) {
        var testEvent = $A.get('e.c:testEvent');
        //var testEvent = component.getEvent('testEvent');
        testEvent.setParams({
            message : "This is Event message"
        });
        testEvent.fire();
    },
    
    handleEvent : function (c , e, h){
        console.log('tc3');
    }
})