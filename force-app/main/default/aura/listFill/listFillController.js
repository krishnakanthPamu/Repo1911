({
	showNumbers : function(component, event, helper) {
		var nums = [];
        for(var i=0; i<10; i++){
            nums.push({
                value:i
             
            });
               console.log(i + '\n');
        }
        component.set('v.numbers', nums);
	}
})