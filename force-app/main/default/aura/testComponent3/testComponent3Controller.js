({
    init : function(component, event, helper) {
        var pageRef = {    
            "type": "standard__component",
            "attributes": {
                "componentName": "c__testComponent4"    
            }, 
            "state" : {
                "c__firstName" : "Krishnakanth",
                "c__lastName" : "Pamu"
            }
        }
        component.set('v.pageReference', pageRef);
        var defaultUrl = '#';
        
        //Generate Link for the Aura Link example
        var navService = component.find('navService');
        navService.generateUrl(pageRef)
        .then($A.getCallback(function(url){
            component.set("v.url", url ? url : defaultUrl);
        }), $A.getCallback(function(error){
            component.set("v.url", defaultUrl);
        }));
    },
    
    navigate :  function(component, event, helper) {	
        var pageRef = component.get('v.pageReference');
      //  var fName = 'Krishnakanth';
       // pageRef.state = {"c__firstName" : fName };
        
        var navService = component.find('navService');
        navService.navigate(pageRef);
    }
})