({
    createmap : function(component, event, helper) {
        //var map1 = component.get('v.map1');
        var map =[];
        for(var i=1; i<=5; i++){
            map.push({
                key:i,
                value: 'test ' + i
            });
        }
        component.set('v.map1', map);
        
        var list=[];
        for(var i=0; i<=4; i++){
            list[i] =   'test '+ i; 
        }
        
        component.set('v.list1', list);
    }
})