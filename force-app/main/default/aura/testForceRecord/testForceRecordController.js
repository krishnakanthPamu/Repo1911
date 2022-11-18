({
	handleUpdatedRecord : function(component, event, helper) {
		var eventParams = event.getParams();
        if(eventParams.changeType === "LOADED") {
           // record is loaded (render other component which needs record data value)
            console.log("Record is loaded successfully.");
            console.log("You loaded a record in " + 
                        component.get("v.accountRecord.Industry"));
        } else if(eventParams.changeType === "CHANGED") {
            // record is changed
            // record is loaded (render other component which needs record data value)
            console.log("Record is changed successfully.");
            console.log("You changed a record in " + 
                        component.get("v.accountRecord.Industry"));
        } else if(eventParams.changeType === "REMOVED") {
            // record is deleted
        } else if(eventParams.changeType === "ERROR") {
            // there’s an error while loading, saving, or deleting the record
        }
	}
})