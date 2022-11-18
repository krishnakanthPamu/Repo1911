({
	logParam1 : function(component, event, helper) {
        var params = event.getParam('arguments');
        if(params){
            var message1 = params.message1;
            var message2 = params.message2;
            console.log('message1: '+message1);
            console.log('message2: '+message2);
            return params;
        }
	}
})