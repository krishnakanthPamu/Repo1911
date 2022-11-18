({
	myAction1 : function(component, event, helper) {
		
       var message1 = event.getParam("eText1");
       
       component.set("v.showMessage",message1);
        
	}
})