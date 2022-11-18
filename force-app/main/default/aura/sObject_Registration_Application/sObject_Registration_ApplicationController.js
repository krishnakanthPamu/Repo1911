({
	openOrCloseRegistrationFormComponent : function(component, event, helper) {
        var a = component.get('v.buttonText');
        //var a = event.getSource().get('v.label');
        console.log(a);
       if(a == 'Open the Registration Form'){
            component.set('v.buttonText', 'Close the Registration Form'); 
            component.set('v.openOrCloseRegistrationForm',true);
        }
        else{
            component.set('v.buttonText','Open the Registration Form');
            component.set('v.openOrCloseRegistrationForm',false);
        
        }    
        
	}   
})