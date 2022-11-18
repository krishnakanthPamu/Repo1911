({
	handleClick : function(component, event, helper) {
		var clickEvent = event.getSource();
        
        component.set('v.text', event.getSource().get('v.label') );
	}
})