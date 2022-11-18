({
    handleCompEvent: function (component, event, helper) {
        debugger;
        var searchString = event.getParam('searchString');
        //if(searchString){
          //  console.log('search string: '+searchString);    
            
            
            var action = component.get('c.getBeerList');
            action.setParams({
                searchText : searchString
            });
            
            action.setCallback(this, function(response){
                var state = response.getState();
                if(state==="SUCCESS"){
                    var returnValue = response.getReturnValue();
                    component.set('v.beerList' , returnValue);
                    var beers = component.get('v.beerList');
                }
            });
            
            $A.enqueueAction(action);
        //}
    }
});