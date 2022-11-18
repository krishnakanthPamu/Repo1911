({
	mapFill : function(component, event, helper) {
        var map1 = {};
		var list1 = [];
        map1={a:100, b:200};
        
        for(var i=1; i<6; i++){
            console.log(i);
            list1.push({
                key:i, value:100*i 
            });
        }

        component.set('v.mapVar', map1);
        component.set('v.listVar', list1);
	}
})