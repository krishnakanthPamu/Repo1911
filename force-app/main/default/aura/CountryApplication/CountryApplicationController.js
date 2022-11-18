({
	HPcountryfunction : function(component, event, helper) {
		alert("High priority complaint received at country level...!");
        console.log("High priority complaint received at country level  :" + event.getParam("eventAttribute"));
	}
})