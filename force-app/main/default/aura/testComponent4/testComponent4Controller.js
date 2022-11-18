({
	init : function(component, event, helper) {
        var pageRef = component.get('v.pageReference');
       // alert(pageRef.state.c__firstName);
		component.set('v.fName', pageRef.state.c__firstName);	
        component.set('v.lName', pageRef.state.c__lastName);	
	}
})