({
    doInit : function(component, event, helper) {
        helper.columnsandquickactionsdefinitions(component);
        helper.getOpportunityList(component);
    },
    
    updateSelectedText : function(component, event, helper){
        var selectedRows = event.getParam('selectedRows');
        console.log('selectedRows: ' , JSON.stringify(selectedRows));
    },
    
    handleRowAction : function(component, event, helper){
        var action = event.getParam('action');
        var row = event.getParam('row');
        console.log('action: ' + action);
        console.log('row: ' + row);
        
        console.log('action1 Name: ' + action.name);
        console.log('row.id: ' + row.Id);
        
        switch(action.name){
            case 'show_details':
                console.log('In Show Details..!' + JSON.stringify(row));
                break;
            case 'delete':
                console.log('In Delete Case..!');
                helper.deleteOpportunity(component, row);
            default:
                alert('If modified/deleted any records, Please click on Save All button at the end of all operations');
        }
    },
    
    doSave : function(component, event, helper){
        helper.doSaveHelper(component, event);
    },
})