({
    handleKeyUp: function (cmp, evt, helper) {
        var isEnterKey = evt.keyCode === 13;
        var queryTerm = cmp.find('enter-search').get('v.value');
        if (isEnterKey) {
            cmp.set('v.issearching', true);
            setTimeout(function() {
                alert('Searched for "' + queryTerm + '"!');
                cmp.set('v.issearching', false);
            }, 2000);
        }
    },
    
    doSearch: function (component, event, helper) {
        var searchEvent = component.getEvent('searchComponent');
        var searchKey = component.find("enter-search").get("v.value");
        searchEvent.setParams({
            searchString : searchKey
        });
        searchEvent.fire();
    }
})