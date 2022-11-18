({
    add : function(component, event, helper) {
        var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        component.set('v.result', parseInt(number1) + parseInt(number2));

    },
    sub : function(component, event, helper) {
        var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        component.set('v.result', parseInt(number1) - parseInt(number2));
    },
    mul : function(component, event, helper) {
        var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        component.set('v.result', parseInt(number1) * parseInt(number2));
    },
    div : function(component, event, helper) {
        var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        component.set('v.result', parseInt(number1) / parseInt(number2));
    }
})