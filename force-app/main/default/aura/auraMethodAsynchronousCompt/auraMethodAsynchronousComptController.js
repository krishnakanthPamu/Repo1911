({
	echo : function(component, event, helper) {
        var param = event.getParam('arguments');
        if(param){
            var callback = param.callback;
        }
        var action = component.get("c.serverEcho");
        //action.setParams({});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                if(callback)	callback(response.getReturnValue());
            }else if(state === 'INCOMPLETE'){
                //......
            }else if(state === 'ERROR'){
                var errors = response.getError();
                if(errors){
                    if(errors[0] && errors[0].message){
                        console.log('errors message: ' + errors[0].message);
                    }
                }else {
                    console.log('Unknown Error...!');
                }
            }
        });
        
        $A.enqueueAction(action);
	},
})