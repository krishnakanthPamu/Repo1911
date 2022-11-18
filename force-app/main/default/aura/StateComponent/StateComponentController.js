({
	MPstatefunction : function(component, event, helper) {
		alert("Medium priority complaint received at state level...!");
        console.log("Medium Priority complaint received at State: " + event.getParam("eventAttribute"));
	},
    
    HPstatefunction : function(component, event, helper) {
		alert("High priority complaint received at state level...!");
        console.log("High Priority complaint received at State: " + event.getParam("eventAttribute"));
	}
})