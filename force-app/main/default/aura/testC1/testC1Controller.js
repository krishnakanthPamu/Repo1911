({     
    startMethod : function(component, event, helper) {
        var testEvent = component.get('e.c:testEvent');
        //var testEvent = component.getEvent('testEvent');
        testEvent.fire();
    },
    handleEvent : function (c , e, h){
        debugger;
        var message = e.getParam('message');
        console.log('In tc1: ' + message);
        debugger;
    }
})