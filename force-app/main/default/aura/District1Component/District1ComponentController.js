({
	LPhandleFunction : function(component, event, helper) {
        alert('Low priority complaint received at district level...!');
        console.log("Low priority complaint received at District: "+ event.getParam("eventAttribute"));
       
	},
    
	MPhandleFunction : function(component, event, helper) {
        alert('Medium priority complaint received at district level...!');
        console.log("Medium priority complaint received at District: "+ event.getParam("eventAttribute"));
        
        console.log("Source Component Info: " + event.getSource());
        console.log("Source Component: "+ event.getSource().getName());
        
        event.pause();
        //Analysis - Generally server side controller mostly, else client-side controller
        //
        event.stopPropagation();
        event.resume();
	},
    
    
	HPhandleFunction : function(component, event, helper) {
        alert('High priority complaint received at district level...!');
        console.log("High priority complaint received at District: "+ event.getParam("eventAttribute"));
	},    
})