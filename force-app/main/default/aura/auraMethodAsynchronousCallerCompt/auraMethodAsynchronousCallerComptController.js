({
	callAsync : function(component, event, helper) {
		var childCompt = component.find('child');
        childCompt.echo(function(result) {
            console.log("callback for aura:method was executed");
            console.log("result: " + result);
        });
	}
})