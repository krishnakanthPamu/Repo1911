({
    handleOnLoad : function(component, event, helper) {
        component.find('industry').set('v.value', 'My Account');
    },
    
    handleSuccess : function(component, event, helper) {
        component.find('fieldName').set('v.value', 'My Account');
    },
    
    handleError : function(component, event, helper) {
        component.find('fieldName').set('v.value', 'My Account');
    }
    
})