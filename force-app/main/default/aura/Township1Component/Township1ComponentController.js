({
	LPcomplaint : function(component, event, helper) {
                
        //get the event
        var LPevent = component.getEvent("LPregisteredEvent");
        
        //set the attributes in event
        LPevent.setParams({"eventAttribute":"Complaint from TS1 about TS2"});
        
        //Fire the event
        LPevent.fire();
	},
    
    
	MPcomplaint : function(component, event, helper) {
                
        //get the event
        var MPevent = component.getEvent("MPregisteredEvent");
        
        //set the attributes in event
        MPevent.setParams({"eventAttribute":"MP Complaint from TS1 about TS2"});
        
        //Fire the event
        MPevent.fire();
	}, 
    
    HPcomplaint : function(component, event, helper) {
                
         //get the event
        var HPevent = component.getEvent("HPregisteredEvent");
        
        //set the attributes in event
        HPevent.setParams({"eventAttribute":"HP Complaint from TS1 about TS2"});
        
        //Fire the event
        HPevent.fire();
	},   
    
    MPHandlerFucntion: function(component, event, helper) {
        alert("Medium priority complaint received at Township1 level...!");
        console.log("Medium priority complaint received at Township 1: " + event.getParam("eventAttribute"));
        
	},
    
    HPHandlerFucntion: function(component, event, helper) {
        alert("High priority complaint received at Township1 level...!");
        console.log("High priority complaint received at Township 1:" + event.getParam("eventAttribute"));
        
	}
})