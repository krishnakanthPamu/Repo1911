({
    showColors : function(component, event, helper) {
        var cols = component.get('v.colors');
        var cols = {a:'RED', b:'GREEN'};
        console.log('cols1: ' , cols.a);
        cols['c'] = 'WHITE';
        
        for(var key in cols){
            console.log(cols[key]);
        }
    }
})