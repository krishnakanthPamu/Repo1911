({
    showFilterBlock : function(component, event, helper) {
        
        if(event.getSource().get("v.label")== 'Click here to Filter'){
            document.getElementById('showFilterBlock').style.display="block";
            event.getSource().set("v.label", 'Remove Filter');
            //component.set('v.loadAllAccounts', false);
        }else{
            document.getElementById('showFilterBlock').style.display="none";
            event.getSource().set("v.label", 'Click here to Filter');
            //component.set('v.loadAllAccounts', true);
        }
    
    },
    
     
    
    sendFilterValues : function(component, event, helper) {
        debugger;
        console.log('in AccountsFilterComponentController sendFilterValues');        
        //Get the event
        var appEvent = $A.get("e.c:showAccountswWthFilter");
        
        //set the parameters in the event
        appEvent.setParams({
            "fieldName" : component.get('v.fieldName'),
            "condition" : component.get('v.condition'),
            "inputValue" : component.get('v.inputValue'),
        })
        //fire the event
        appEvent.fire();
    },
    
    showFilterBlockBasedOnPreviousLogin : function(component, event, helper) {
        
        //debugger;
        console.log('in AccountsFilterComponentController showFilterBlockBasedOnPreviousLogin test');      

        var showFilterBlock = component.get("v.childShowFilterBlock");
        //alert('boolean '+ showFilterBlock);
        if(showFilterBlock == true){
            console.log('in true block'); 
            document.getElementById('showFilterBlock').style.display="block";
        }else{
            console.log('in else block test5');
        }
    }
})