({
	myAction1 : function(c, e, h) {
		//Get the instance of the event.
        var myEvent = $A.get("e.c:AppContainerEvent");
        
        //set the parameter of the event.
        var a = c.find('Text1').get('v.value');
        myEvent.setParams({eText1:a});
        
        //Fire the event.
        myEvent.fire();
        console.log('end');
	}
})