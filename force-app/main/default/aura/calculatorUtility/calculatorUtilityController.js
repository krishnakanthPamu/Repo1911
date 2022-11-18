({
    add : function(component, event, helper) {
        var number1 = component.get('v.number1');
        var number2 = component.get('v.number2');
        component.set('v.result', parseInt(number1) + parseInt(number2));
        var id1component = component.find('nid1');
        alert('hi');
        alert(id1component.get('v.value'));

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