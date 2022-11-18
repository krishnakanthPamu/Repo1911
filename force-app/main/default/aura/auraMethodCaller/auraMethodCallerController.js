({
    callAuraMethod : function(component, event, helper) {
        var childCmp = component.find('child');
        var auraMethodResult = childCmp.logParam1('message1 sent by parent component', 'message2 sent by parent component');
        console.log('auraMethodResult: ' + auraMethodResult.message1 + auraMethodResult.message2 );
    }
})