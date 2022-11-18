({
    getContactshelpr : function(component, event) {
        var action = component.get("c.getContacts");
        //action.setParams({
        //    'apexFieldName1': component.get("v.value1"),
        //});
        //
        action.setCallback(this, function(response){
            var state = response.state();                         
            if (state=='SUCCESS'){
                component.set('v.contact', response.getReturnValue());
            }
        });
    },
})